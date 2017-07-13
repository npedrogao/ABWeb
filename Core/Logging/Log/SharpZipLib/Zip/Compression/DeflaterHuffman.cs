// DeflaterHuffman.cs
//
// Copyright (C) 2001 Mike Krueger
// Copyright (C) 2004 John Reilly
//
// This file was translated from java, it was part of the GNU Classpath
// Copyright (C) 2001 Free Software Foundation, Inc.
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

namespace Core.Logging.Log.SharpZipLib.Zip.Compression
{
    /// <summary>
    /// This is the DeflaterHuffman class.
    /// 
    /// This class is <i>not</i> thread safe.  This is inherent in the API, due
    /// to the split of Deflate and SetInput.
    /// 
    /// author of the original java version : Jochen Hoenicke
    /// </summary>
    public class DeflaterHuffman
    {
        private const int BITLEN_NUM = 19;
        private const int BUFSIZE = 1 << (DeflaterConstants.DEFAULT_MEM_LEVEL + 6);

        // Number of distance codes
        private const int DIST_NUM = 30;
        // Number of codes used to transfer bit lengths

        private const int EOF_SYMBOL = 256;
        private const int LITERAL_NUM = 286;
        private const int REP_11_138 = 18;
        private const int REP_3_10 = 17;
        private const int REP_3_6 = 16;

        // The lengths of the bit length codes are sent in order of decreasing
        // probability, to avoid transmitting the lengths for unused bit length codes.

        private static readonly byte[] bit4Reverse = {
                                                         0,
                                                         8,
                                                         4,
                                                         12,
                                                         2,
                                                         10,
                                                         6,
                                                         14,
                                                         1,
                                                         9,
                                                         5,
                                                         13,
                                                         3,
                                                         11,
                                                         7,
                                                         15
                                                     };

        private static readonly int[] BL_ORDER = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};

        private static readonly short[] staticDCodes = InitStaticDCodes();
        private static readonly byte[] staticDLength = InitStaticDLength();
        private static readonly short[] staticLCodes = InitStaticLCodes();
        private static readonly byte[] staticLLength = InitStaticLLength();

        private static short[] InitStaticDCodes( )
        {
            // Distance codes
            short[] result = new short[DIST_NUM];
            for (int i = 0; i < DIST_NUM; i++)
            {
                result[i] = BitReverse( i << 11 );
            }
            return result;
        }

        private static byte[] InitStaticDLength( )
        {
            // Distance codes
            byte[] result = new byte[DIST_NUM];
            for( int i = 0 ; i < DIST_NUM ; i++ )
            {
                result[i] = 5;
            }
            return result;
        }

        private static short[] InitStaticLCodes( )
        {
            // See RFC 1951 3.2.6
            // Literal codes
            short[] result = new short[LITERAL_NUM];
            
            int i = 0;
            while( i < 144 )
            {
                result[i] = BitReverse((0x030 + i) << 8);
                i++;
            }

            while( i < 256 )
            {
                result[i] = BitReverse((0x190 - 144 + i) << 7);
                i++;
            }

            while( i < 280 )
            {
                result[i] = BitReverse((0x000 - 256 + i) << 9);
                i++;
            }

            while( i < LITERAL_NUM )
            {
                result[i] = BitReverse((0x0c0 - 280 + i) << 8);
                i++;
            }
            return result;
        }

        private static byte[] InitStaticLLength( )
        {
            // See RFC 1951 3.2.6
            // Literal codes
            byte[] result = new byte[LITERAL_NUM];

            int i = 0;
            while( i < 144 )
            {
                result[i++] = 8;
            }

            while( i < 256 )
            {
                result[i++] = 9;
            }

            while( i < 280 )
            {
                result[i++] = 7;
            }

            while( i < LITERAL_NUM )
            {
                result[i++] = 8;
            }
            return result;
        }
        /// <summary>
        /// Construct instance with pending buffer
        /// </summary>
        /// <param name="pending">Pending buffer to use</param>
        public DeflaterHuffman(DeflaterPending pending)
        {
            this.pending = pending;

            this.literalTree = new Tree(this, LITERAL_NUM, 257, 15);
            this.distTree = new Tree(this, DIST_NUM, 1, 15);
            this.blTree = new Tree(this, BITLEN_NUM, 4, 7);

            this.d_buf = new short[BUFSIZE];
            this.l_buf = new byte[BUFSIZE];
        }

