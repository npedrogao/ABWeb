// BZip2InputStream.cs
//
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
using CommonLib.Log.SharpZipLib.Checksums;

namespace CommonLib.Log.SharpZipLib.BZip2
{
    /// <summary>
    /// An input stream that decompresses files in the BZip2 format 
    /// </summary>
    public class BZip2InputStream : Stream
    {
        #region Constants

        private const int NO_RAND_PART_A_STATE = 5;
        private const int NO_RAND_PART_B_STATE = 6;
        private const int NO_RAND_PART_C_STATE = 7;
        private const int RAND_PART_A_STATE = 2;
        private const int RAND_PART_B_STATE = 3;
        private const int RAND_PART_C_STATE = 4;
        private const int START_BLOCK_STATE = 1;

        #endregion

        #region Constructors

        /// <summary>
        /// Construct instance for reading from stream
        /// </summary>
        /// <param name="stream">Data source</param>
        public BZip2InputStream(Stream stream)
        {
            // init arrays
            for (int i = 0; i < BZip2Constants.N_GROUPS; ++i)
            {
                this.limit[i] = new int[BZip2Constants.MAX_ALPHA_SIZE];
                this.baseArray[i] = new int[BZip2Constants.MAX_ALPHA_SIZE];
                this.perm[i] = new int[BZip2Constants.MAX_ALPHA_SIZE];
            }

            this.BsSetStream(stream);
            this.Initialize();
            this.InitBlock();
            this.SetupBlock();
        }

        #endregion

        /// <summary>
        /// Get/set flag indicating ownership of underlying stream.
        /// When the flag is true <see cref="Close"></see> will close the underlying stream also.
        /// </summary>
        public bool IsStreamOwner
        {
            get { return this.isStreamOwner; }
            set { this.isStreamOwner = value; }
        }

        #region Stream Overrides

        /// <summary>
        /// Gets a value indicating if the stream supports reading
        /// </summary>
        public override bool CanRead
        {
            get { return this.baseStream.CanRead; }
        }

        /// <summary>
        /// Gets a value indicating whether the current stream supports seeking.
        /// </summary>
        public override bool CanSeek
        {
            get { return this.baseStream.CanSeek; }
        }

        /// <summary>
        /// Gets a value indicating whether the current stream supports writing.
        /// This property always returns false
        /// </summary>
        public override bool CanWrite
        {
            get { return false; }
        }

        /// <summary>
        /// Gets the length in bytes of the stream.
        /// </summary>
        public override long Length
        {
            get { return this.baseStream.Length; }
        }

        /// <summary>
        /// Gets or sets the streams position.
        /// Setting the position is not supported and will throw a NotSupportException
        /// </summary>
        /// <exception cref="NotSupportedException">Any attempt to set the position</exception>
        public override long Position
        {
            get { return this.baseStream.Position; }
            set { throw new NotSupportedException("BZip2InputStream position cannot be set"); }
        }

        /// <summary>
        /// Flushes the stream.
        /// </summary>
        public override void Flush()
        {
            if (this.baseStream != null)
            {
                this.baseStream.Flush();
            }
        }

        /// <summary>
        /// Set the streams position.  This operation is not supported and will throw a NotSupportedException
        /// </summary>
        /// <exception cref="NotSupportedException">Any access</exception>
        public override long Seek(long offset, SeekOrigin origin)
        {
            throw new NotSupportedException("BZip2InputStream Seek not supported");
        }

        /// <summary>
        /// Sets the length of this stream to the given value.
        /// This operation is not supported and will throw a NotSupportedExceptionortedException
        /// </summary>
        /// <exception cref="NotSupportedException">Any access</exception>
        public override void SetLength(long value)
        {
            throw new NotSupportedException("BZip2InputStream SetLength not supported");
        }

