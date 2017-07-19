using Core.Logging;
using Core.Models;
using DbExtensions;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Text;
using System.Web;

namespace Core.DataWrapper
{
    public class DataAccess : BaseOdbcDbConnection
    {
        public const string BRANCHPTCONN = "ConnectionStringBranchPT";
        public const string MASTERCONN = "ConnectionStringMaster";
        public const string ABLCONN = "ConnectionStringABL";
        public const string CATALOGUECONN = "ConnectionStringCatalogue";

        public DataTable TB142(string connectionName)
        {
            LogUtils.Enter();
            BaseOdbcDbConnection dbConnection = new BaseOdbcDbConnection(connectionName);
            OdbcDataReader reader = null;
            OdbcCommand command = null;
            StringBuilder destination = new StringBuilder();
            DataTable dataTable = new DataTable();

            try
            {

                command = dbConnection.createCommand(connectionName);
                StringBuilder sqlQuery = new StringBuilder(@"SELECT *
FROM         DB2PTUSER.TB196");

                command.CommandText = sqlQuery.ToString();
                reader = command.ExecuteReader();

                dataTable.Load(reader);

                return dataTable;

            }
            catch (Exception e)
            {
                LogUtils.Error(e);
                throw e;
            }
            finally
            {
                dbConnection.closeReader(reader);
                dbConnection.closeCommand(command);
                dbConnection.closeConnection();
                LogUtils.Leave();
            }
        }

        public DataTable TB196(string connectionName)
        {
            LogUtils.Enter();
            OdbcDataReader reader = null;
            OdbcCommand command = null;
            StringBuilder destination = new StringBuilder();
            DataTable dataTable = new DataTable();
            BaseOdbcDbConnection dbConnection = new BaseOdbcDbConnection(connectionName);
            try
            {

                command = dbConnection.createCommand(connectionName);
                StringBuilder sqlQuery = new StringBuilder(@"SELECT     CELEMTAB1, GELEM30, CELEMTAB2, CELEMTAB3, NELEMC01, NELEMC02, NELEMC03, NELEMC04, NELEMC05, NELEMC06, NELEMC07, 
                      NELEMC08, NELEMC09, NELEMC10, NELEMC11, NELEMC12, NELEMC13, NELEMC14, NELEMC15
FROM         DB2PTUSER.TB196");

                command.CommandText = sqlQuery.ToString();
                reader = command.ExecuteReader();

                dataTable.Load(reader);

                return dataTable;

            }
            catch (Exception e)
            {
                LogUtils.Error(e);
                throw e;
            }
            finally
            {
                dbConnection.closeReader(reader);
                dbConnection.closeCommand(command);
                dbConnection.closeConnection();
                LogUtils.Leave();
            }
        }


        public DataTable GetDataByProjectAndType(string tipo, int prj_id, string connectionName)
        {
            LogUtils.Enter();
            OdbcDataReader reader = null;
            OdbcCommand command = null;
            StringBuilder destination = new StringBuilder();
            DataTable dataTable = new DataTable();
            BaseOdbcDbConnection dbConnection = new BaseOdbcDbConnection(connectionName);
            try
            {
                StringBuilder Query = new StringBuilder();
                Query.Append("SELECT ");
                Query.Append(" PR_TIPO, ");
                Query.Append(" PR_SUBTIPO, ");
                Query.Append(" PR_CHAVE, ");
                Query.Append(" PR_SUBCHAVE, ");
                Query.Append(" PR_VALOR, PR_SUBVALOR, PR_CONDICAO, PR_OBS, PR_ACTIVO, PR_USER, PR_DATA_ALTERACAO, PR_ORDEM, PR_PRJ_ID ");
                Query.Append("FROM DB2PTUSER.PROC_REF_DATA ");
                Query.Append("WHERE PR_PRJ_ID IN(" + prj_id + ") and PR_ACTIVO = 1 and PR_TIPO in ('" + tipo + "')");

                command = dbConnection.createCommand(connectionName);
                StringBuilder sqlQuery = new StringBuilder();
                sqlQuery.Append(Query);

                command.CommandText = sqlQuery.ToString();
                reader = command.ExecuteReader();

                dataTable.Load(reader);

                return dataTable;

            }
            catch (Exception e)
            {
                LogUtils.Error(e);
                throw e;
            }
            finally
            {
                dbConnection.closeReader(reader);
                dbConnection.closeCommand(command);
                dbConnection.closeConnection();
                LogUtils.Leave();
            }
        }

        public DataTable GetDataByUserAB(string userAB, string connectionName)
        {
            LogUtils.Enter();
            OdbcDataReader reader = null;
            OdbcCommand command = null;
            StringBuilder destination = new StringBuilder();
            DataTable dataTable = new DataTable();
            BaseOdbcDbConnection dbConnection = new BaseOdbcDbConnection(connectionName);
            try
            {
                StringBuilder Query = new StringBuilder();
                Query.Append("SELECT ");
                Query.Append(" CDOMINIO, ");
                Query.Append(" CUSERNAME ");
                Query.Append("FROM DB2PTUSER.PROC_REF_DATA ");
                Query.Append("WHERE CUSERNAME = '" + userAB + "'");

                command = dbConnection.createCommand(connectionName);
                StringBuilder sqlQuery = new StringBuilder();
                sqlQuery.Append(Query);

                command.CommandText = sqlQuery.ToString();
                reader = command.ExecuteReader();

                dataTable.Load(reader);

                return dataTable;

            }
            catch (Exception e)
            {
                LogUtils.Error(e);
                throw e;
            }
            finally
            {
                dbConnection.closeReader(reader);
                dbConnection.closeCommand(command);
                dbConnection.closeConnection();
                LogUtils.Leave();
            }
        }     
    }
}