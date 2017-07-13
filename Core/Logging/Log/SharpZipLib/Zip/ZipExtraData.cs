// ZipExtraData.cs
//
// Copyright 2004 John Reilly
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//
// Linking this library statically or dynamically with other modules is
// making a combined work based on this library.  Thus, the terms and
// conditions of the GNU General Public License cover the whole
// combination.
// 
// As a special exception, the copyright holders of this library give you
// permission to link this library with independent modules to produce an
// executable, regardless of the license terms of these independent
// modules, and to copy and distribute the resulting executable under
// terms of your choice, provided that you also meet, for each linked
// independent module, the terms and conditions of the license of that
// module.  An independent module is a module which is not derived from
// or based on this library.  If you modify this library, you may extend
// this exception to your version of the library, but you are not
// obligated to do so.  If you do not wish to do so, delete this
// exception statement from your version.

using System;
using System.IO;

namespace Core.Logging.Log.SharpZipLib.Zip
{
    /// <summary>
    /// A class to handle the extra data field for Zip entries
    /// </summary>
    /// <remarks>
    /// Extra data contains 0 or more values each prefixed by a header tag and length.
    /// They contain zero or more bytes of actual data.
    /// The data is held internally using a copy on write strategy.  This is more efficient but
    /// means that for extra data created by passing in data can have the values modified by the caller
    /// in some circumstances.
    /// </remarks>
    public sealed class ZipExtraData : IDisposable
    {
        #region Constructors

        /// <summary>
        /// Initialise a default instance.
        /// </summary>
        public ZipExtraData()
        {
            this.Clear();
        }

        /// <summary>
        /// Initialise with known extra data.
        /// </summary>
        /// <param name="data">The extra data.</param>
        public ZipExtraData(byte[] data)
        {
            this.data_ = data ?? new byte[0];
        }

        #endregion

        /// <summary>
        /// Gets the current extra data length.
        /// </summary>
        public int Length
        {
            get { return this.data_.Length; }
        }

        /// <summary>
        /// Get the length of the last value found by <see cref="Find"/>
        /// </summary>
        /// <remarks>This is only value if <see cref="Find"/> has previsouly returned true.</remarks>
        public int ValueLength
        {
            get { return this.readValueLength_; }
        }

        /// <summary>
        /// Get the index for the current read value.
        /// </summary>
        /// <remarks>This is only valid if <see cref="Find"/> has previously returned true.
        /// Initially it will be the index of the first byte of actual data.  The value is updated after calls to
        /// <see cref="ReadInt"/>, <see cref="ReadShort"/> and <see cref="ReadLong"/>. </remarks>
        public int CurrentReadIndex
        {
            get { return this.index_; }
        }

        /// <summary>
        /// Get the number of bytes remaining to be read for the current value;
        /// </summary>
        public int UnreadCount
        {
            get
            {
                if ((this.readValueStart_ > this.data_.Length) ||
                    (this.readValueStart_ < 4))
                {
                    throw new ZipException("Find must be called before calling a Read method");
                }

                return this.readValueStart_ + this.readValueLength_ - this.index_;
            }
        }

        #region IDisposable Members

        /// <summary>
        /// Dispose of this instance.
        /// </summary>
        public void Dispose()
        {
            if (this.newEntry_ != null)
            {
                this.newEntry_.Close();
            }
        }

        #endregion

        #region Instance Fields

        private byte[] data_;
        private int index_;

        private MemoryStream newEntry_;
        private int readValueLength_;
        private int readValueStart_;

        #endregion

        /// <summary>
        /// Get the raw extra data value
        /// </summary>
        /// <returns>Returns the raw byte[] extra data this instance represents.</returns>
        public byte[] GetEntryData()
        {
            // Delaying length testing till here allows manipulation internally before things
            // are determined to be awry.  This can potentially make finding problems a
            // little more tricky however.
            if (this.Length > ushort.MaxValue)
            {
                throw new ZipException("Data exceeds maximum length");
            }

            return (byte[]) this.data_.Clone();
        }

        /// <summary>
        /// Clear the stored data.
        /// </summary>
        public void Clear()
        {
            if ((this.data_ == null) || (this.data_.Length != 0))
            {
                this.data_ = new byte[0];
            }
        }

        /// <summary>
        /// Get a read-only <see cref="Stream"/> for the associated tag.
        /// </summary>
        /// <param name="tag">The tag to locate data for.</param>
        /// <returns>Returns a <see cref="Stream"/> containing tag data or null if no tag was found.</returns>
        public Stream GetStreamForTag(int tag)
        {
            Stream result = null;
            if (this.Find(tag))
            {
                result = new MemoryStream(this.data_, this.index_, this.readValueLength_, false);
            }
            return result;
        }