        /// <summary>
        /// Reset internal state
        /// </summary>		
        public void Reset()
        {
            this.last_lit = 0;
            this.extra_bits = 0;
            this.literalTree.Reset();
            this.distTree.Reset();
            this.blTree.Reset();
        }

        /// <summary>
        /// Write all trees to pending buffer
        /// </summary>		
        public void SendAllTrees(int blTreeCodes)
        {
            this.blTree.BuildCodes();
            this.literalTree.BuildCodes();
            this.distTree.BuildCodes();
            this.pending.WriteBits(this.literalTree.numCodes - 257, 5);
            this.pending.WriteBits(this.distTree.numCodes - 1, 5);
            this.pending.WriteBits(blTreeCodes - 4, 4);
            for (int rank = 0; rank < blTreeCodes; rank++)
            {
                this.pending.WriteBits(this.blTree.length[BL_ORDER[rank]], 3);
            }
            this.literalTree.WriteTree(this.blTree);
            this.distTree.WriteTree(this.blTree);

#if DebugDeflation
			if (DeflaterConstants.DEBUGGING) {
				blTree.CheckEmpty();
			}
#endif
        }

        /// <summary>
        /// Compress current buffer writing data to pending buffer
        /// </summary>
        public void CompressBlock()
        {
            for (int i = 0; i < this.last_lit; i++)
            {
                int litlen = this.l_buf[i] & 0xff;
                int dist = this.d_buf[i];
                if (dist-- != 0)
                {
                    //					if (DeflaterConstants.DEBUGGING) {
                    //						Console.Write("["+(dist+1)+","+(litlen+3)+"]: ");
                    //					}

                    int lc = Lcode(litlen);
                    this.literalTree.WriteSymbol(lc);

                    int bits = (lc - 261)/4;
                    if (bits > 0 && bits <= 5)
                    {
                        this.pending.WriteBits(litlen & ((1 << bits) - 1), bits);
                    }

                    int dc = Dcode(dist);
                    this.distTree.WriteSymbol(dc);

                    bits = dc/2 - 1;
                    if (bits > 0)
                    {
                        this.pending.WriteBits(dist & ((1 << bits) - 1), bits);
                    }
                }
                else
                {
                    //					if (DeflaterConstants.DEBUGGING) {
                    //						if (litlen > 32 && litlen < 127) {
                    //							Console.Write("("+(char)litlen+"): ");
                    //						} else {
                    //							Console.Write("{"+litlen+"}: ");
                    //						}
                    //					}
                    this.literalTree.WriteSymbol(litlen);
                }
            }

#if DebugDeflation
			if (DeflaterConstants.DEBUGGING) {
				Console.Write("EOF: ");
			}
#endif
            this.literalTree.WriteSymbol(EOF_SYMBOL);

#if DebugDeflation
			if (DeflaterConstants.DEBUGGING) {
				literalTree.CheckEmpty();
				distTree.CheckEmpty();
			}
#endif
        }

        /// <summary>
        /// Flush block to output with no compression
        /// </summary>
        /// <param name="stored">Data to write</param>
        /// <param name="storedOffset">Index of first byte to write</param>
        /// <param name="storedLength">Count of bytes to write</param>
        /// <param name="lastBlock">True if this is the last block</param>
        public void FlushStoredBlock(byte[] stored, int storedOffset, int storedLength, bool lastBlock)
        {
#if DebugDeflation
            //			if (DeflaterConstants.DEBUGGING) {
            //				//Console.WriteLine("Flushing stored block "+ storedLength);
            //			}
#endif
            this.pending.WriteBits((DeflaterConstants.STORED_BLOCK << 1) + (lastBlock ? 1 : 0), 3);
            this.pending.AlignToByte();
            this.pending.WriteShort(storedLength);
            this.pending.WriteShort(~storedLength);
            this.pending.WriteBlock(stored, storedOffset, storedLength);
            this.Reset();
        }

