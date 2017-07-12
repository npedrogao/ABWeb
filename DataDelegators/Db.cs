using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataDelegators
{
    public static class Db
    {
        static IDb db = GetDbInstance();

        public static object MySQL { get; private set; }
        public static object JET { get; private set; }

        static IDb GetDbInstance()
        {
            // get these two from config file or somewhere
            string connectionString = GetConnectionString();
            var driver = GetDbType();   // your logic to decide which db is being used

            // some sort of estimation of your db
            if (driver == SqlByte)
                return new Db<SQLiteConnection>(connectionString);
            else if (driver == MySQL)
                return new Db<SqlConnection>(connectionString);
            else if (driver == JET)
                return new Db<OleDbConnection>(connectionString);
            //etc

            return null;
        }

        private static object GetDbType()
        {
            throw new NotImplementedException();
        }

        private static string GetConnectionString()
        {
            return "DSN=SAMPLE_ISAM";
        }

        public static void Parameterize(this IDbCommand command, string name,
                                        object value)
        {
            var parameter = command.CreateParameter();
            parameter.ParameterName = name;
            parameter.Value = value;
            command.Parameters.Add(parameter);
        }

        public static IEnumerable<T> Get<T>(string query,
                                            Action<IDbCommand> parameterizer,
                                            Func<IDataRecord, T> selector)
        {
            return db.Get(query, parameterizer, selector);
        }

        public static int Add(string query, Action<IDbCommand> parameterizer)
        {
            return db.Add(query, parameterizer);
        }

        public static int Save(string query, Action<IDbCommand> parameterizer)
        {
            return db.Save(query, parameterizer);
        }

        public static int SaveSafely(string query, Action<IDbCommand> parameterizer)
        {
            return db.SaveSafely(query, parameterizer);
        }
    }
}