        /// <summary>
        /// Writes a block of bytes to this stream using data from a buffer.
        /// This operation is not supported and will throw a NotSupportedException
        /// </summary>
        /// <exception cref="NotSupportedException">Any access</exception>
        public override void Write(byte[] buffer, int offset, int inCount)
        {
            throw new NotSupportedException("BZip2InputStream Write not supported");
        }

        /// <summary>
        /// Writes a byte to the current position in the file stream.
        /// This operation is not supported and will throw a NotSupportedException
        /// </summary>
        /// <param name="value">The value to write.</param>
        /// <exception cref="NotSupportedException">Any access</exception>
        public override void WriteByte(byte value)
        {
            throw new NotSupportedException("BZip2InputStream WriteByte not supported");
        }

        /// <summary>
        /// Read a sequence of bytes and advances the read position by one byte.
        /// </summary>
        /// <param name="buffer">Array of bytes to store values in</param>
        /// <param name="offset">Offset in array to begin storing data</param>
        /// <param name="inCount">The maximum number of bytes to read</param>
        /// <returns>The total number of bytes read into the buffer. This might be less
        /// than the number of bytes requested if that number of bytes are not 
        /// currently available or zero if the end of the stream is reached.
        /// </returns>
        public override int Read(byte[] buffer, int offset, int inCount)
        {
            if (buffer == null)
            {
                throw new ArgumentNullException("buffer");
            }

            for (int i = 0; i < inCount; ++i)
            {
                int rb = this.ReadByte();
                if (rb == -1)
                {
                    return i;
                }
                buffer[offset + i] = (byte) rb;
            }
            return inCount;
        }

        /// <summary>
        /// Closes the stream, releasing any associated resources.
        /// </summary>
        public override void Close()
        {
            if (this.IsStreamOwner && (this.baseStream != null))
            {
                this.baseStream.Close();
            }
        }

        /// <summary>
        /// Read a byte from stream advancing position
        /// </summary>
        /// <returns>byte read or -1 on end of stream</returns>
        public override int ReadByte()
        {
            if (this.streamEnd)
            {
                return -1; // ok
            }

            int retChar = this.currentChar;
            switch (this.currentState)
            {
                case RAND_PART_B_STATE:
                    this.SetupRandPartB();
                    break;
                case RAND_PART_C_STATE:
                    this.SetupRandPartC();
                    break;
                case NO_RAND_PART_B_STATE:
                    this.SetupNoRandPartB();
                    break;
                case NO_RAND_PART_C_STATE:
                    this.SetupNoRandPartC();
                    break;
                case START_BLOCK_STATE:
                case NO_RAND_PART_A_STATE:
                case RAND_PART_A_STATE:
                    break;
                default:
                    break;
            }
            return retChar;
        }

        #endregion

        private void MakeMaps()
        {
            this.nInUse = 0;
            for (int i = 0; i < 256; ++i)
            {
                if (this.inUse[i])
                {
                    this.seqToUnseq[this.nInUse] = (byte) i;
                    this.unseqToSeq[i] = (byte) this.nInUse;
                    this.nInUse++;
                }
            }
        }

        private void Initialize()
        {
            char magic1 = this.BsGetUChar();
            char magic2 = this.BsGetUChar();

            char magic3 = this.BsGetUChar();
            char magic4 = this.BsGetUChar();

            if (magic1 != 'B' || magic2 != 'Z' || magic3 != 'h' || magic4 < '1' || magic4 > '9')
            {
                this.streamEnd = true;
                return;
            }

            this.SetDecompressStructureSizes(magic4 - '0');
            this.computedCombinedCRC = 0;
        }

