using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.Utils;

namespace UnitTestBDCWS
{
    [TestClass]
    public class TestCustomMaskValidations
    {
        [TestMethod]
        public void TestDateValidation()
        {
            bool isValid = ValidaUtil.ValidaData("2017/07/24");
            Assert.IsTrue(isValid);

            isValid = ValidaUtil.ValidaData("15/09/2010");
            Assert.IsTrue(isValid);

            isValid = ValidaUtil.ValidaData("2017/02/28");
            Assert.IsTrue(isValid);

            isValid = ValidaUtil.ValidaData("28/02/2017");
            Assert.IsTrue(isValid);

            bool notValid = ValidaUtil.ValidaData("2017/13/13");
            Assert.IsFalse(notValid);

            notValid = ValidaUtil.ValidaData("2017/02/29");
            Assert.IsFalse(notValid);

            notValid = ValidaUtil.ValidaData("2017/06/31");
            Assert.IsFalse(notValid);

            notValid = ValidaUtil.ValidaData("11/13/2017");
            Assert.IsFalse(notValid);
        }

        [TestMethod]
        public void TestHourValidation()
        {
            bool isValid = ValidaUtil.IsValidField("13:15", Core.Models.CustomMaskEnum.HoraMinuto);
            Assert.IsTrue(isValid);

            bool notValid = ValidaUtil.IsValidField("25:15", Core.Models.CustomMaskEnum.HoraMinuto);
            Assert.IsFalse(notValid);
        }

        [TestMethod]
        public void TestDecimalValidation()
        {
            bool isValid = ValidaUtil.IsValidField("13,555.111", 3, Core.Models.CustomMaskEnum.Decimal);
            Assert.IsTrue(isValid);

            isValid = ValidaUtil.IsValidField("13,55,5.111", 3, Core.Models.CustomMaskEnum.Decimal);
            Assert.IsTrue(isValid);

            isValid = ValidaUtil.IsValidField("13,55,5.11", 2, Core.Models.CustomMaskEnum.Decimal);
            Assert.IsTrue(isValid);

            bool notValid = ValidaUtil.IsValidField("13,55,5.111", 2, Core.Models.CustomMaskEnum.Decimal);
            Assert.IsFalse(notValid);
        }
    }
}
