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
            currentCon = (System.Data.SqlClient.SqlConnection)dbCon;
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

        /// <summary>
        /// Execute stored procedure of given spName and with parameters
        /// </summary>
        /// <param name="spName"></param>
        /// <param name="spParams">Parameters of different types</param>
        /// <returns>SqlDataReader object where you can read the SP output</returns>
        public override DbDataReader ExecSp(string spName, params DbParameter[] spParams)
        {
            SqlCommand cmnd = new SqlCommand(spName);

            cmnd.Parameters.AddRange(spParams);
            cmnd.CommandType = System.Data.CommandType.StoredProcedure;
            cmnd.Connection = currentCon;

            return cmnd.ExecuteReader();
        }

        public override void Dispose()
        {
            try
            {
                base.dbCon.Dispose();
            }
            catch (Exception ex)
            {
                Logging.LoggingHelper.LogException(ex.Message, Logging.LoggingType.Fatal, ex);
            }
        }
    }
}
