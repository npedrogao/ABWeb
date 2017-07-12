// TarBuffer.cs
// Copyright (C) 2001 Mike Krueger
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

namespace CommonLib.Log.SharpZipLib.Tar
{
    /// <summary>
    /// The TarBuffer class implements the tar archive concept
    /// of a buffered input stream. This concept goes back to the
    /// days of blocked tape drives and special io devices. In the
    /// C# universe, the only real function that this class
    /// performs is to ensure that files have the correct "record"
    /// size, or other tars will complain.
    /// <p>
    /// You should never have a need to access this class directly.
    /// TarBuffers are created by Tar IO Streams.
    /// </p>
    /// </summary>
    public class TarBuffer
    {
        #region Constants

        /// <summary>
        /// The size of a block in a tar archive in bytes.
        /// </summary>
        /// <remarks>This is 512 bytes.</remarks>
        public const int BlockSize = 512;

        /// <summary>
        /// The number of blocks in a default record.
        /// </summary>
        /// <remarks>
        /// The default value is 20 blocks per record.
        /// </remarks>
        public const int DefaultBlockFactor = 20;

        /// <summary>
        /// The size in bytes of a default record.
        /// </summary>
        /// <remarks>
        /// The default size is 10KB.
        /// </remarks>
        public const int DefaultRecordSize = BlockSize*DefaultBlockFactor;

        #endregion

/* A quote from GNU tar man file on blocking and records
   A `tar' archive file contains a series of blocks.  Each block
contains `BLOCKSIZE' bytes.  Although this format may be thought of as
being on magnetic tape, other media are often used.

   Each file archived is represented by a header block which describes
the file, followed by zero or more blocks which give the contents of
the file.  At the end of the archive file there may be a block filled
with binary zeros as an end-of-file marker.  A reasonable system should
write a block of zeros at the end, but must not assume that such a
block exists when reading an archive.

   The blocks may be "blocked" for physical I/O operations.  Each
record of N blocks is written with a single 'write ()'
operation.  On magnetic tapes, the result of such a write is a single
record.  When writing an archive, the last record of blocks should be
written at the full size, with blocks after the zero block containing
all zeros.  When reading an archive, a reasonable system should
properly handle an archive whose last record is shorter than the rest,
or which contains garbage records after a zero block.
*/

        /// <summary>
        /// Construct a default TarBuffer
        /// </summary>
        protected TarBuffer()
        {
        }

        /// <summary>
        /// Get the record size for this buffer
        /// </summary>
        public int RecordSize
        {
            get { return this.recordSize; }
        }

        /// <summary>
        /// Get the Blocking factor for the buffer
        /// </summary>
        public int BlockFactor
        {
            get { return this.blockFactor; }
        }

        /// <summary>
        /// Get the current block number, within the current record, zero based.
        /// </summary>
        public int CurrentBlock
        {
            get { return this.currentBlockIndex; }
        }

        /// <summary>
        /// Get the current record number.
        /// </summary>
        /// <returns>
        /// The current zero based record number.
        /// </returns>
        public int CurrentRecord
        {
            get { return this.currentRecordIndex; }
        }

        /// <summary>
        /// Get the TAR Buffer's record size.
        /// </summary>
        [Obsolete("Use RecordSize property instead")]
        public int GetRecordSize()
        {
            return this.recordSize;
        }

        /// <summary>
        /// Get the TAR Buffer's block factor
        /// </summary>
        [Obsolete("Use BlockFactor property instead")]
        public int GetBlockFactor()
        {
            return this.blockFactor;
        }

        /// <summary>
        /// Create TarBuffer for reading with default BlockFactor
        /// </summary>
        /// <param name="inputStream">Stream to buffer</param>
        /// <returns>TarBuffer</returns>
        public static TarBuffer CreateInputTarBuffer(Stream inputStream)
        {
            if (inputStream == null)
            {
                throw new ArgumentNullException("inputStream");
            }

            return CreateInputTarBuffer(inputStream, DefaultBlockFactor);
        }

