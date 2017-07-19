using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.DataWrapper;
using System.Data;

namespace UnitTestBDCWS
{
    [TestClass]
    public class TransactionModelTest
    {
        [TestMethod]
        public void TestMethod1()
        {

            var odbc = new DataAccess();
            //DataTable dt = odbc.TB196("ConnectionStringMaster");
            DataTable dt = odbc.TB142("ConnectionStringMaster");
            Console.Out.WriteLine("dt");
        }
    }
}
