﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    //
    // Summary:
    //     Represents an open connection to a data source.
    public abstract class BaseDbConnection : IDisposable
    {  
        protected System.Data.Common.DbConnection dbCon;

        protected BaseDbConnection(string connectionString)
        {
            dbCon = GetNewConnection(connectionString);
            dbCon.Open();
        }

        public abstract System.Data.Common.DbConnection GetNewConnection(string conectionString);

        public abstract System.Data.Common.DbDataReader ExecSp(string spName, params System.Data.Common.DbParameter[] spParams);

        public abstract void OpenConnection();
        public abstract void Dispose();
    }
}