        /// <summary>
        /// Construct TarBuffer for reading inputStream setting BlockFactor
        /// </summary>
        /// <param name="inputStream">Stream to buffer</param>
        /// <param name="blockFactor">Blocking factor to apply</param>
        /// <returns>TarBuffer</returns>
        public static TarBuffer CreateInputTarBuffer(Stream inputStream, int blockFactor)
        {
            if (inputStream == null)
            {
                throw new ArgumentNullException("inputStream");
            }

            if (blockFactor <= 0)
            {
#if NETCF_1_0
				throw new ArgumentOutOfRangeException("blockFactor");
#else
                throw new ArgumentOutOfRangeException("blockFactor", "Factor cannot be negative");
#endif
            }

            TarBuffer tarBuffer = new TarBuffer {inputStream = inputStream, outputStream = null};
            tarBuffer.Initialize(blockFactor);

            return tarBuffer;
        }

        /// <summary>
        /// Construct TarBuffer for writing with default BlockFactor
        /// </summary>
        /// <param name="outputStream">output stream for buffer</param>
        /// <returns>TarBuffer</returns>
        public static TarBuffer CreateOutputTarBuffer(Stream outputStream)
        {
            if (outputStream == null)
            {
                throw new ArgumentNullException("outputStream");
            }

            return CreateOutputTarBuffer(outputStream, DefaultBlockFactor);
        }

        /// <summary>
        /// Construct TarBuffer for writing Tar output to streams.
        /// </summary>
        /// <param name="outputStream">Output stream to write to.</param>
        /// <param name="blockFactor">Blocking factor to apply</param>
        /// <returns>TarBuffer</returns>
        public static TarBuffer CreateOutputTarBuffer(Stream outputStream, int blockFactor)
        {
            if (outputStream == null)
            {
                throw new ArgumentNullException("outputStream");
            }

            if (blockFactor <= 0)
            {
#if NETCF_1_0
				throw new ArgumentOutOfRangeException("blockFactor");
#else
                throw new ArgumentOutOfRangeException("blockFactor", "Factor cannot be negative");
#endif
            }

            TarBuffer tarBuffer = new TarBuffer {inputStream = null, outputStream = outputStream};
            tarBuffer.Initialize(blockFactor);

            return tarBuffer;
        }

        /// <summary>
        /// Initialization common to all constructors.
        /// </summary>
        private void Initialize(int inBlockFactor)
        {
            this.blockFactor = inBlockFactor;
            this.recordSize = inBlockFactor*BlockSize;
            this.recordBuffer = new byte[this.RecordSize];

            if (this.inputStream != null)
            {
                this.currentRecordIndex = -1;
                this.currentBlockIndex = this.BlockFactor;
            }
            else
            {
                this.currentRecordIndex = 0;
                this.currentBlockIndex = 0;
            }
        }

        // TODO: IsEOFBlock could/should be static but this is a breaking change.

        /// <summary>
        /// Determine if an archive block indicates End of Archive. End of
        /// archive is indicated by a block that consists entirely of null bytes.
        /// All remaining blocks for the record should also be null's
        /// However some older tars only do a couple of null blocks (Old GNU tar for one)
        /// and also partial records
        /// </summary>
        /// <param name = "block">The data block to check.</param>
        public static bool IsEOFBlock(byte[] block)
        {
            if (block == null)
            {
                throw new ArgumentNullException("block");
            }

            if (block.Length != BlockSize)
            {
                throw new ArgumentException("block length is invalid");
            }

            for (int i = 0; i < BlockSize; ++i)
            {
                if (block[i] != 0)
                {
                    return false;
                }
            }

            return true;
        }

