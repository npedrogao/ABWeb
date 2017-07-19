using Core.Logging;
using Core.Models;
using DbExtensions;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public static class DataManager
    {
        public static List<ModelField> ModeFieldList()
        {
            try
            {
                LogUtils.Enter();
                List<ModelField> listOfFields = new List<ModelField>();

                if (String.IsNullOrWhiteSpace(Properties.Settings.Default.ConnectionStringCatalogue))
                {
                    Logging.LoggingHelper.LogEvent("Properties.Settings.Default.ConnectionStringCatalogue is null or empty!", Logging.LoggingType.Warning);
                    return null;
                }

                using (SqlDbConnection dbCon = new SqlDbConnection(Properties.Settings.Default.ConnectionStringCatalogue))
                {

                    SqlDataReader dr = dbCon.ExecSp("dbo.GetModelDb2Sp", new SqlParameter("@Ecra", "VC25C"));

                    if (dr.HasRows)
                        while (dr.Read())
                        {
                            ModelField newField = new ModelField();

                            try
                            {
                                newField.Ecran = dr.GetDbStr("Ecra");
                                newField.CopyBook = dr.GetDbStr("CopyBook");
                                newField.Tamanho = dr.GetDbInt("Size");
                                newField.TabelaId = dr.GetDbStr("TblID");

                                switch (dr.GetDbStr("ValType"))
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
                                    case "CMB":
                                        newField.Tipo = ModelField.TipoCampo.DATA;
                                        break;
                                    default:
                                        newField.Tipo = ModelField.TipoCampo.UNKNOWN;
                                        break;
                                }
                            }
                            catch (InvalidCastException ex)
                            {
                                Logging.LoggingHelper.LogException(ex.Message, Logging.LoggingType.Error, ex);
                                LogUtils.Error(ex);
                                throw ex;
                            }
                        }
                }

                return listOfFields;
            }
            catch (Exception ex)
            {
                LogUtils.Error(ex);
                throw ex;
            }
            finally
            {
                LogUtils.Leave();
            }            
        }
    }
}
