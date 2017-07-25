using System;
using System.Data.Odbc;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.Common;

namespace Core.DataWrapper
{
    public class BaseOdbcDbConnection
    {
        protected int MAX_LIST_SIZE = 60;

        private System.Data.Odbc.OdbcConnection currentCon = null;
        private OdbcTransaction transact = null;
        private readonly string connectionName;

        public BaseOdbcDbConnection(string connectionName)
        {
            this.connectionName = connectionName;
        }

        public OdbcCommand getDbCommand(string connectionName, string sqlString = null)
        {
            OdbcCommand dbCom = new OdbcCommand(sqlString, getConnection(connectionName));
            return dbCom;
        }

        public OdbcConnection getConnection(string connectionName)
        {
            if (currentCon == null)
            {
                try
                {
                    currentCon = new OdbcConnection(ManageConnections.getConnectionString(connectionName));
                    currentCon.Open();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: Failed to create a database connection. \n{0}", ex.Message);
                    throw ex;
                }
            }
            else if (currentCon.State == System.Data.ConnectionState.Closed)
            {
                currentCon.Open();
            }
            return currentCon;
        }

        public OdbcTransaction beginTransaction(string connectionName)
        {
            try
            {
                if (getConnection(connectionName) != null)
                {
                    transact = getConnection(connectionName).BeginTransaction();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to begin transaction in a database connection. \n{0}", ex.Message);
                throw ex;
            }
            return transact;
        }

        public void commit()
        {
            try
            {
                if (currentCon != null && transact != null)
                {
                    transact.Commit();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to commit transaction. \n{0}", ex.Message);
                throw ex;
            }
            finally
            {
                closeConnection();
            }
        }

        public void rollback()
        {
            try
            {
                if (currentCon != null && transact != null)
                {
                    transact.Rollback();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to rollback transaction. \n{0}", ex.Message);
            }
            finally
            {
                closeConnection();
            }
        }

        public OdbcDataReader executeReader(string sqlString)
        {
            OdbcDataReader OdbcDataReader = null;
            try
            {
                OdbcCommand OdbcDdCommand = getDbCommand(sqlString);
                OdbcDataReader = OdbcDdCommand.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw new Exception("Unable to Execute Query (Error: " + ex.Message.ToString() + ")");
            }
            return OdbcDataReader;
        }

        public OdbcCommand createCommand(string connectionName, int timeout = 0)
        {
            try
            {
                OdbcCommand OdbcCommand = getDbCommand(connectionName);
                OdbcCommand.CommandTimeout = (timeout == 0 ? Convert.ToInt32(ConfigurationManager.AppSettings["DefaultCommandTimeout"]) : timeout);
                return OdbcCommand;
            }
            catch (Exception ex)
            {
                throw new Exception("Unable to PrepareCommand Query (Error: " + ex.Message.ToString() + ")");
            }
        }

        public void closeReader(OdbcDataReader reader)
        {
            try
            {
                if (reader != null)
                {
                    reader.Close();
                    reader.Dispose();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to close reader. \n{0}", ex.Message);
            }
        }

        public void closeCommand(OdbcCommand command)
        {
            try
            {
                if (command != null)
                {
                    command.Dispose();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to close reader. \n{0}", ex.Message);
            }
        }

        public void closeConnection()
        {
            try
            {
                if (currentCon != null/* && currentCon.State != System.Data.ConnectionState.Closed*/)
                {
                    currentCon.Close();
                    currentCon = null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to close a database connection. \n{0}", ex.Message);
            }
        }


    }
}
