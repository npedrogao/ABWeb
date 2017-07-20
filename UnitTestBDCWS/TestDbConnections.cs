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
    public class TestDbConnections
    {
        [TestMethod]
        public void TestCatalogueDbConnection()
        {
            // arrange
            string transactionName = @"AP69";
            string connectionString = @"Data Source = C301BTC005.corebus2.barclays.org\TC005,5660; Initial Catalog = catalogue; User Id = Catalogue; Password = p@$$w0rd; Integrated Security = False; MultipleActiveResultSets = True";
            SqlDbConnection dbConn = new SqlDbConnection(connectionString);
            
            // act           
            List<ModelField> listToTest = CatalogueDAL.GetModelDb2(transactionName, dbConn);

            // assert
            Assert.IsNotNull(dbConn);
            Assert.IsTrue(listToTest.Count > 0);
        }
    }
}
