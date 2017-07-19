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
            using (SqlDbConnection dbCon = new SqlDbConnection(@"Data Source=C301BTC005.corebus2.barclays.org\TC005,5660;Initial Catalog=catalogue;User Id=Catalogue;Password=p@$$w0rd;Integrated Security=False;MultipleActiveResultSets=True"))
            {
                List<ModelField> listOfFields = new List<ModelField>();
                
                dbCon.OpenConnection();
                SqlDataReader dr = dbCon.ExecSp("dbo.GetModelDb2Sp", new SqlParameter("@Ecra", "VC25C"));
                if (dr.HasRows)
                    while (dr.Read())
                    {
                        ModelField newField = new ModelField();

                        try {
                            newField.Ecran = dr.GetDbStr("Ecra");
                        } catch(Exception ex)
                        {

                        }

                        try
                        {
                            newField.CopyBook = dr.GetDbStr("CopyBook");
                        }
                        catch (Exception ex)
                        {
                            newField.Tamanho = dr.GetDbInt("Size");
                        }

                        try
                        {
                            string type = dr.GetDbStr("ValType");

                            switch (type)
                            {
                                case "STR":
                                    newField.Tipo = ModelField.TipoCampo.STRING;
                                    break;
                                case "DEC":
                                    newField.Tipo = ModelField.TipoCampo.DECIMAL;
                                    break;
                                case "DATA":
                                    newField.Tipo = ModelField.TipoCampo.DATA;
                                    break;
                                default:
                                    newField.Tipo = ModelField.TipoCampo.UNKNOWN;
                                    break;
                            }
                        }
                        catch (Exception ex) { }
                        finally
                        {
                            dbCon.Dispose();
                        };
                    }
            }                
        }
    }
}