        private void InitBlock()
        {
            char magic1 = this.BsGetUChar();
            char magic2 = this.BsGetUChar();
            char magic3 = this.BsGetUChar();
            char magic4 = this.BsGetUChar();
            char magic5 = this.BsGetUChar();
            char magic6 = this.BsGetUChar();

            if (magic1 == 0x17 && magic2 == 0x72 && magic3 == 0x45 && magic4 == 0x38 && magic5 == 0x50 && magic6 == 0x90)
            {
                this.Complete();
                return;
            }

            if (magic1 != 0x31 || magic2 != 0x41 || magic3 != 0x59 || magic4 != 0x26 || magic5 != 0x53 || magic6 != 0x59)
            {
                BadBlockHeader();
                this.streamEnd = true;
                return;
            }

            this.storedBlockCRC = this.BsGetInt32();

            this.blockRandomised = (this.BsR(1) == 1);

            this.GetAndMoveToFrontDecode();

            this.mCrc.Reset();
            this.currentState = START_BLOCK_STATE;
        }

        private void EndBlock()
        {
            this.computedBlockCRC = (int) this.mCrc.Value;

            // -- A bad CRC is considered a fatal error. --
            if (this.storedBlockCRC != this.computedBlockCRC)
            {
                CrcError();
            }

            // 1528150659
            this.computedCombinedCRC = ((this.computedCombinedCRC << 1) & 0xFFFFFFFF) | (this.computedCombinedCRC >> 31);
            this.computedCombinedCRC = this.computedCombinedCRC ^ (uint) this.computedBlockCRC;
        }

        private void Complete()
        {
            this.storedCombinedCRC = this.BsGetInt32();
            if (this.storedCombinedCRC != (int) this.computedCombinedCRC)
            {
                CrcError();
            }

            this.streamEnd = true;
        }

        private void BsSetStream(Stream stream)
        {
            this.baseStream = stream;
            this.bsLive = 0;
            this.bsBuff = 0;
        }

        private void FillBuffer()
        {
            int thech = 0;

            try
            {
                thech = this.baseStream.ReadByte();
            }
            catch (Exception)
            {
                CompressedStreamEOF();
            }

            if (thech == -1)
            {
                CompressedStreamEOF();
            }

            this.bsBuff = (this.bsBuff << 8) | (thech & 0xFF);
            this.bsLive += 8;
        }

        private int BsR(int n)
        {
            while (this.bsLive < n)
            {
                this.FillBuffer();
            }

            int v = (this.bsBuff >> (this.bsLive - n)) & ((1 << n) - 1);
            this.bsLive -= n;
            return v;
        }

        private char BsGetUChar()
        {
            return (char) this.BsR(8);
        }

        private int BsGetint()
        {
            int u = this.BsR(8);
            u = (u << 8) | this.BsR(8);
            u = (u << 8) | this.BsR(8);
            u = (u << 8) | this.BsR(8);
            return u;
        }

        private int BsGetIntVS(int numBits)
        {
            return this.BsR(numBits);
        }

        private int BsGetInt32()
        {
            return this.BsGetint();
        }

