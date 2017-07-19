using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public abstract class BaseDbConnection : IDisposable
    {

        protected System.Data.Common.DbConnection dbCon;

        public BaseDbConnection(string connectionString)
        {
            dbCon = GetNewConnection(connectionString);
            dbCon.Open();
        }

        public abstract System.Data.Common.DbConnection GetNewConnection(string conectionString);

        public abstract void OpenConnection();
        public abstract void Dispose();
    }
}
