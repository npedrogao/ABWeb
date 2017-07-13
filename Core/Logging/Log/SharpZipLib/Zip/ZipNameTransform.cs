// ZipNameTransform.cs
//
// Copyright 2005 John Reilly
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
using Core.Logging.Log.SharpZipLib.Core;

namespace Core.Logging.Log.SharpZipLib.Zip
{
    /// <summary>
    /// ZipNameTransform transforms names as per the Zip file naming convention.
    /// </summary>
    /// <remarks>The use of absolute names is supported although its use is not valid 
    /// according to Zip naming conventions, and should not be used if maximum compatability is desired.</remarks>
    public class ZipNameTransform : INameTransform
    {
        #region Constructors

        /// <summary>
        /// Initialize a new instance of <see cref="ZipNameTransform"></see>
        /// </summary>
        public ZipNameTransform()
        {
        }

        /// <summary>
        /// Initialize a new instance of <see cref="ZipNameTransform"></see>
        /// </summary>
        /// <param name="trimPrefix">The string to trim from front of paths if found.</param>
        public ZipNameTransform(string trimPrefix)
        {
            this.TrimPrefix = trimPrefix;
        }

        #endregion

        /// <summary>
        /// Get/set the path prefix to be trimmed from paths if present.
        /// </summary>
        /// <remarks>The prefix is trimmed before any conversion from
        /// a windows path is done.</remarks>
        public string TrimPrefix
        {
            get { return this.trimPrefix_; }
            set
            {
                this.trimPrefix_ = value;
                if (this.trimPrefix_ != null)
                {
                    this.trimPrefix_ = this.trimPrefix_.ToLower();
                }
            }
        }

        #region INameTransform Members

        /// <summary>
        /// Transform a directory name according to the Zip file naming conventions.
        /// </summary>
        /// <param name="name">The directory name to transform.</param>
        /// <returns>The transformed name.</returns>
        public string TransformDirectory(string name)
        {
            name = this.TransformFile(name);
            if (name.Length > 0)
            {
                if (!name.EndsWith("/"))
                {
                    name += "/";
                }
            }
            else
            {
                throw new ZipException("Cannot have an empty directory name");
            }
            return name;
        }

        /// <summary>
        /// Transform a windows file name according to the Zip file naming conventions.
        /// </summary>
        /// <param name="name">The file name to transform.</param>
        /// <returns>The transformed name.</returns>
        public string TransformFile(string name)
        {
            if (name != null)
            {
                string lowerName = name.ToLower();
                if ((this.trimPrefix_ != null) && (lowerName.IndexOf(this.trimPrefix_) == 0))
                {
                    name = name.Substring(this.trimPrefix_.Length);
                }

                // The following can throw exceptions when the name contains invalid characters
                if (Path.IsPathRooted(name))
                {
                    // NOTE:
                    // for UNC names...  \\machine\share\zoom\beet.txt gives \zoom\beet.txt
                    name = name.Substring(Path.GetPathRoot(name).Length);
                }

                name = name.Replace(@"\", "/");

                while ((name.Length > 0) && (name[0] == '/'))
                {
                    name = name.Remove(0, 1);
                }
            }
            else
            {
                name = string.Empty;
            }
            return name;
        }

        #endregion

        /// <summary>
        /// Test a name to see if it is a valid name for a zip entry.
        /// </summary>
        /// <param name="name">The name to test.</param>
        /// <param name="relaxed">If true checking is relaxed about windows file names and absolute paths.</param>
        /// <returns>Returns true if the name is a valid zip name; false otherwise.</returns>
        /// <remarks>Zip path names are actually in Unix format, and should only contain relative paths.
        /// This means that any path stored should not contain a drive or
        /// device letter, or a leading slash.  All slashes should forward slashes '/'.
        /// An empty name is valid for a file where the input comes from standard input.
        /// A null name is not considered valid.
        /// </remarks>
        public static bool IsValidName(string name, bool relaxed)
        {
            bool result = (name != null);

            if (result)
            {
                if (relaxed)
                {
                    result = name.IndexOfAny(InvalidEntryCharsRelaxed) < 0;
                }
                else
                {
                    result =
                        (name.IndexOfAny(InvalidEntryChars) < 0) &&
                        (name.IndexOf('/') != 0);
                }
            }

            return result;
        }

        /// <summary>
        /// Test a name to see if it is a valid name for a zip entry.
        /// </summary>
        /// <param name="name">The name to test.</param>
        /// <returns>Returns true if the name is a valid zip name; false otherwise.</returns>
        /// <remarks>Zip path names are actually in unix format,
        /// and should only contain relative paths if a path is present.
        /// This means that the path stored should not contain a drive or
        /// device letter, or a leading slash.  All slashes should forward slashes '/'.
        /// An empty name is valid where the input comes from standard input.
        /// A null name is not considered valid.
        /// </remarks>
        public static bool IsValidName(string name)
        {
            bool result =
                (name != null) &&
                (name.IndexOfAny(InvalidEntryChars) < 0) &&
                (name.IndexOf('/') != 0)
                ;
            return result;
        }

        #region Instance Fields

        private string trimPrefix_;

        #endregion

        #region Class Fields

        private static readonly char[] InvalidEntryChars = InitEntryChars( );
        private static char[] InitEntryChars( )
        {
#if NET_1_0 || NET_1_1 || NETCF_1_0
			char[] invalidPathChars = Path.InvalidPathChars;
#else
            char[] invalidPathChars = Path.GetInvalidPathChars( );
#endif
            int howMany = invalidPathChars.Length + 4;
            char[] result = new char[howMany];
            Array.Copy( invalidPathChars, 0, result, 0, invalidPathChars.Length );
            result[howMany - 1] = ':';
            result[howMany - 2] = '\\';
            result[howMany - 3] = '*';
            result[howMany - 4] = '?';
            return result;
        }
        private static readonly char[] InvalidEntryCharsRelaxed = InitEntryCharsRelaxed();
        private static char[] InitEntryCharsRelaxed( )
        {
#if NET_1_0 || NET_1_1 || NETCF_1_0
			char[] invalidPathChars = Path.InvalidPathChars;
#else
            char[] invalidPathChars = Path.GetInvalidPathChars( );
#endif
            int howMany = invalidPathChars.Length + 2;

            char[] result = new char[howMany];
            Array.Copy( invalidPathChars, 0, result, 0, invalidPathChars.Length );
            result[howMany - 1] = '*';
            result[howMany - 2] = '?';
            return result;
        }

        #endregion
    }
}