        private void RecvDecodingTables()
        {
            char[][] len = new char[BZip2Constants.N_GROUPS][];
            for (int i = 0; i < BZip2Constants.N_GROUPS; ++i)
            {
                len[i] = new char[BZip2Constants.MAX_ALPHA_SIZE];
            }

            bool[] inUse16 = new bool[16];

            //--- Receive the mapping table ---
            for (int i = 0; i < 16; i++)
            {
                inUse16[i] = (this.BsR(1) == 1);
            }

            for (int i = 0; i < 16; i++)
            {
                if (inUse16[i])
                {
                    for (int j = 0; j < 16; j++)
                    {
                        this.inUse[i*16 + j] = (this.BsR(1) == 1);
                    }
                }
                else
                {
                    for (int j = 0; j < 16; j++)
                    {
                        this.inUse[i*16 + j] = false;
                    }
                }
            }

            this.MakeMaps();
            int alphaSize = this.nInUse + 2;

            //--- Now the selectors ---
            int nGroups = this.BsR(3);
            int nSelectors = this.BsR(15);

            for (int i = 0; i < nSelectors; i++)
            {
                int j = 0;
                while (this.BsR(1) == 1)
                {
                    j++;
                }
                this.selectorMtf[i] = (byte) j;
            }

            //--- Undo the MTF values for the selectors. ---
            byte[] pos = new byte[BZip2Constants.N_GROUPS];
            for (int v = 0; v < nGroups; v++)
            {
                pos[v] = (byte) v;
            }

            for (int i = 0; i < nSelectors; i++)
            {
                int v = this.selectorMtf[i];
                byte tmp = pos[v];
                while (v > 0)
                {
                    pos[v] = pos[v - 1];
                    v--;
                }
                pos[0] = tmp;
                this.selector[i] = tmp;
            }

            //--- Now the coding tables ---
            for (int t = 0; t < nGroups; t++)
            {
                int curr = this.BsR(5);
                for (int i = 0; i < alphaSize; i++)
                {
                    while (this.BsR(1) == 1)
                    {
                        if (this.BsR(1) == 0)
                        {
                            curr++;
                        }
                        else
                        {
                            curr--;
                        }
                    }
                    len[t][i] = (char) curr;
                }
            }

            //--- Create the Huffman decoding tables ---
            for (int t = 0; t < nGroups; t++)
            {
                int minLen = 32;
                int maxLen = 0;
                for (int i = 0; i < alphaSize; i++)
                {
                    maxLen = Math.Max(maxLen, len[t][i]);
                    minLen = Math.Min(minLen, len[t][i]);
                }
                HbCreateDecodeTables(this.limit[t], this.baseArray[t], this.perm[t], len[t], minLen, maxLen, alphaSize);
                this.minLens[t] = minLen;
            }
        }

