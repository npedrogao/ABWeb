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
    public class DbConnectionsTest
    {
        [TestMethod]
        public void TestCatalogueDbConnection()
        {
            // arrange
            List<string> transactions = new List<string>();
            transactions.Add("TI97");
            transactions.Add("TI97C");
            transactions.Add("TI97A");
            transactions.Add("TI97M");
            transactions.Add("CA29");
            transactions.Add("TI97V");
            transactions.Add("CA29C");
            List<ModelField> listToTest;

            string connectionString = @"Data Source = C301BTC005.corebus2.barclays.org\TC005,5660; Initial Catalog = catalogue; User Id = Catalogue; Password = p@$$w0rd; Integrated Security = False; MultipleActiveResultSets = True";

            // act           
            using (SqlDbConnection dbConn = new SqlDbConnection(connectionString))
            {
                
                foreach (string transaction in transactions)
                {
                  listToTest = CatalogueDAL.GetModelDb2(transaction, dbConn);

                    // assert
                    Assert.IsNotNull(dbConn);
                    Assert.IsTrue(listToTest.Count > 0);
                }                
            }             
        }

        [TestMethod]
        public void TestDb2TablesConnection()
        {
            // arrange
            List<string> transactions = new List<string>();
            transactions.Add("TB026");
            transactions.Add("TB088");
            transactions.Add("TB192");
            transactions.Add("TB196");
            transactions.Add("TB234");
            transactions.Add("TB061");
            transactions.Add("TB018");
            DataTable tabela;

            string connectionString = @"Dsn=DEV_MST;uid=db2tuser;mode=SHARE;dbalias=DEV_MST;pwd=12letmein";

            // act           
            using (OdbcDbConnection dbConn = new OdbcDbConnection(connectionString))
            {

                foreach (string transaction in transactions)
                {
                    tabela = Db2DAL.GetDb2Table(TabelaEnum.TB196, dbConn, null);

                    // assert
                    Assert.IsNotNull(dbConn);
                    Assert.IsTrue(tabela.Columns.Count > 0);
                }
            }
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

        [TestMethod]
        public void TestGetErrorCodesFromDb2()
        {
            List<ErrorCodeModel> lista;
            // arrange
            string connectionString = @"Dsn=DEV_MST;uid=db2tuser;mode=SHARE;dbalias=DEV_MST;pwd=12letmein";            
       

            // act           
            using (OdbcDbConnection dbConn = new OdbcDbConnection(connectionString))
            {
                lista = Db2DAL.GetErrorCodeByHelpId(dbConn, "ARGS");
            }

            // assert
            Assert.IsTrue(lista.Count == 2);
        }
    }
}