        /// <summary>
        /// Skip over a block on the input stream.
        /// </summary>
        public void SkipBlock()
        {
            if (this.inputStream == null)
            {
                throw new TarException("no input stream defined");
            }

            if (this.currentBlockIndex >= this.BlockFactor)
            {
                if (!this.ReadRecord())
                {
                    throw new TarException("Failed to read a record");
                }
            }

            this.currentBlockIndex++;
        }

        /// <summary>
        /// Read a block from the input stream.
        /// </summary>
        /// <returns>
        /// The block of data read.
        /// </returns>
        public byte[] ReadBlock()
        {
            if (this.inputStream == null)
            {
                throw new TarException("TarBuffer.ReadBlock - no input stream defined");
            }

            if (this.currentBlockIndex >= this.BlockFactor)
            {
                if (!this.ReadRecord())
                {
                    throw new TarException("Failed to read a record");
                }
            }

            byte[] result = new byte[BlockSize];

            Array.Copy(this.recordBuffer, (this.currentBlockIndex*BlockSize), result, 0, BlockSize);
            this.currentBlockIndex++;
            return result;
        }

        /// <summary>
        /// Read a record from data stream.
        /// </summary>
        /// <returns>
        /// false if End-Of-File, else true.
        /// </returns>
        private bool ReadRecord()
        {
            if (this.inputStream == null)
            {
                throw new TarException("no input stream stream defined");
            }

            this.currentBlockIndex = 0;

            int offset = 0;
            int bytesNeeded = this.RecordSize;

            while (bytesNeeded > 0)
            {
                long numBytes = this.inputStream.Read(this.recordBuffer, offset, bytesNeeded);

                //
                // NOTE
                // We have found EOF, and the record is not full!
                //
                // This is a broken archive. It does not follow the standard
                // blocking algorithm. However, because we are generous, and
                // it requires little effort, we will simply ignore the error
                // and continue as if the entire record were read. This does
                // not appear to break anything upstream. We used to return
                // false in this case.
                //
                // Thanks to 'Yohann.Roussel@alcatel.fr' for this fix.
                //
                if (numBytes <= 0)
                {
                    break;
                }

                offset += (int) numBytes;
                bytesNeeded -= (int) numBytes;
            }

            this.currentRecordIndex++;
            return true;
        }

        /// <summary>
        /// Get the current block number, within the current record, zero based.
        /// </summary>
        /// <returns>
        /// The current zero based block number.
        /// </returns>
        /// <remarks>
        /// The absolute block number = (<see cref="GetCurrentRecordNum">record number</see> * <see cref="BlockFactor">block factor</see>) + <see cref="GetCurrentBlockNum">block number</see>.
        /// </remarks>
        [Obsolete("Use CurrentBlock property instead")]
        public int GetCurrentBlockNum()
        {
            return this.currentBlockIndex;
        }

        /// <summary>
        /// Get the current record number.
        /// </summary>
        /// <returns>
        /// The current zero based record number.
        /// </returns>
        [Obsolete("Use CurrentRecord property instead")]
        public int GetCurrentRecordNum()
        {
            return this.currentRecordIndex;
        }

        /// <summary>
        /// Write a block of data to the archive.
        /// </summary>
        /// <param name="block">
        /// The data to write to the archive.
        /// </param>
        public void WriteBlock(byte[] block)
        {
            if (block == null)
            {
                throw new ArgumentNullException("block");
            }

            if (this.outputStream == null)
            {
                throw new TarException("TarBuffer.WriteBlock - no output stream defined");
            }

            if (block.Length != BlockSize)
            {
                string errorText =
                    string.Format(
                        "TarBuffer.WriteBlock - block to write has length '{0}' which is not the block size of '{1}'",
                        block.Length, BlockSize);
                throw new TarException(errorText);
            }

            if (this.currentBlockIndex >= this.BlockFactor)
            {
                this.WriteRecord();
            }

            Array.Copy(block, 0, this.recordBuffer, (this.currentBlockIndex*BlockSize), BlockSize);
            this.currentBlockIndex++;
        }