        private void GetAndMoveToFrontDecode()
        {
            byte[] yy = new byte[256];

            int limitLast = BZip2Constants.baseBlockSize*this.blockSize100k;
            this.origPtr = this.BsGetIntVS(24);

            this.RecvDecodingTables();
            int EOB = this.nInUse + 1;
            int groupNo = -1;
            int groupPos = 0;

            /*--
			Setting up the unzftab entries here is not strictly
			necessary, but it does save having to do it later
			in a separate pass, and so saves a block's worth of
			cache misses.
			--*/
            for (int i = 0; i <= 255; i++)
            {
                this.unzftab[i] = 0;
            }

            for (int i = 0; i <= 255; i++)
            {
                yy[i] = (byte) i;
            }

            this.last = -1;

            if (groupPos == 0)
            {
                groupNo++;
                groupPos = BZip2Constants.G_SIZE;
            }

            groupPos--;
            int zt = this.selector[groupNo];
            int zn = this.minLens[zt];
            int zvec = this.BsR(zn);
            int zj;

            while (zvec > this.limit[zt][zn])
            {
                if (zn > 20)
                {
                    // the longest code
                    throw new BZip2Exception("Bzip data error");
                }
                zn++;
                while (this.bsLive < 1)
                {
                    this.FillBuffer();
                }
                zj = (this.bsBuff >> (this.bsLive - 1)) & 1;
                this.bsLive--;
                zvec = (zvec << 1) | zj;
            }
            if (zvec - this.baseArray[zt][zn] < 0 || zvec - this.baseArray[zt][zn] >= BZip2Constants.MAX_ALPHA_SIZE)
            {
                throw new BZip2Exception("Bzip data error");
            }
            int nextSym = this.perm[zt][zvec - this.baseArray[zt][zn]];

            while (true)
            {
                if (nextSym == EOB)
                {
                    break;
                }

                if (nextSym == BZip2Constants.RUNA || nextSym == BZip2Constants.RUNB)
                {
                    int s = -1;
                    int n = 1;
                    do
                    {
                        if (nextSym == BZip2Constants.RUNA)
                        {
                            s += (0 + 1)*n;
                        }
                        else if (nextSym == BZip2Constants.RUNB)
                        {
                            s += (1 + 1)*n;
                        }

                        n <<= 1;

                        if (groupPos == 0)
                        {
                            groupNo++;
                            groupPos = BZip2Constants.G_SIZE;
                        }

                        groupPos--;

                        zt = this.selector[groupNo];
                        zn = this.minLens[zt];
                        zvec = this.BsR(zn);

                        while (zvec > this.limit[zt][zn])
                        {
                            zn++;
                            while (this.bsLive < 1)
                            {
                                this.FillBuffer();
                            }
                            zj = (this.bsBuff >> (this.bsLive - 1)) & 1;
                            this.bsLive--;
                            zvec = (zvec << 1) | zj;
                        }
                        nextSym = this.perm[zt][zvec - this.baseArray[zt][zn]];
                    } while (nextSym == BZip2Constants.RUNA || nextSym == BZip2Constants.RUNB);

                    s++;
                    byte ch = this.seqToUnseq[yy[0]];
                    this.unzftab[ch] += s;

                    while (s > 0)
                    {
                        this.last++;
                        this.ll8[this.last] = ch;
                        s--;
                    }

                    if (this.last >= limitLast)
                    {
                        BlockOverrun();
                    }
                    continue;
                }
                this.last++;
                if (this.last >= limitLast)
                {
                    BlockOverrun();
                }

                byte tmp = yy[nextSym - 1];
                this.unzftab[this.seqToUnseq[tmp]]++;
                this.ll8[this.last] = this.seqToUnseq[tmp];

                for (int j = nextSym - 1; j > 0; --j)
                {
                    yy[j] = yy[j - 1];
                }
                yy[0] = tmp;

                if (groupPos == 0)
                {
                    groupNo++;
                    groupPos = BZip2Constants.G_SIZE;
                }

                groupPos--;
                zt = this.selector[groupNo];
                zn = this.minLens[zt];
                zvec = this.BsR(zn);
                while (zvec > this.limit[zt][zn])
                {
                    zn++;
                    while (this.bsLive < 1)
                    {
                        this.FillBuffer();
                    }
                    zj = (this.bsBuff >> (this.bsLive - 1)) & 1;
                    this.bsLive--;
                    zvec = (zvec << 1) | zj;
                }
                nextSym = this.perm[zt][zvec - this.baseArray[zt][zn]];
                continue;
            }
        }

        private void SetupBlock()
        {
            int[] cftab = new int[257];

            cftab[0] = 0;
            Array.Copy(this.unzftab, 0, cftab, 1, 256);

            for (int i = 1; i <= 256; i++)
            {
                cftab[i] += cftab[i - 1];
            }

            for (int i = 0; i <= this.last; i++)
            {
                byte ch = this.ll8[i];
                this.tt[cftab[ch]] = i;
                cftab[ch]++;
            }

            this.tPos = this.tt[this.origPtr];

            this.count = 0;
            this.i2 = 0;
            this.ch2 = 256; /*-- not a char and not EOF --*/

            if (this.blockRandomised)
            {
                this.rNToGo = 0;
                this.rTPos = 0;
                this.SetupRandPartA();
            }
            else
            {
                this.SetupNoRandPartA();
            }
        }

        private void SetupRandPartA()
        {
            if (this.i2 <= this.last)
            {
                this.chPrev = this.ch2;
                this.ch2 = this.ll8[this.tPos];
                this.tPos = this.tt[this.tPos];
                if (this.rNToGo == 0)
                {
                    this.rNToGo = BZip2Constants.rNums[this.rTPos];
                    this.rTPos++;
                    if (this.rTPos == 512)
                    {
                        this.rTPos = 0;
                    }
                }
                this.rNToGo--;
                this.ch2 ^= (this.rNToGo == 1) ? 1 : 0;
                this.i2++;

                this.currentChar = this.ch2;
                this.currentState = RAND_PART_B_STATE;
                this.mCrc.Update(this.ch2);
            }
            else
            {
                this.EndBlock();
                this.InitBlock();
                this.SetupBlock();
            }
        }

