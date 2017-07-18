using Core.Logging;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public class BaseSqlDbConnection
    {
        protected int MAX_LIST_SIZE = 60;

        private SqlConnection _conn = null;
        private SqlTransaction transact = null;

        public BaseSqlDbConnection()
        {

        }
        
        public SqlCommand getDbCommand(string connectionName, string sqlString = null)
        {
            SqlCommand dbCom = new SqlCommand(sqlString, getConnection(connectionName));
            return dbCom;
        }

        public SqlConnection getConnection(string connectionName)
        {
            if (_conn == null)
            {
                try
                {
                    _conn = new SqlConnection(ManageConnections.getConnectionString(connectionName));
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

        public SqlTransaction beginTransaction(string connectionName)
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

        public SqlDataReader executeReader(string sqlString)
        {
            SqlDataReader sqlDataReader = null;
            try
            {
                SqlCommand sqlCommand = getDbCommand(sqlString);
                sqlDataReader = sqlCommand.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw new Exception("Unable to Execute Query (Error: " + ex.Message.ToString() + ")");
            }
            return sqlDataReader;
        }

        public SqlCommand createCommand(string connectionName, int timeout = 0)
        {
            try
            {
                SqlCommand sqlCommand = getDbCommand(connectionName);
                sqlCommand.CommandTimeout = (timeout == 0 ? Convert.ToInt32(ConfigurationManager.AppSettings["DefaultCommandTimeout"]) : timeout);
                return sqlCommand;
            }
            catch (Exception ex)
            {
                throw new Exception("Unable to PrepareCommand Query (Error: " + ex.Message.ToString() + ")");
            }
        }

        public void closeReader(SqlDataReader reader)
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

        public void closeCommand(SqlCommand command)
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