        /// <summary>
        /// Flush block to output with compression
        /// </summary>		
        /// <param name="stored">Data to flush</param>
        /// <param name="storedOffset">Index of first byte to flush</param>
        /// <param name="storedLength">Count of bytes to flush</param>
        /// <param name="lastBlock">True if this is the last block</param>
        public void FlushBlock(byte[] stored, int storedOffset, int storedLength, bool lastBlock)
        {
            this.literalTree.freqs[EOF_SYMBOL]++;

            // Build trees
            this.literalTree.BuildTree();
            this.distTree.BuildTree();

            // Calculate bitlen frequency
            this.literalTree.CalcBLFreq(this.blTree);
            this.distTree.CalcBLFreq(this.blTree);

            // Build bitlen tree
            this.blTree.BuildTree();

            int blTreeCodes = 4;
            for (int i = 18; i > blTreeCodes; i--)
            {
                if (this.blTree.length[BL_ORDER[i]] > 0)
                {
                    blTreeCodes = i + 1;
                }
            }
            int opt_len = 14 + blTreeCodes*3 + this.blTree.GetEncodedLength() +
                          this.literalTree.GetEncodedLength() + this.distTree.GetEncodedLength() +
                          this.extra_bits;

            int static_len = this.extra_bits;
            for (int i = 0; i < LITERAL_NUM; i++)
            {
                static_len += this.literalTree.freqs[i]*staticLLength[i];
            }
            for (int i = 0; i < DIST_NUM; i++)
            {
                static_len += this.distTree.freqs[i]*staticDLength[i];
            }
            if (opt_len >= static_len)
            {
                // Force static trees
                opt_len = static_len;
            }

            if (storedOffset >= 0 && storedLength + 4 < opt_len >> 3)
            {
                // Store Block

                //				if (DeflaterConstants.DEBUGGING) {
                //					//Console.WriteLine("Storing, since " + storedLength + " < " + opt_len
                //					                  + " <= " + static_len);
                //				}
                this.FlushStoredBlock(stored, storedOffset, storedLength, lastBlock);
            }
            else if (opt_len == static_len)
            {
                // Encode with static tree
                this.pending.WriteBits((DeflaterConstants.STATIC_TREES << 1) + (lastBlock ? 1 : 0), 3);
                this.literalTree.SetStaticCodes(staticLCodes, staticLLength);
                this.distTree.SetStaticCodes(staticDCodes, staticDLength);
                this.CompressBlock();
                this.Reset();
            }
            else
            {
                // Encode with dynamic tree
                this.pending.WriteBits((DeflaterConstants.DYN_TREES << 1) + (lastBlock ? 1 : 0), 3);
                this.SendAllTrees(blTreeCodes);
                this.CompressBlock();
                this.Reset();
            }
        }

        /// <summary>
        /// Get value indicating if internal buffer is full
        /// </summary>
        /// <returns>true if buffer is full</returns>
        public bool IsFull()
        {
            return this.last_lit >= BUFSIZE;
        }

        /// <summary>
        /// Add literal to buffer
        /// </summary>
        /// <param name="literal">Literal value to add to buffer.</param>
        /// <returns>Value indicating internal buffer is full</returns>
        public bool TallyLit(int literal)
        {
            //			if (DeflaterConstants.DEBUGGING) {
            //				if (lit > 32 && lit < 127) {
            //					//Console.WriteLine("("+(char)lit+")");
            //				} else {
            //					//Console.WriteLine("{"+lit+"}");
            //				}
            //			}
            this.d_buf[this.last_lit] = 0;
            this.l_buf[this.last_lit++] = (byte) literal;
            this.literalTree.freqs[literal]++;
            return this.IsFull();
        }