        private void SetupNoRandPartA()
        {
            if (this.i2 <= this.last)
            {
                this.chPrev = this.ch2;
                this.ch2 = this.ll8[this.tPos];
                this.tPos = this.tt[this.tPos];
                this.i2++;

                this.currentChar = this.ch2;
                this.currentState = NO_RAND_PART_B_STATE;
                this.mCrc.Update(this.ch2);
            }
            else
            {
                this.EndBlock();
                this.InitBlock();
                this.SetupBlock();
            }
        }

        private void SetupRandPartB()
        {
            if (this.ch2 != this.chPrev)
            {
                this.currentState = RAND_PART_A_STATE;
                this.count = 1;
                this.SetupRandPartA();
            }
            else
            {
                this.count++;
                if (this.count >= 4)
                {
                    this.z = this.ll8[this.tPos];
                    this.tPos = this.tt[this.tPos];
                    if (this.rNToGo == 0)
                    {
                        this.rNToGo = BZip2Constants.rNums[this.rTPos];
                        this.rTPos++;
                        if (this.rTPos == 512)
                        {
                            this.rTPos = 0;
                        }
                    }
                    this.rNToGo--;
                    this.z ^= (byte) ((this.rNToGo == 1) ? 1 : 0);
                    this.j2 = 0;
                    this.currentState = RAND_PART_C_STATE;
                    this.SetupRandPartC();
                }
                else
                {
                    this.currentState = RAND_PART_A_STATE;
                    this.SetupRandPartA();
                }
            }
        }

        private void SetupRandPartC()
        {
            if (this.j2 < this.z)
            {
                this.currentChar = this.ch2;
                this.mCrc.Update(this.ch2);
                this.j2++;
            }
            else
            {
                this.currentState = RAND_PART_A_STATE;
                this.i2++;
                this.count = 0;
                this.SetupRandPartA();
            }
        }

        private void SetupNoRandPartB()
        {
            if (this.ch2 != this.chPrev)
            {
                this.currentState = NO_RAND_PART_A_STATE;
                this.count = 1;
                this.SetupNoRandPartA();
            }
            else
            {
                this.count++;
                if (this.count >= 4)
                {
                    this.z = this.ll8[this.tPos];
                    this.tPos = this.tt[this.tPos];
                    this.currentState = NO_RAND_PART_C_STATE;
                    this.j2 = 0;
                    this.SetupNoRandPartC();
                }
                else
                {
                    this.currentState = NO_RAND_PART_A_STATE;
                    this.SetupNoRandPartA();
                }
            }
        }

        private void SetupNoRandPartC()
        {
            if (this.j2 < this.z)
            {
                this.currentChar = this.ch2;
                this.mCrc.Update(this.ch2);
                this.j2++;
            }
            else
            {
                this.currentState = NO_RAND_PART_A_STATE;
                this.i2++;
                this.count = 0;
                this.SetupNoRandPartA();
            }
        }

        private void SetDecompressStructureSizes(int newSize100k)
        {
            if (!(0 <= newSize100k && newSize100k <= 9 && 0 <= this.blockSize100k && this.blockSize100k <= 9))
            {
                throw new BZip2Exception("Invalid block size");
            }

            this.blockSize100k = newSize100k;

            if (newSize100k == 0)
            {
                return;
            }

            int n = BZip2Constants.baseBlockSize*newSize100k;
            this.ll8 = new byte[n];
            this.tt = new int[n];
        }

        private static void CompressedStreamEOF()
        {
            throw new EndOfStreamException("BZip2 input stream end of compressed stream");
        }

        private static void BlockOverrun()
        {
            throw new BZip2Exception("BZip2 input stream block overrun");
        }

        private static void BadBlockHeader()
        {
            throw new BZip2Exception("BZip2 input stream bad block header");
        }

