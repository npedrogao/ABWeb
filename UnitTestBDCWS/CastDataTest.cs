﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using Core.Utils;
using System.Linq;

namespace UnitTestBDCWS
{
    [TestClass]
    public class CastDataTest
    {
        [TestMethod]
        public void TestConversaoData()
        {
            string teste = CastUtil.InverteData("2017/10/23");
            Assert.IsTrue(teste.Equals("23/10/2017"));

            teste = CastUtil.InverteData(teste);
            Assert.IsTrue(teste.Equals("2017/10/23"));

            string teste2 = CastUtil.ToIntData(teste);
            Assert.IsTrue(teste2 == "20171023");

            teste2 = CastUtil.ToDiaMesAno(teste2);
            Assert.IsTrue(teste2 == "23102017");

            teste2 = CastUtil.ToAnoMesDia(teste2);
            Assert.IsTrue(teste2 == "20171023");
        }

        [TestMethod]
        public void TestIteradorEnumerado()
        {
        
            var aslist2 = EnumExtensions.EnumExtensions.ConvertEnumToListDescValue<Core.Models.H1971Enum>();

            var aslistxpto = EnumExtensions.EnumExtensions.ConvertEnumToListValueDesc<Core.Models.H1971Enum>();

            var tosco = EnumExtensions.EnumExtensions.ConvertEnumToListValueText<Core.Models.H1971Enum>();

        

        }
    }
}
