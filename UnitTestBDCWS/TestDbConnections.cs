using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.DataWrapper;
using System.Data.SqlClient;
using DbExtensions;
using System.Collections.Generic;
using Core.Models;
using System.Data;

namespace UnitTestBDCWS
{
    [TestClass]
    public class TestDbConnections
    {
        [TestMethod]
        public void TestCatalogueDbConnection()
        {
            // arrange
            string transactionName = @"AP69C";
            string connectionString = @"Data Source = C301BTC005.corebus2.barclays.org\TC005,5660; Initial Catalog = catalogue; User Id = Catalogue; Password = p@$$w0rd; Integrated Security = False; MultipleActiveResultSets = True";

            // act           
            SqlDbConnection dbConn = new SqlDbConnection(connectionString);
            List<ModelField> listToTest = CatalogueDAL.GetModelDb2(transactionName, dbConn);

            // assert
            Assert.IsNotNull(dbConn);
            Assert.IsTrue(listToTest.Count > 0);
        }

        [TestMethod]
        public void TestDb2Connection()
        {
            // arrange
            string connectionString = @"Dsn=DEV_MST;uid=db2tuser;mode=SHARE;dbalias=DEV_MST;pwd=12letmein";
            //CELEMTAB1, GELEM30, CELEMTAB2, CELEMTAB3, NELEMC01, NELEMC02, NELEMC03, NELEMC04, NELEMC05, NELEMC06, NELEMC07
            string[] colunas = new string[4] { "CELEMTAB1", "GELEM30", "NELEMC02", "NELEMC04" };
            OdbcDbConnection dbConn = new OdbcDbConnection(connectionString);

            // act           
            DataTable tabela = Db2DAL.GetDb2Table(TabelaEnum.TB196, dbConn, colunas);

            // assert
            Assert.IsTrue(colunas.Length == tabela.Columns.Count);
        }
    }
}