        /// <summary>
        /// Find an extra data value
        /// </summary>
        /// <param name="headerID">The identifier for the value to find.</param>
        /// <returns>Returns true if the value was found; false otherwise.</returns>
        public bool Find(int headerID)
        {
            this.readValueStart_ = this.data_.Length;
            this.readValueLength_ = 0;
            this.index_ = 0;

            int localLength = this.readValueStart_;
            int localTag = headerID - 1;

            // Trailing bytes that cant make up an entry (as there arent enough
            // bytes for a tag and length) are ignored!
            while ((localTag != headerID) && (this.index_ < this.data_.Length - 3))
            {
                localTag = this.ReadShortInternal();
                localLength = this.ReadShortInternal();
                if (localTag != headerID)
                {
                    this.index_ += localLength;
                }
            }

            bool result = (localTag == headerID) && (this.index_ + localLength <= this.data_.Length);

            if (result)
            {
                this.readValueStart_ = this.index_;
                this.readValueLength_ = localLength;
            }

            return result;
        }

        /// <summary>
        /// Add a new entry to extra data
        /// </summary>
        /// <param name="headerID">The ID for this entry.</param>
        /// <param name="fieldData">The data to add.</param>
        /// <remarks>If the ID already exists its contents are replaced.</remarks>
        public void AddEntry(int headerID, byte[] fieldData)
        {
            if ((headerID > ushort.MaxValue) || (headerID < 0))
            {
                throw new ArgumentOutOfRangeException("headerID");
            }

            int addLength = (fieldData == null) ? 0 : fieldData.Length;

            if (addLength > ushort.MaxValue)
            {
#if NETCF_1_0
				throw new ArgumentOutOfRangeException("fieldData");
#else
                throw new ArgumentOutOfRangeException("fieldData", "exceeds maximum length");
#endif
            }

            // Test for new length before adjusting data.
            int newLength = this.data_.Length + addLength + 4;

            if (this.Find(headerID))
            {
                newLength -= (this.ValueLength + 4);
            }

            if (newLength > ushort.MaxValue)
            {
                throw new ZipException("Data exceeds maximum length");
            }

            this.Delete(headerID);

            byte[] newData = new byte[newLength];
            this.data_.CopyTo(newData, 0);
            int index = this.data_.Length;
            this.data_ = newData;
            this.SetShort(ref index, headerID);
            this.SetShort(ref index, addLength);
            if (fieldData != null)
            {
                fieldData.CopyTo(newData, index);
            }
        }

        private void SetShort(ref int index, int source)
        {
            this.data_[index] = (byte) source;
            this.data_[index + 1] = (byte) (source >> 8);
            index += 2;
        }

        /// <summary>
        /// Start adding a new entry.
        /// </summary>
        /// <remarks>Add data using <see cref="AddData(byte[])"/>, <see cref="AddLeShort"/>, <see cref="AddLeInt"/>, or <see cref="AddLeLong"/>.
        /// The new entry is completed and actually added by calling <see cref="AddNewEntry"/></remarks>
        /// <seealso cref="AddEntry"/>
        public void StartNewEntry()
        {
            this.newEntry_ = new MemoryStream();
        }

        /// <summary>
        /// Add entry data added since <see cref="StartNewEntry"/> using the ID passed.
        /// </summary>
        /// <param name="headerID">The identifier to use for this entry.</param>
        public void AddNewEntry(int headerID)
        {
            byte[] newData = this.newEntry_.ToArray();
            this.newEntry_ = null;
            this.AddEntry(headerID, newData);
        }

        /// <summary>
        /// Add a byte of data to the pending new entry.
        /// </summary>
        /// <param name="data">The byte to add.</param>
        /// <seealso cref="StartNewEntry"/>
        public void AddData(byte data)
        {
            this.newEntry_.WriteByte(data);
        }

        /// <summary>
        /// Add data to a pending new entry.
        /// </summary>
        /// <param name="data">The data to add.</param>
        /// <seealso cref="StartNewEntry"/>
        public void AddData(byte[] data)
        {
            if (data == null)
            {
                throw new ArgumentNullException("data");
            }

            this.newEntry_.Write(data, 0, data.Length);
        }