        /// <summary>
        /// Add distance code and length to literal and distance trees
        /// </summary>
        /// <param name="distance">Distance code</param>
        /// <param name="length">Length</param>
        /// <returns>Value indicating if internal buffer is full</returns>
        public bool TallyDist(int distance, int length)
        {
            //			if (DeflaterConstants.DEBUGGING) {
            //				//Console.WriteLine("[" + distance + "," + length + "]");
            //			}

            this.d_buf[this.last_lit] = (short) distance;
            this.l_buf[this.last_lit++] = (byte) (length - 3);

            int lc = Lcode(length - 3);
            this.literalTree.freqs[lc]++;
            if (lc >= 265 && lc < 285)
            {
                this.extra_bits += (lc - 261)/4;
            }

            int dc = Dcode(distance - 1);
            this.distTree.freqs[dc]++;
            if (dc >= 4)
            {
                this.extra_bits += dc/2 - 1;
            }
            return this.IsFull();
        }


        /// <summary>
        /// Reverse the bits of a 16 bit value.
        /// </summary>
        /// <param name="toReverse">Value to reverse bits</param>
        /// <returns>Value with bits reversed</returns>
        public static short BitReverse(int toReverse)
        {
            return (short) (bit4Reverse[toReverse & 0xF] << 12 |
                            bit4Reverse[(toReverse >> 4) & 0xF] << 8 |
                            bit4Reverse[(toReverse >> 8) & 0xF] << 4 |
                            bit4Reverse[toReverse >> 12]);
        }

        private static int Lcode(int length)
        {
            if (length == 255)
            {
                return 285;
            }

            int code = 257;
            while (length >= 8)
            {
                code += 4;
                length >>= 1;
            }
            return code + length;
        }

        private static int Dcode(int distance)
        {
            int code = 0;
            while (distance >= 4)
            {
                code += 2;
                distance >>= 1;
            }
            return code + distance;
        }

        #region Nested type: Tree

        private class Tree
        {
            #region Instance Fields

            private readonly int[] bl_counts;
            private readonly DeflaterHuffman dh;
            public readonly short[] freqs;

            private readonly int maxLength;

            private readonly int minNumCodes;
            private short[] codes;
            public byte[] length;

            public int numCodes;

            #endregion

            #region Constructors

            public Tree(DeflaterHuffman dh, int elems, int minCodes, int maxLength)
            {
                this.dh = dh;
                this.minNumCodes = minCodes;
                this.maxLength = maxLength;
                this.freqs = new short[elems];
                this.bl_counts = new int[maxLength];
            }

            #endregion

            /// <summary>
            /// Resets the internal state of the tree
            /// </summary>
            public void Reset()
            {
                for (int i = 0; i < this.freqs.Length; i++)
                {
                    this.freqs[i] = 0;
                }
                this.codes = null;
                this.length = null;
            }

            public void WriteSymbol(int code)
            {
                //				if (DeflaterConstants.DEBUGGING) {
                //					freqs[code]--;
                //					//  	  Console.Write("writeSymbol("+freqs.length+","+code+"): ");
                //				}
                this.dh.pending.WriteBits(this.codes[code] & 0xffff, this.length[code]);
            }

            /// <summary>
            /// Set static codes and length
            /// </summary>
            /// <param name="staticCodes">new codes</param>
            /// <param name="staticLengths">length for new codes</param>
            public void SetStaticCodes(short[] staticCodes, byte[] staticLengths)
            {
                this.codes = staticCodes;
                this.length = staticLengths;
            }