        /// <summary>
        /// Write an archive record to the archive, where the record may be
        /// inside of a larger array buffer. The buffer must be "offset plus
        /// record size" long.
        /// </summary>
        /// <param name="buffer">
        /// The buffer containing the record data to write.
        /// </param>
        /// <param name="offset">
        /// The offset of the record data within buffer.
        /// </param>
        public void WriteBlock(byte[] buffer, int offset)
        {
            if (buffer == null)
            {
                throw new ArgumentNullException("buffer");
            }

            if (this.outputStream == null)
            {
                throw new TarException("TarBuffer.WriteBlock - no output stream stream defined");
            }

            if ((offset < 0) || (offset >= buffer.Length))
            {
                throw new ArgumentOutOfRangeException("offset");
            }

            if ((offset + BlockSize) > buffer.Length)
            {
                string errorText =
                    string.Format(
                        "TarBuffer.WriteBlock - record has length '{0}' with offset '{1}' which is less than the record size of '{2}'",
                        buffer.Length, offset, this.recordSize);
                throw new TarException(errorText);
            }

            if (this.currentBlockIndex >= this.BlockFactor)
            {
                this.WriteRecord();
            }

            Array.Copy(buffer, offset, this.recordBuffer, (this.currentBlockIndex*BlockSize), BlockSize);

            this.currentBlockIndex++;
        }

        /// <summary>
        /// Write a TarBuffer record to the archive.
        /// </summary>
        private void WriteRecord()
        {
            if (this.outputStream == null)
            {
                throw new TarException("TarBuffer.WriteRecord no output stream defined");
            }

            this.outputStream.Write(this.recordBuffer, 0, this.RecordSize);
            this.outputStream.Flush();

            this.currentBlockIndex = 0;
            this.currentRecordIndex++;
        }

        /// <summary>
        /// Flush the current record if it has any data in it.
        /// </summary>
        private void Flush()
        {
            if (this.outputStream == null)
            {
                throw new TarException("TarBuffer.Flush no output stream defined");
            }

            if (this.currentBlockIndex > 0)
            {
                int dataBytes = this.currentBlockIndex*BlockSize;
                Array.Clear(this.recordBuffer, dataBytes, this.RecordSize - dataBytes);
                this.WriteRecord();
            }

            this.outputStream.Flush();
        }

        /// <summary>
        /// Close the TarBuffer. If this is an output buffer, also flush the
        /// current block before closing.
        /// </summary>
        public void Close()
        {
            if (this.outputStream != null)
            {
                this.Flush();

                this.outputStream.Close();
                this.outputStream = null;
            }
            else if (this.inputStream != null)
            {
                this.inputStream.Close();
                this.inputStream = null;
            }
        }

        #region Instance Fields

        private int blockFactor = DefaultBlockFactor;
        private int currentBlockIndex;
        private int currentRecordIndex;
        private Stream inputStream;
        private Stream outputStream;

        private byte[] recordBuffer;

        private int recordSize = DefaultRecordSize;

        #endregion
    }
}

/* The original Java file had this header:
	*
	** Authored by Timothy Gerard Endres
	** <mailto:time@gjt.org>  <http://www.trustice.com>
	**
	** This work has been placed into the public domain.
	** You may use this work in any way and for any purpose you wish.
	**
	** THIS SOFTWARE IS PROVIDED AS-IS WITHOUT WARRANTY OF ANY KIND,
	** NOT EVEN THE IMPLIED WARRANTY OF MERCHANTABILITY. THE AUTHOR
	** OF THIS SOFTWARE, ASSUMES _NO_ RESPONSIBILITY FOR ANY
	** CONSEQUENCE RESULTING FROM THE USE, MODIFICATION, OR
	** REDISTRIBUTION OF THIS SOFTWARE.
	**
	*/