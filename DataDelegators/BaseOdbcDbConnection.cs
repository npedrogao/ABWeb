using System;
using System.Data.Odbc;
using System.Collections.Generic;
using System.Data;

namespace DataDelegators
{
    public class BaseOdbcDbConnection
    {
        protected int MAX_LIST_SIZE = 60;

        private OdbcConnection _conn = null;
        private OdbcTransaction transact = null;

        public BaseOdbcDbConnection()
        {
        }

        public OdbcCommand getDbCommand(string connectionName, string sqlString = null)
        {
            OdbcCommand dbCom = new OdbcCommand(sqlString, getConnection(connectionName));
            return dbCom;
        }

        public OdbcConnection getConnection(string connectionName)
        {
            if (_conn == null)
            {
                try
                {
                    _conn = new OdbcConnection(ManageConnections.getConnectionString(connectionName));
                    _conn.Open();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: Failed to create a database connection. \n{0}", ex.Message);
                    throw ex;
                }
            }
            else if (_conn.State == System.Data.ConnectionState.Closed)
            {
                _conn.Open();
            }
            return _conn;
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
                if (_conn != null && transact != null)
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
                if (_conn != null && transact != null)
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
                OdbcCommand.CommandTimeout = (timeout == 0 ? Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["DefaultCommandTimeout"]) : timeout);
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
                if (_conn != null/* && _conn.State != System.Data.ConnectionState.Closed*/)
                {
                    _conn.Close();
                    _conn = null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: Failed to close a database connection. \n{0}", ex.Message);
            }
        }

    }
}
