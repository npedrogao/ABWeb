using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public class SqlDbConnection : BaseDbConnection
    {
        private System.Data.SqlClient.SqlConnection currentCon;

        public SqlDbConnection(string connectionString) : base(connectionString)
        {
            currentCon = new System.Data.SqlClient.SqlConnection(connectionString);
        }

        public override void Dispose()
        {
            try
            {
                base.dbCon.Dispose();
            }
            catch(Exception ex)
            {
                Logging.LoggingHelper.LogException(ex.Message, Logging.LoggingType.Fatal, ex);
            }
        }

        /// <summary>
        /// Execute stored procedure of given spName and with parameters
        /// </summary>
        /// <param name="spName"></param>
        /// <param name="spParams">Parameters of different types</param>
        /// <returns>SqlDataReader object where you can read the SP output</returns>
        public SqlDataReader ExecSp(string spName, params SqlParameter[] spParams)
        {           
            SqlCommand cmnd = new SqlCommand(spName);

            cmnd.Parameters.AddRange(spParams);
            cmnd.CommandType = System.Data.CommandType.StoredProcedure;
            cmnd.Connection = currentCon;
            cmnd.Connection.Open();
            return cmnd.ExecuteReader();
        }

        public override DbConnection GetNewConnection(string conectionString)
        {
            return new System.Data.SqlClient.SqlConnection(conectionString);
        }

        public override void OpenConnection()
        {
            if(dbCon.State == System.Data.ConnectionState.Open)
            {
                dbCon.Close();
            }

            base.dbCon.Open();
        }
    }
}
