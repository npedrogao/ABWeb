using Core.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
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

        public DataTable GetDataByProjectAndType(string tipo, int prj_id, string connectionName)
        {
            LogUtils.Enter();
            OdbcDataReader reader = null;
            OdbcCommand command = null;
            StringBuilder destination = new StringBuilder();
            DataTable dataTable = new DataTable();

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

                command = createCommand(connectionName);
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
                closeReader(reader);
                closeCommand(command);
                closeConnection();
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

            try
            {
                StringBuilder Query = new StringBuilder();
                Query.Append("SELECT ");
                Query.Append(" CDOMINIO, ");
                Query.Append(" CUSERNAME ");
                Query.Append("FROM DB2PTUSER.PROC_REF_DATA ");
                Query.Append("WHERE CUSERNAME = '" + userAB + "'");

                command = createCommand(connectionName);
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
                closeReader(reader);
                closeCommand(command);
                closeConnection();
                LogUtils.Leave();
            }
        }


        //public DataTable GetFieldsByScreen(string userAB, string connectionName, string screen)
        //{
        //    LogUtils.Enter();
        //    SqlDataReader reader = null;
        //    SqlCommand command = null;
        //    StringBuilder destination = new StringBuilder();
        //    DataTable dataTable = new DataTable();

        //    try
        //    {
        //        command = createCommand(connectionName);
        //        command.CommandText = "ModelDb2Tbl.SP_GetFieldsByScreen";
        //        command.CommandType = CommandType.StoredProcedure;
        //        command.Parameters.AddWithValue("Ecra", screen);

        //        using (command.Connection)
        //        {
        //            command.Connection.Open();
        //            dataTable.Load(command.ExecuteReader());
        //        }

        //        return dataTable;

        //    }
        //    catch (Exception e)
        //    {
        //        LogUtils.Error(e);
        //        throw e;
        //    }
        //    finally
        //    {
        //        closeReader(reader);
        //        closeCommand(command);
        //        closeConnection();
        //        LogUtils.Leave();
        //    }
        //}
    }
}