        private static void CrcError()
        {
            throw new BZip2Exception("BZip2 input stream crc error");
        }

        private static void HbCreateDecodeTables(int[] limit, int[] baseArray, int[] perm, char[] length, int minLen,
                                                 int maxLen, int alphaSize)
        {
            int pp = 0;

            for (int i = minLen; i <= maxLen; ++i)
            {
                for (int j = 0; j < alphaSize; ++j)
                {
                    if (length[j] == i)
                    {
                        perm[pp] = j;
                        ++pp;
                    }
                }
            }

            for (int i = 0; i < BZip2Constants.MAX_CODE_LEN; i++)
            {
                baseArray[i] = 0;
            }

            for (int i = 0; i < alphaSize; i++)
            {
                ++baseArray[length[i] + 1];
            }

            for (int i = 1; i < BZip2Constants.MAX_CODE_LEN; i++)
            {
                baseArray[i] += baseArray[i - 1];
            }

            for (int i = 0; i < BZip2Constants.MAX_CODE_LEN; i++)
            {
                limit[i] = 0;
            }

            int vec = 0;

            for (int i = minLen; i <= maxLen; i++)
            {
                vec += (baseArray[i + 1] - baseArray[i]);
                limit[i] = vec - 1;
                vec <<= 1;
            }

            for (int i = minLen + 1; i <= maxLen; i++)
            {
                baseArray[i] = ((limit[i - 1] + 1) << 1) - baseArray[i];
            }
        }

        #region Instance Fields

        /*--
		index of the last char in the block, so
		the block size == last + 1.
		--*/

        private readonly int[][] baseArray = new int[BZip2Constants.N_GROUPS][];
        private readonly bool[] inUse = new bool[256];
        private readonly int[][] limit = new int[BZip2Constants.N_GROUPS][];
        private readonly IChecksum mCrc = new StrangeCRC();
        private readonly int[] minLens = new int[BZip2Constants.N_GROUPS];
        private readonly int[][] perm = new int[BZip2Constants.N_GROUPS][];
        private readonly byte[] selector = new byte[BZip2Constants.MAX_SELECTORS];
        private readonly byte[] selectorMtf = new byte[BZip2Constants.MAX_SELECTORS];
        private readonly byte[] seqToUnseq = new byte[256];
        private readonly byte[] unseqToSeq = new byte[256];
        private readonly int[] unzftab = new int[256];
        private Stream baseStream;
        private bool blockRandomised;
        private int blockSize100k;

        private int bsBuff;
        private int bsLive;
        private int ch2;
        private int chPrev;
        private int computedBlockCRC;
        private uint computedCombinedCRC;

        private int count;
        private int currentChar = -1;

        private int currentState = START_BLOCK_STATE;
        private int i2;

        private bool isStreamOwner = true;
        private int j2;
        private int last;
        private byte[] ll8;
        private int nInUse;
        private int origPtr;
        private int rNToGo;
        private int rTPos;

        private int storedBlockCRC, storedCombinedCRC;
        private bool streamEnd;
        private int tPos;
        private int[] tt;
        private byte z;

        #endregion
    }
}

/* This file was derived from a file containing this license:
 * 
 * This file is a part of bzip2 and/or libbzip2, a program and
 * library for lossless, block-sorting data compression.
 * 
 * Copyright (C) 1996-1998 Julian R Seward.  All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 * 
 * 2. The origin of this software must not be misrepresented; you must 
 * not claim that you wrote the original software.  If you use this 
 * software in a product, an acknowledgment in the product 
 * documentation would be appreciated but is not required.
 * 
 * 3. Altered source versions must be plainly marked as such, and must
 * not be misrepresented as being the original software.
 * 
 * 4. The name of the author may not be used to endorse or promote 
 * products derived from this software without specific prior written 
 * permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * Java version ported by Keiron Liddle, Aftex Software <keiron@aftexsw.com> 1999-2001
 */