            /// <summary>
            /// Build dynamic codes and lengths
            /// </summary>
            public void BuildCodes()
            {
                int[] nextCode = new int[this.maxLength];
                int code = 0;

                this.codes = new short[this.freqs.Length];

                //				if (DeflaterConstants.DEBUGGING) {
                //					//Console.WriteLine("buildCodes: "+freqs.Length);
                //				}

                for (int bits = 0; bits < this.maxLength; bits++)
                {
                    nextCode[bits] = code;
                    code += this.bl_counts[bits] << (15 - bits);

                    //					if (DeflaterConstants.DEBUGGING) {
                    //						//Console.WriteLine("bits: " + ( bits + 1) + " count: " + bl_counts[bits]
                    //						                  +" nextCode: "+code);
                    //					}
                }

#if DebugDeflation
				if ( DeflaterConstants.DEBUGGING && (code != 65536) ) 
				{
					throw new SharpZipBaseException("Inconsistent bl_counts!");
				}
#endif
                for (int i = 0; i < this.numCodes; i++)
                {
                    int bits = this.length[i];
                    if (bits > 0)
                    {
                        //						if (DeflaterConstants.DEBUGGING) {
                        //								//Console.WriteLine("codes["+i+"] = rev(" + nextCode[bits-1]+"),
                        //								                  +bits);
                        //						}

                        this.codes[i] = BitReverse(nextCode[bits - 1]);
                        nextCode[bits - 1] += 1 << (16 - bits);
                    }
                }
            }

            public void BuildTree()
            {
                int numSymbols = this.freqs.Length;

                /* heap is a priority queue, sorted by frequency, least frequent
				* nodes first.  The heap is a binary tree, with the property, that
				* the parent node is smaller than both child nodes.  This assures
				* that the smallest node is the first parent.
				*
				* The binary tree is encoded in an array:  0 is root node and
				* the nodes 2*n+1, 2*n+2 are the child nodes of node n.
				*/
                int[] heap = new int[numSymbols];
                int heapLen = 0;
                int maxCode = 0;
                for (int n = 0; n < numSymbols; n++)
                {
                    int freq = this.freqs[n];
                    if (freq != 0)
                    {
                        // Insert n into heap
                        int pos = heapLen++;
                        int ppos;
                        while (pos > 0 && this.freqs[heap[ppos = (pos - 1)/2]] > freq)
                        {
                            heap[pos] = heap[ppos];
                            pos = ppos;
                        }
                        heap[pos] = n;

                        maxCode = n;
                    }
                }

                /* We could encode a single literal with 0 bits but then we
				* don't see the literals.  Therefore we force at least two
				* literals to avoid this case.  We don't care about order in
				* this case, both literals get a 1 bit code.
				*/
                while (heapLen < 2)
                {
                    int node = maxCode < 2 ? ++maxCode : 0;
                    heap[heapLen++] = node;
                }

                this.numCodes = Math.Max(maxCode + 1, this.minNumCodes);

                int numLeafs = heapLen;
                int[] childs = new int[4*heapLen - 2];
                int[] values = new int[2*heapLen - 1];
                int numNodes = numLeafs;
                for (int i = 0; i < heapLen; i++)
                {
                    int node = heap[i];
                    childs[2*i] = node;
                    childs[2*i + 1] = -1;
                    values[i] = this.freqs[node] << 8;
                    heap[i] = i;
                }

                /* Construct the Huffman tree by repeatedly combining the least two
				* frequent nodes.
				*/
                do
                {
                    int first = heap[0];
                    int last = heap[--heapLen];

                    // Propagate the hole to the leafs of the heap
                    int ppos = 0;
                    int path = 1;

                    while (path < heapLen)
                    {
                        if (path + 1 < heapLen && values[heap[path]] > values[heap[path + 1]])
                        {
                            path++;
                        }

                        heap[ppos] = heap[path];
                        ppos = path;
                        path = path*2 + 1;
                    }

                    /* Now propagate the last element down along path.  Normally
					* it shouldn't go too deep.
					*/
                    int lastVal = values[last];
                    while ((path = ppos) > 0 && values[heap[ppos = (path - 1)/2]] > lastVal)
                    {
                        heap[path] = heap[ppos];
                    }
                    heap[path] = last;


                    int second = heap[0];

                    // Create a new node father of first and second
                    last = numNodes++;
                    childs[2*last] = first;
                    childs[2*last + 1] = second;
                    int mindepth = Math.Min(values[first] & 0xff, values[second] & 0xff);
                    values[last] = lastVal = values[first] + values[second] - mindepth + 1;

                    // Again, propagate the hole to the leafs
                    ppos = 0;
                    path = 1;

                    while (path < heapLen)
                    {
                        if (path + 1 < heapLen && values[heap[path]] > values[heap[path + 1]])
                        {
                            path++;
                        }

                        heap[ppos] = heap[path];
                        ppos = path;
                        path = ppos*2 + 1;
                    }

                    // Now propagate the new element down along path
                    while ((path = ppos) > 0 && values[heap[ppos = (path - 1)/2]] > lastVal)
                    {
                        heap[path] = heap[ppos];
                    }
                    heap[path] = last;
                } while (heapLen > 1);

                if (heap[0] != childs.Length/2 - 1)
                {
                    throw new SharpZipBaseException("Heap invariant violated");
                }

                this.BuildLength(childs);
            }

