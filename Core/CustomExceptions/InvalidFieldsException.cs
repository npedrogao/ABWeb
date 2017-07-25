using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Text;

namespace Core.CustomExceptions
{
    public class InvalidFieldsException : Exception
    {
        public InvalidFieldsException(string errorLst) : base(String.Format("Campos errados: {0}", errorLst)) {}
    }
}
