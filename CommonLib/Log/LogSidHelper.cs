using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace CommonLib.Log
{
    /// <summary>
    /// Summary description for SidHelper.
    /// </summary>
    public class LogSidHelper
    {
        [DllImport("advapi32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        private static extern bool LookupAccountSid(
            [In, MarshalAs(UnmanagedType.LPTStr)] string systemName,
            IntPtr sid,
            [Out, MarshalAs(UnmanagedType.LPTStr)] StringBuilder name,
            ref int cbName,
            StringBuilder referencedDomainName,
            ref int cbReferencedDomainName,
            out int use);

        [DllImport("advapi32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        public static extern bool LookupAccountName(
            [In, MarshalAs(UnmanagedType.LPTStr)] string systemName,
            [In, MarshalAs(UnmanagedType.LPTStr)] string accountName,
            IntPtr sid,
            ref int cbSid,
            StringBuilder referencedDomainName,
            ref int cbReferencedDomainName,
            out int use);

        [DllImport("advapi32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        internal static extern bool ConvertSidToStringSid(
            IntPtr sid,
            [In, Out, MarshalAs(UnmanagedType.LPTStr)] ref string pStringSid);

        [DllImport("advapi32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        internal static extern bool ConvertStringSidToSid(
            [In, MarshalAs(UnmanagedType.LPTStr)] string pStringSid,
            ref IntPtr sid);

        public static string SidToName(string sid)
        {
            IntPtr _sid = IntPtr.Zero; //pointer to binary form of SID string.
            int _nameLength = 0; //size of object name buffer
            int _domainLength = 0; //size of domain name buffer
            int _use; //type of object

            StringBuilder _domain = new StringBuilder(); //domain name variable

            int _error;
            StringBuilder _name = new StringBuilder(); //object name variable

            //converts SID string into the binary form
            bool _rc0 = ConvertStringSidToSid(sid, ref _sid);

            if (_rc0 == false)
            {
                _error = Marshal.GetLastWin32Error();
                Marshal.FreeHGlobal(_sid);
                throw new Win32Exception(_error);
            }

            //first call of method returns the size of domain name 
            //and object name buffers
            LookupAccountSid(null, _sid, _name, ref _nameLength, _domain, ref _domainLength, out _use);
            _domain = new StringBuilder(_domainLength); //allocates memory for domain name
            _name = new StringBuilder(_nameLength); //allocates memory for object name

            bool _rc = LookupAccountSid(null, _sid, _name, ref _nameLength, _domain,
                                        ref _domainLength, out _use);

            if (!_rc)
            {
                _error = Marshal.GetLastWin32Error();
                Marshal.FreeHGlobal(_sid);
                throw new Win32Exception(_error);
            }
            Marshal.FreeHGlobal(_sid);
            return _domain + "\\" + _name;
        }

        public static string NameToSid(string name)
        {
            IntPtr _sid = IntPtr.Zero; //pointer to binary form of SID string.
            int _sidLength = 0; //size of SID buffer.
            int _domainLength = 0; //size of domain name buffer.
            int _use; //type of object.

            //stringBuilder for domain name.
            StringBuilder _domain = new StringBuilder();
            string _sidString = "";

            //first call of the function only returns the size 
            //of buffers (SID, domain name)
            LookupAccountName(null, name, _sid, ref _sidLength, _domain, ref _domainLength, out _use);
            int _error = Marshal.GetLastWin32Error();

            //error 122 (The data area passed to a system call is too small) 
            // normal behaviour.
            if (_error != 122)
            {
                throw new Win32Exception(_error);
            }
            //allocates memory for domain name

            _domain = new StringBuilder(_domainLength);
            //allocates memory for SID

            _sid = Marshal.AllocHGlobal(_sidLength);
            bool _rc = LookupAccountName(null, name, _sid, ref _sidLength, _domain,
                                         ref _domainLength, out _use);

            if (_rc == false)
            {
                _error = Marshal.GetLastWin32Error();
                Marshal.FreeHGlobal(_sid);
                throw new Win32Exception(_error);
            }

            // converts binary SID into string

            _rc = ConvertSidToStringSid(_sid, ref _sidString);
            if (_rc == false)
            {
                _error = Marshal.GetLastWin32Error();
                Marshal.FreeHGlobal(_sid);
                throw new Win32Exception(_error);
            }

            Marshal.FreeHGlobal(_sid);
            return _sidString;
        }
    }
}