            /// <summary>
            /// Get encoded length
            /// </summary>
            /// <returns>Encoded length, the sum of frequencies * lengths</returns>
            public int GetEncodedLength()
            {
                int len = 0;
                for (int i = 0; i < this.freqs.Length; i++)
                {
                    len += this.freqs[i]*this.length[i];
                }
                return len;
            }

            /// <summary>
            /// Scan a literal or distance tree to determine the frequencies of the codes
            /// in the bit length tree.
            /// </summary>
            public void CalcBLFreq(Tree blTree)
            {
                int curlen = -1; /* length of current code */

                int i = 0;
                while (i < this.numCodes)
                {
                    int max_count; /* max repeat count */
                    int min_count; /* min repeat count */
                    int count = 1; /* repeat count of the current code */
                    int nextlen = this.length[i];
                    if (nextlen == 0)
                    {
                        max_count = 138;
                        min_count = 3;
                    }
                    else
                    {
                        max_count = 6;
                        min_count = 3;
                        if (curlen != nextlen)
                        {
                            blTree.freqs[nextlen]++;
                            count = 0;
                        }
                    }
                    curlen = nextlen;
                    i++;

                    while (i < this.numCodes && curlen == this.length[i])
                    {
                        i++;
                        if (++count >= max_count)
                        {
                            break;
                        }
                    }

                    if (count < min_count)
                    {
                        blTree.freqs[curlen] += (short) count;
                    }
                    else if (curlen != 0)
                    {
                        blTree.freqs[REP_3_6]++;
                    }
                    else if (count <= 10)
                    {
                        blTree.freqs[REP_3_10]++;
                    }
                    else
                    {
                        blTree.freqs[REP_11_138]++;
                    }
                }
            }

            /// <summary>
            /// Write tree values
            /// </summary>
            /// <param name="blTree">Tree to write</param>
            public void WriteTree(Tree blTree)
            {
                int curlen = -1; // length of current code

                int i = 0;
                while (i < this.numCodes)
                {
                    int max_count; // max repeat count
                    int min_count; // min repeat count
                    int count = 1; // repeat count of the current code
                    int nextlen = this.length[i];
                    if (nextlen == 0)
                    {
                        max_count = 138;
                        min_count = 3;
                    }
                    else
                    {
                        max_count = 6;
                        min_count = 3;
                        if (curlen != nextlen)
                        {
                            blTree.WriteSymbol(nextlen);
                            count = 0;
                        }
                    }
                    curlen = nextlen;
                    i++;

                    while (i < this.numCodes && curlen == this.length[i])
                    {
                        i++;
                        if (++count >= max_count)
                        {
                            break;
                        }
                    }

                    if (count < min_count)
                    {
                        while (count-- > 0)
                        {
                            blTree.WriteSymbol(curlen);
                        }
                    }
                    else if (curlen != 0)
                    {
                        blTree.WriteSymbol(REP_3_6);
                        this.dh.pending.WriteBits(count - 3, 2);
                    }
                    else if (count <= 10)
                    {
                        blTree.WriteSymbol(REP_3_10);
                        this.dh.pending.WriteBits(count - 3, 3);
                    }
                    else
                    {
                        blTree.WriteSymbol(REP_11_138);
                        this.dh.pending.WriteBits(count - 11, 7);
                    }
                }
            }

