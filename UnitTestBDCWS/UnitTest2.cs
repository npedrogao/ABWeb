using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.DataWrapper;
using System.Data.SqlClient;
using DbExtensions;
using System.Collections.Generic;
using Core.Models;
using Core.DataWrapper;

namespace UnitTestBDCWS
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void TestMethod1()
        {
            DataManager.ModeFieldList();
        }
    }
}
