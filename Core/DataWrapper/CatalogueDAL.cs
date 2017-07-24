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
    /// <summary>
    /// Classe que representa um objecto da camada de acesso aos dados.
    /// </summary>
    public static class CatalogueDAL
    {
        public static List<ModelField> GetModelDb2(string ecra, BaseDbConnection dbConnection)
        {
            List<ModelField> lst = new List<ModelField>();

            if (String.IsNullOrWhiteSpace(Properties.Settings.Default.ConnectionStringCatalogue))
            {
                Logging.LoggingHelper.LogEvent("Properties.Settings.Default.ConnectionStringCatalogue is null or empty!", Logging.LoggingType.Warning);
                return null;
            }

            SqlDataReader dr = (SqlDataReader)dbConnection.ExecSp("dbo.GetModelDb2Sp", new SqlParameter("@Ecra", ecra));
            try
            {
                if (dr.HasRows)
                    while (dr.Read())
                    {
                        ModelField newField = new ModelField();

                        newField.Ecran = dr.GetDbStr("Ecra");
                        newField.CopyBook = dr.GetDbStr("CopyBook");

                        var size = dr.GetDbIntNull("Tamanho");
                        if (size.HasValue)
                            newField.Tamanho = size;

                        var tabID = dr.GetDbIntNull("TabelaId");
                        if (tabID.HasValue)
                            newField.Tabela = (TabelaEnum)tabID;

                        newField.ValidaCol = dr.GetDbStr("IDCol");

                        newField.DescricaoLbl = dr.GetDbStr("Descritivo");
                        newField.DescCol = dr.GetDbStr("DescCol");

                        var decSize = dr.GetDbIntNull("CasasDecimais");
                        if (decSize.HasValue)
                            newField.CasasDecimais = decSize;

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
                            case "CUST":
                                newField.TipoDeCampo = TipoCampoEnum.CustomMask;
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

            return lst;
        }
    }
}