            private void BuildLength(int[] childs)
            {
                this.length = new byte[this.freqs.Length];
                int numNodes = childs.Length/2;
                int numLeafs = (numNodes + 1)/2;
                int overflow = 0;

                for (int i = 0; i < this.maxLength; i++)
                {
                    this.bl_counts[i] = 0;
                }

                // First calculate optimal bit lengths
                int[] lengths = new int[numNodes];
                lengths[numNodes - 1] = 0;

                for (int i = numNodes - 1; i >= 0; i--)
                {
                    if (childs[2*i + 1] != -1)
                    {
                        int bitLength = lengths[i] + 1;
                        if (bitLength > this.maxLength)
                        {
                            bitLength = this.maxLength;
                            overflow++;
                        }
                        lengths[childs[2*i]] = lengths[childs[2*i + 1]] = bitLength;
                    }
                    else
                    {
                        // A leaf node
                        int bitLength = lengths[i];
                        this.bl_counts[bitLength - 1]++;
                        this.length[childs[2*i]] = (byte) lengths[i];
                    }
                }

                //				if (DeflaterConstants.DEBUGGING) {
                //					//Console.WriteLine("Tree "+freqs.Length+" lengths:");
                //					for (int i=0; i < numLeafs; i++) {
                //						//Console.WriteLine("Node "+childs[2*i]+" freq: "+freqs[childs[2*i]]
                //						                  + " len: "+length[childs[2*i]]);
                //					}
                //				}

                if (overflow == 0)
                {
                    return;
                }

                int incrBitLen = this.maxLength - 1;
                do
                {
                    // Find the first bit length which could increase:
                    while (this.bl_counts[--incrBitLen] == 0)
                    {
                    }

                    // Move this node one down and remove a corresponding
                    // number of overflow nodes.
                    do
                    {
                        this.bl_counts[incrBitLen]--;
                        this.bl_counts[++incrBitLen]++;
                        overflow -= 1 << (this.maxLength - 1 - incrBitLen);
                    } while (overflow > 0 && incrBitLen < this.maxLength - 1);
                } while (overflow > 0);

                /* We may have overshot above.  Move some nodes from maxLength to
				* maxLength-1 in that case.
				*/
                this.bl_counts[this.maxLength - 1] += overflow;
                this.bl_counts[this.maxLength - 2] -= overflow;

                /* Now recompute all bit lengths, scanning in increasing
				* frequency.  It is simpler to reconstruct all lengths instead of
				* fixing only the wrong ones. This idea is taken from 'ar'
				* written by Haruhiko Okumura.
				*
				* The nodes were inserted with decreasing frequency into the childs
				* array.
				*/
                int nodePtr = 2*numLeafs;
                for (int bits = this.maxLength; bits != 0; bits--)
                {
                    int n = this.bl_counts[bits - 1];
                    while (n > 0)
                    {
                        int childPtr = 2*childs[nodePtr++];
                        if (childs[childPtr + 1] == -1)
                        {
                            // We found another leaf
                            this.length[childs[childPtr]] = (byte) bits;
                            n--;
                        }
                    }
                }
                //				if (DeflaterConstants.DEBUGGING) {
                //					//Console.WriteLine("*** After overflow elimination. ***");
                //					for (int i=0; i < numLeafs; i++) {
                //						//Console.WriteLine("Node "+childs[2*i]+" freq: "+freqs[childs[2*i]]
                //						                  + " len: "+length[childs[2*i]]);
                //					}
                //				}
            }
        }

        #endregion

        #region Instance Fields

        private readonly Tree blTree;

        // Buffer for distances
        private readonly short[] d_buf;
        private readonly Tree distTree;
        private readonly byte[] l_buf;
        private readonly Tree literalTree;
        private int extra_bits;
        private int last_lit;

        /// <summary>
        /// Pending buffer to use
        /// </summary>
        public DeflaterPending pending;

        #endregion
    }
}