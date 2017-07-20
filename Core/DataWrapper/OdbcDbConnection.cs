using Core.Models;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.Odbc;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public class OdbcDbConnection : BaseDbConnection
    {
        private System.Data.Odbc.OdbcConnection currentCon;

        public OdbcDbConnection(string connectionString) : base(connectionString)
        {
            currentCon = (System.Data.Odbc.OdbcConnection)dbCon;
        }

        public OdbcDataReader ExecSql(TabelaEnum tabela, string whereClause, params string[] colunas)
        {
            if (tabela == TabelaEnum.NULL)
                throw new ArgumentException("Necessário indicar tabela DB2!");

            StringBuilder query = new StringBuilder();
            query.Append("SELECT ");

            if (colunas?.Length > 0)
            {
                foreach (string coluna in colunas)
                {
                    query.Append(coluna.Trim());
                    query.Append(", ");
                }
                query.Remove(query.Length - 2, 2);
            } else
            {
                query.Append(" * ");
            }
             
            query.Append(" FROM ");
            query.Append("DB2PTUSER.");
            query.Append(tabela);

            OdbcCommand cmnd = new OdbcCommand();
            cmnd.CommandType = System.Data.CommandType.Text;
            cmnd.CommandText = query.ToString();
            cmnd.Connection = currentCon;

            return cmnd.ExecuteReader();
        }

        public override DbConnection GetNewConnection(string conectionString)
        {
            return new System.Data.Odbc.OdbcConnection(conectionString);
        }

        public override void OpenConnection()
        {
            if (dbCon.State == System.Data.ConnectionState.Open)
            {
                dbCon.Close();
            }

            base.dbCon.Open();
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

        public override DbDataReader ExecSp(string spName, params DbParameter[] spParams)
        {
            if (String.IsNullOrWhiteSpace(spName))
                throw new ArgumentNullException("Stored procedure name is null or empty!");

            OdbcCommand cmnd = new OdbcCommand(spName);

            if (spParams.Length > 0)
                cmnd.Parameters.AddRange(spParams);

            cmnd.CommandType = System.Data.CommandType.StoredProcedure;
            cmnd.Connection = currentCon;

            return cmnd.ExecuteReader();
        }
    }
}
