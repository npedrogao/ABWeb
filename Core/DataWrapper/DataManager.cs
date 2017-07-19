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
        public static List<ModelField> ModelFieldList(string ecra)
        {
            try
            {
                LogUtils.Enter();
                List<ModelField> lst = new List<ModelField>();

                if (String.IsNullOrWhiteSpace(Properties.Settings.Default.ConnectionStringCatalogue))
                {
                    Logging.LoggingHelper.LogEvent("Properties.Settings.Default.ConnectionStringCatalogue is null or empty!", Logging.LoggingType.Warning);
                    return null;
                }

                using (SqlDbConnection dbCon = new SqlDbConnection(Properties.Settings.Default.ConnectionStringCatalogue))
                {

                    SqlDataReader dr = dbCon.ExecSp("dbo.GetModelDb2Sp", new SqlParameter("@Ecra", ecra));
                    try
                    {
                        if (dr.HasRows)
                        while (dr.Read())
                        {
                            ModelField newField = new ModelField();
                                
                            newField.Ecran = dr.GetDbStr("Ecra");
                            newField.CopyBook = dr.GetDbStr("CopyBook");
                            newField.Tamanho = dr.GetDbInt("Tamanho");
                            var tabID = dr.GetDbIntNull("TabelaID");
                            if (tabID.HasValue)
                                newField.Tabela = (TabelaEnum)tabID;

                            newField.ValidaCol = dr.GetDbStr("ValidaCol");
                            newField.DescricaoLbl = dr.GetDbStr("Descritivo");
                            var validaTb = dr.GetDbIntNull("ValidaTblID");
                            if (validaTb.HasValue)
                                newField.ValidaTab = (TabelaEnum) validaTb;

                            switch (dr.GetDbStr("ValType"))
                            {
                                case "STR":
                                    newField.TipoDeCampo = TipoCampoEnum.String;
                                    break;
                                case "DEC":
                                    newField.TipoDeCampo = TipoCampoEnum.Decimal;
                                    break;
                                case "DATA":
                                    newField.TipoDeCampo = TipoCampoEnum.Data;
                                    break;
                                case "CMB":
                                    newField.TipoDeCampo = TipoCampoEnum.ComboBox;
                                    break;
                                default:                                        
                                    break;
                            }
                            lst.Add(newField);
                        }
                    }
                    catch (InvalidCastException ex)
                    {
                        Logging.LoggingHelper.LogException(ex.Message, Logging.LoggingType.Error, ex);
                        LogUtils.Error(ex);
                        throw ex;
                    }
                }

                return lst;
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
