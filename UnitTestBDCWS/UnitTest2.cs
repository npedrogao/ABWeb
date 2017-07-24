using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.Utils;

namespace UnitTestBDCWS
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void TestConversaoData()
        {
            string teste = ConvertUtil.InverteData("2017/10/23");
            Assert.IsTrue(teste.Equals("23/10/2017"));

            teste = ConvertUtil.InverteData(teste);
            Assert.IsTrue(teste.Equals("2017/10/23"));
        }
    }
}
