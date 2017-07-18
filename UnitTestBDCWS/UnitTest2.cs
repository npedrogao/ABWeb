using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.DataWrapper;
using System.Data.SqlClient;
using DbExtensions;
using System.Collections.Generic;
using Core.Models;

namespace UnitTestBDCWS
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void TestMethod1()
        {
            using (SqlDbConnection dbCon = new SqlDbConnection("Server=C301BTC005.corebus2.barclays.org\TC005,5660;Database=catalogue;User Id=Catalogue;p@$$w0rd"))
            {
            //    List<ModelField> 
            //    SqlDataReader dr = dbCon.ExecSp("GetModelDb2Sp", new SqlParameter("Ecra", "VC25C"));
            //    if(dr.HasRows)
            //        while(dr.NextResult())
            //        {
            //            dr.GetDbStr("CopyBook");
            //        }
            //}

                
        }
    }
}
