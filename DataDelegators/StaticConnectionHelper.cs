using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataDelegators
{
    public static class StaticConnectionHelper
    {
        private static string ConnectionString
        {
            get
            {
                //ConnectionStringSettingsCollection connectionStringSettings = ConfigurationManager.ConnectionStrings;
                //return connectionStringSettings["DataDelegators.Properties.Settings.ConnectionString"].ConnectionString;
                return "Dsn=DEV_MST;uid=db2tuser;pwd=12letmein;mode=SHARE;dbalias=DEV_MST";
            }
        }

        public static DataTable Select(OdbcCommand commandSql)
        {
            DataTable datTable = null;
            try
            {
                using (OdbcConnection connectionSql = new OdbcConnection(ConnectionString))
                {
                    commandSql.Connection = connectionSql;
                    commandSql.Connection.Open();
                    datTable = new DataTable();
                    datTable.Load(commandSql.ExecuteReader());
                    return datTable;
                }
            }
            finally
            {
                commandSql.Connection.Close();
                datTable = null;
            }
        }

        public static int Execute(OdbcCommand commandSql)
        {
            int rowsAffected = 0;
            using (OdbcConnection connectionSql = new OdbcConnection(ConnectionString))
            {
                commandSql.Connection = connectionSql;
                commandSql.Connection.Open();
                rowsAffected = commandSql.ExecuteNonQuery();
            }
            return rowsAffected;
        }

    }
}