        /// <summary>
        /// Add a short value in little endian order to the pending new entry.
        /// </summary>
        /// <param name="toAdd">The data to add.</param>
        /// <seealso cref="StartNewEntry"/>
        public void AddLeShort(int toAdd)
        {
            unchecked
            {
                this.newEntry_.WriteByte((byte) toAdd);
                this.newEntry_.WriteByte((byte) (toAdd >> 8));
            }
        }

        /// <summary>
        /// Add an integer value in little endian order to the pending new entry.
        /// </summary>
        /// <param name="toAdd">The data to add.</param>
        /// <seealso cref="StartNewEntry"/>
        public void AddLeInt(int toAdd)
        {
            unchecked
            {
                this.AddLeShort((short) toAdd);
                this.AddLeShort((short) (toAdd >> 16));
            }
        }

        /// <summary>
        /// Add a long value in little endian order to the pending new entry.
        /// </summary>
        /// <param name="toAdd">The data to add.</param>
        /// <seealso cref="StartNewEntry"/>
        public void AddLeLong(long toAdd)
        {
            unchecked
            {
                this.AddLeInt((int) (toAdd & 0xffffffff));
                this.AddLeInt((int) (toAdd >> 32));
            }
        }

        /// <summary>
        /// Delete an extra data field.
        /// </summary>
        /// <param name="headerID">The identifier of the field to delete.</param>
        /// <returns>Returns true if the field was found and deleted.</returns>
        public bool Delete(int headerID)
        {
            bool result = false;

            if (this.Find(headerID))
            {
                result = true;
                int trueStart = this.readValueStart_ - 4;

                byte[] newData = new byte[this.data_.Length - (this.ValueLength + 4)];
                Array.Copy(this.data_, 0, newData, 0, trueStart);

                int trueEnd = trueStart + this.ValueLength + 4;
                Array.Copy(this.data_, trueEnd, newData, trueStart, this.data_.Length - trueEnd);
                this.data_ = newData;
            }
            return result;
        }

        #region Reading

        /// <summary>
        /// Read a long in little endian form from the last <see cref="Find">found</see> data value
        /// </summary>
        /// <returns>Returns the long value read.</returns>
        public long ReadLong()
        {
            this.ReadCheck(8);
            return (this.ReadInt() & 0xffffffff) | (((long) this.ReadInt()) << 32);
        }

        /// <summary>
        /// Read an integer in little endian form from the last <see cref="Find">found</see> data value.
        /// </summary>
        /// <returns>Returns the integer read.</returns>
        public int ReadInt()
        {
            this.ReadCheck(4);

            int result = this.data_[this.index_] + (this.data_[this.index_ + 1] << 8) +
                         (this.data_[this.index_ + 2] << 16) + (this.data_[this.index_ + 3] << 24);
            this.index_ += 4;
            return result;
        }

        /// <summary>
        /// Read a short value in little endian form from the last <see cref="Find">found</see> data value.
        /// </summary>
        /// <returns>Returns the short value read.</returns>
        public int ReadShort()
        {
            this.ReadCheck(2);
            int result = this.data_[this.index_] + (this.data_[this.index_ + 1] << 8);
            this.index_ += 2;
            return result;
        }

        /// <summary>
        /// Read a byte from an extra data
        /// </summary>
        /// <returns>The byte value read or -1 if the end of data has been reached.</returns>
        public int ReadByte()
        {
            int result = -1;
            if ((this.index_ < this.data_.Length) && (this.readValueStart_ + this.readValueLength_ > this.index_))
            {
                result = this.data_[this.index_];
                this.index_ += 1;
            }
            return result;
        }

        /// <summary>
        /// Skip data during reading.
        /// </summary>
        /// <param name="amount">The number of bytes to skip.</param>
        public void Skip(int amount)
        {
            this.ReadCheck(amount);
            this.index_ += amount;
        }

        private void ReadCheck(int length)
        {
            if ((this.readValueStart_ > this.data_.Length) ||
                (this.readValueStart_ < 4))
            {
                throw new ZipException("Find must be called before calling a Read method");
            }

            if (this.index_ > this.readValueStart_ + this.readValueLength_ - length)
            {
                throw new ZipException("End of extra data");
            }
        }

        /// <summary>
        /// Internal form of <see cref="ReadShort"/> that reads data at any location.
        /// </summary>
        /// <returns>Returns the short value read.</returns>
        private int ReadShortInternal()
        {
            if (this.index_ > this.data_.Length - 2)
            {
                throw new ZipException("End of extra data");
            }

            int result = this.data_[this.index_] + (this.data_[this.index_ + 1] << 8);
            this.index_ += 2;
            return result;
        }

        #endregion
    }
}