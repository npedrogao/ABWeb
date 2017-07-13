// OutputWindow.cs
//
// Copyright (C) 2001 Mike Krueger
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

namespace Core.Logging.Log.SharpZipLib.Zip.Compression.Streams
{
    /// <summary>
    /// Contains the output from the Inflation process.
    /// We need to have a window so that we can refer backwards into the output stream
    /// to repeat stuff.<br/>
    /// Author of the original java version : John Leuner
    /// </summary>
    public class OutputWindow
    {
        #region Constants

        private const int WindowMask = WindowSize - 1;
        private const int WindowSize = 1 << 15;

        #endregion

        #region Instance Fields

        private readonly byte[] window = new byte[WindowSize]; //The window is 2^15 bytes
        private int windowEnd;
        private int windowFilled;

        #endregion

        /// <summary>
        /// Write a byte to this output window
        /// </summary>
        /// <param name="value">value to write</param>
        /// <exception cref="InvalidOperationException">
        /// if window is full
        /// </exception>
        public void Write(int value)
        {
            if (this.windowFilled++ == WindowSize)
            {
                throw new InvalidOperationException("Window full");
            }
            this.window[this.windowEnd++] = (byte) value;
            this.windowEnd &= WindowMask;
        }


        private void SlowRepeat(int repStart, int length)
        {
            while (length-- > 0)
            {
                this.window[this.windowEnd++] = this.window[repStart++];
                this.windowEnd &= WindowMask;
                repStart &= WindowMask;
            }
        }

        /// <summary>
        /// Append a byte pattern already in the window itself
        /// </summary>
        /// <param name="length">length of pattern to copy</param>
        /// <param name="distance">distance from end of window pattern occurs</param>
        /// <exception cref="InvalidOperationException">
        /// If the repeated data overflows the window
        /// </exception>
        public void Repeat(int length, int distance)
        {
            if ((this.windowFilled += length) > WindowSize)
            {
                throw new InvalidOperationException("Window full");
            }

            int repStart = (this.windowEnd - distance) & WindowMask;
            int border = WindowSize - length;
            if ((repStart <= border) && (this.windowEnd < border))
            {
                if (length <= distance)
                {
                    Array.Copy(this.window, repStart, this.window, this.windowEnd, length);
                    this.windowEnd += length;
                }
                else
                {
                    // We have to copy manually, since the repeat pattern overlaps.
                    while (length-- > 0)
                    {
                        this.window[this.windowEnd++] = this.window[repStart++];
                    }
                }
            }
            else
            {
                this.SlowRepeat(repStart, length);
            }
        }

        /// <summary>
        /// Copy from input manipulator to internal window
        /// </summary>
        /// <param name="input">source of data</param>
        /// <param name="length">length of data to copy</param>
        /// <returns>the number of bytes copied</returns>
        public int CopyStored(StreamManipulator input, int length)
        {
            length = Math.Min(Math.Min(length, WindowSize - this.windowFilled), input.AvailableBytes);
            int copied;

            int tailLen = WindowSize - this.windowEnd;
            if (length > tailLen)
            {
                copied = input.CopyBytes(this.window, this.windowEnd, tailLen);
                if (copied == tailLen)
                {
                    copied += input.CopyBytes(this.window, 0, length - tailLen);
                }
            }
            else
            {
                copied = input.CopyBytes(this.window, this.windowEnd, length);
            }

            this.windowEnd = (this.windowEnd + copied) & WindowMask;
            this.windowFilled += copied;
            return copied;
        }

        /// <summary>
        /// Copy dictionary to window
        /// </summary>
        /// <param name="dictionary">source dictionary</param>
        /// <param name="offset">offset of start in source dictionary</param>
        /// <param name="length">length of dictionary</param>
        /// <exception cref="InvalidOperationException">
        /// If window isnt empty
        /// </exception>
        public void CopyDict(byte[] dictionary, int offset, int length)
        {
            if (dictionary == null)
            {
                throw new ArgumentNullException("dictionary");
            }

            if (this.windowFilled > 0)
            {
                throw new InvalidOperationException();
            }

            if (length > WindowSize)
            {
                offset += length - WindowSize;
                length = WindowSize;
            }
            Array.Copy(dictionary, offset, this.window, 0, length);
            this.windowEnd = length & WindowMask;
        }

        /// <summary>
        /// Get remaining unfilled space in window
        /// </summary>
        /// <returns>Number of bytes left in window</returns>
        public int GetFreeSpace()
        {
            return WindowSize - this.windowFilled;
        }

        /// <summary>
        /// Get bytes available for output in window
        /// </summary>
        /// <returns>Number of bytes filled</returns>
        public int GetAvailable()
        {
            return this.windowFilled;
        }

        /// <summary>
        /// Copy contents of window to output
        /// </summary>
        /// <param name="output">buffer to copy to</param>
        /// <param name="offset">offset to start at</param>
        /// <param name="len">number of bytes to count</param>
        /// <returns>The number of bytes copied</returns>
        /// <exception cref="InvalidOperationException">
        /// If a window underflow occurs
        /// </exception>
        public int CopyOutput(byte[] output, int offset, int len)
        {
            int copyEnd = this.windowEnd;
            if (len > this.windowFilled)
            {
                len = this.windowFilled;
            }
            else
            {
                copyEnd = (this.windowEnd - this.windowFilled + len) & WindowMask;
            }

            int copied = len;
            int tailLen = len - copyEnd;

            if (tailLen > 0)
            {
                Array.Copy(this.window, WindowSize - tailLen, output, offset, tailLen);
                offset += tailLen;
                len = copyEnd;
            }
            Array.Copy(this.window, copyEnd - len, output, offset, len);
            this.windowFilled -= copied;
            if (this.windowFilled < 0)
            {
                throw new InvalidOperationException();
            }
            return copied;
        }

        /// <summary>
        /// Reset by clearing window so <see cref="GetAvailable">GetAvailable</see> returns 0
        /// </summary>
        public void Reset()
        {
            this.windowFilled = this.windowEnd = 0;
        }
    }
}