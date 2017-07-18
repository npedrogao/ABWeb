using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DbExtensions
{
    public static class DbExtensions
    {
        public static String GetDbStr(this SqlDataReader reader, string colName)
        {
            return (reader[colName] as string);
        }
    }
}
