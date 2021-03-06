﻿using System.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EnumExtensions;
using Core.DataWrapper;
using Core.WebExtensions;
using System.Data.Odbc;
using System.Text;
using Core.Utils;
using Core.CustomExceptions;

namespace Core.Models
{
    public static class CatalogueModel
    {
        /// <summary>
        /// Applys the model definitions to page
        /// </summary>
        /// <param name="page"></param>
        public static void ApplyModel(System.Web.UI.Page page, ref StringBuilder js, params string[] jsFunctionNames)
        {
            string transactionName, errorLst = null;
            System.Web.UI.Control placeHolder;

            transactionName = page.Request.QueryString["transacao"];
            placeHolder = page.Master.FindControl("CPH");

            try
            {
                using (OdbcDbConnection db2Con = new OdbcDbConnection("Dsn=DEV_MST;uid=db2tuser;mode=SHARE;dbalias=DEV_MST;pwd=12letmein"))
                {
                    errorLst = IterateModelElements(placeHolder, transactionName, db2Con, ref js, jsFunctionNames);
                }
            }
            catch (Exception)
            {
                if (errorLst != null && errorLst.Length > 0)
                    throw new InvalidFieldsException(errorLst);
                else
                    throw;
            }
            if (errorLst.Length > 0)
                throw new InvalidFieldsException(errorLst);



        }

        private static string IterateModelElements(System.Web.UI.Control placeHolder
                                                , string transactionName
                                                , OdbcDbConnection db2Con
                                                , ref StringBuilder js
                                                , params string[] jsFunctionNames)
        {
            string fieldName, clientID;
            StringBuilder errorLst = new StringBuilder();
            var lst = DataManager.ModelDb2(transactionName);
            List<KeyValuePair<string, string>> tabelaLst = null;

            System.Web.UI.Control curControl = null;

            foreach (var itm in lst)
            {
                if (String.IsNullOrEmpty(itm.CopyBook))
                    continue;

                switch (itm.TipoDeCampo)
                {
                    case TipoCampoEnum.String:
                    case TipoCampoEnum.Decimal:
                    case TipoCampoEnum.Data:

                        fieldName = "txt" + itm.CopyBook;
                        curControl = placeHolder.FindControl(fieldName);
                        if (curControl != null && itm.Tamanho.HasValue && (curControl is System.Web.UI.WebControls.TextBox))
                            (curControl as System.Web.UI.WebControls.TextBox).MaxLength = (int)itm.Tamanho;
                        else
                            errorLst.Append(fieldName).Append("\n");

                        if (itm.DescricaoLbl != null)
                        {
                            fieldName = "lbl" + itm.CopyBook;
                            curControl = placeHolder.FindControl(fieldName);

                            if (curControl != null && (curControl is System.Web.UI.WebControls.Label))
                                (curControl as System.Web.UI.WebControls.Label).Text = itm.DescricaoLbl;

                            else
                                errorLst.Append(fieldName).Append("\n");
                        }

                        break;
                    case TipoCampoEnum.ComboBox:
                        if (itm.DescricaoLbl != null)
                        {
                            fieldName = "lbl" + itm.CopyBook;
                            curControl = placeHolder.FindControl(fieldName);

                            if (curControl != null && (curControl is System.Web.UI.WebControls.Label))
                                (curControl as System.Web.UI.WebControls.Label).Text = itm.DescricaoLbl;
                            else
                                errorLst.Append(fieldName).Append("\n");
                        }

                        fieldName = "cmb" + itm.CopyBook;
                        curControl = placeHolder.FindControl(fieldName);

                        if (curControl == null || !(curControl is System.Web.UI.HtmlControls.HtmlSelect))
                            errorLst.Append(fieldName).Append("\n");
                        else if (itm.Tabela != TabelaEnum.NULL)
                        {
                            var cmb = (curControl as System.Web.UI.HtmlControls.HtmlSelect);
                            clientID = cmb.ClientID;

                            tabelaLst = Db2DAL.GetDb2Lst(itm.Tabela, db2Con, itm.IDCol, itm.DescCol);
                            if (tabelaLst?.Count > 0)
                            {
                                cmb.LoadWithList(false, tabelaLst);
                                JsUtil.ExecJsFunction(jsFunctionNames[0], js, clientID.Replace("cmb", "txt"), clientID); //aplica fLookupCmbOnChange
                            }
                        }
                        break;

                    case TipoCampoEnum.CustomMask:
                        if (itm.DescricaoLbl != null)
                        {
                            fieldName = "lbl" + itm.CopyBook;
                            curControl = placeHolder.FindControl(fieldName);

                            if (curControl != null && (curControl is System.Web.UI.WebControls.Label))
                                (curControl as System.Web.UI.WebControls.Label).Text = itm.DescricaoLbl;
                            else
                                errorLst.Append(fieldName).Append("\n");
                        }

                        fieldName = "txt" + itm.CopyBook;
                        curControl = placeHolder.FindControl(fieldName);

                        if (curControl != null && itm.Tamanho.HasValue)
                            (curControl as System.Web.UI.WebControls.TextBox).MaxLength = (int)itm.Tamanho;
                        else
                            errorLst.Append(fieldName).Append("\n");
                        break;
                }
            }
            return errorLst.ToString();
        }

        public static string Terminal { get; set; }

        public static string Familia { get; set; }

        public static string SubFamilia { get; set; }

        public static string EmComercialzacao { get; set; }

        public static string Estado { get; set; }

        public static string Produto { get; set; }

        public static string TransactionType
        {
            get;
            set;
        }

        public static List<KeyValuePair<string, string>> ListFamilia
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "AP34", "Em Criação" },
                                    new string[] { "CA29", "Activos" },
                                    new string[] { "VC39", "Em Modificação" },
                                    new string[] { "TI96", "Inactivo" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListSubFamilia
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "SubFamilia 1" },
                                    new string[] { "2", "SubFamilia 2" },
                                    new string[] { "3", "SubFamilia 3" },
                                    new string[] { "4", "SubFamilia 4" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListEstado
        {
            get
            {
                EstadoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = EstadoEnum.Activo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstadoEnum.Criacao;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstadoEnum.Modificacao;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstadoEnum.Inactivo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListProduto
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "Produto 1" },
                                    new string[] { "2", "Produto 2" },
                                    new string[] { "3", "Produto 3" },
                                    new string[] { "4", "Produto 4" }
                                  });
            }
        }


        public static List<KeyValuePair<string, string>> ListMicroFamilias
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "AP34", "(AP34) Depósitos Estruturados" },
                                    new string[] { "CA29", "(CA29) Fundos" },
                                    //new string[] { "VC39", "(VC39) Seguros" },
                                    new string[] { "TI96", "(TI96) Papel Comercial" },
                                    new string[] { "TI97", "(TI97) Titulos" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListSimNaoExclusivo
        {
            get
            {
                SimNaoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = SimNaoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SimNaoEnum.Sim;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SimNaoEnum.Nao;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListSimNao
        {
            get
            {
                SimNaoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = SimNaoEnum.Sim;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SimNaoEnum.Nao;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;

            }
        }

        public static List<KeyValuePair<string, string>> ListActive
        {
            get
            {
                ActivoInactivoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ActivoInactivoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ActivoInactivoEnum.Activo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ActivoInactivoEnum.Inactivo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListActiveExclusivo
        {
            get
            {
                ActivoInactivoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ActivoInactivoEnum.Activo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ActivoInactivoEnum.Inactivo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListPricing
        {
            get
            {
                PricingEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = PricingEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PricingEnum.Clean;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PricingEnum.Dirty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoArredon
        {
            get
            {
                TipoArredonEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoArredonEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoArredonEnum.Defeito;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoArredonEnum.Excesso;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoWarrant
        {
            get
            {
                TipoWarrantEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoWarrantEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoWarrantEnum.Call;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoWarrantEnum.Put;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListEstiloWarrant
        {
            get
            {
                EstiloWarrantEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = EstiloWarrantEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstiloWarrantEnum.Europeu;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstiloWarrantEnum.Americano;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoExercicio
        {
            get
            {
                TipoExercicioEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoExercicioEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoExercicioEnum.Automatico;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoExercicioEnum.NaoAutomatico;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoLiquida
        {
            get
            {
                TipoLiquidaEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoLiquidaEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(string.Empty
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoLiquidaEnum.FIS;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoLiquidaEnum.FIN;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListPrazoAbsoluto
        {
            get
            {
                PrazoAbsolutoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = PrazoAbsolutoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));


                en = PrazoAbsolutoEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PrazoAbsolutoEnum.D;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PrazoAbsolutoEnum.P;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListH2527
        {
            get
            {
                H2527Enum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = H2527Enum.NULL;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));


                en = H2527Enum.ACC;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));

                en = H2527Enum.IND;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));

                en = H2527Enum.TJC;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));

                en = H2527Enum.TJL;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));

                en = H2527Enum.TCB;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));

                en = H2527Enum.CDV;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));
                en = H2527Enum.MEC;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));
                en = H2527Enum.OUT;
                lst.Add(new KeyValuePair<string, string>(en.ToString()
                    , en.ToString()));

                return lst;
            }
        }


        public static List<KeyValuePair<string, string>> ListTipoMercado
        {
            get
            {

                TipoMercadoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoMercadoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoMercadoEnum.MER;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoMercadoEnum.MNR;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoMercadoEnum.NAN;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListRiscoProduto
        {
            get
            {
                RiscoProdutoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = RiscoProdutoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoProdutoEnum.Nivel1;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoProdutoEnum.Nivel2;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoProdutoEnum.Nivel3;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoProdutoEnum.Nivel4;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoProdutoEnum.Nivel5;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoAmortizacao
        {
            get
            {

                TipoAmortizacaoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoAmortizacaoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoAmortizacaoEnum.Q;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoAmortizacaoEnum.T;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoAmortizacaoEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoSubscricao
        {
            get
            {

                TipoSubscricaoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoSubscricaoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoSubscricaoEnum.T;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoSubscricaoEnum.O;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoSubscricaoEnum.S;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoSubscricaoEnum.R;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoResgate
        {
            get
            {
                TipoResgateEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoResgateEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoResgateEnum.Q;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoResgateEnum.T;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoResgateEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;

            }
        }

        public static List<KeyValuePair<string, string>> ListTipoResgateExclusivo
        {
            get
            {
                TipoResgateEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoResgateEnum.Q;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoResgateEnum.T;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoResgateEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;

            }
        }

        public static List<KeyValuePair<string, string>> ListPeriodoCoracao
        {
            get
            {
                PeriodoCoracaoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = PeriodoCoracaoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PeriodoCoracaoEnum.D;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PeriodoCoracaoEnum.W;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PeriodoCoracaoEnum.Q;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PeriodoCoracaoEnum.M;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = PeriodoCoracaoEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoValoracao
        {
            get
            {
                TipoValoracaoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoValoracaoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoValoracaoEnum.F;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoValoracaoEnum.L;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListCustodia
        {
            get
            {
                CustodiaEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = CustodiaEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = CustodiaEnum.C;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = CustodiaEnum.D;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListElegivel
        {
            get
            {
                ElegivelEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ElegivelEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegivelEnum.Nivel0;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegivelEnum.Nivel100;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListRiscoKidd
        {
            get
            {
                RiscoKiddEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = RiscoKiddEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel1;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel2;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel3;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel4;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel5;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel6;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = RiscoKiddEnum.Nivel7;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListEstadoFundo
        {
            get
            {
                EstadoFundoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = EstadoFundoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstadoFundoEnum.I;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = EstadoFundoEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListSitsNegociavel
        {
            get
            {
                SitsNegociavelEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = SitsNegociavelEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SitsNegociavelEnum.N;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SitsNegociavelEnum.P;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SitsNegociavelEnum.O;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SitsNegociavelEnum.X;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListIbanNet
        {
            get
            {
                IbanNetEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = IbanNetEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IbanNetEnum.Nivel1;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IbanNetEnum.Nivel2;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IbanNetEnum.Nivel3;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListNegociavel
        {
            get
            {
                NegociavelEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = NegociavelEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NegociavelEnum.S;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NegociavelEnum.N;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NegociavelEnum.N;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NegociavelEnum.V;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListElegibilidade
        {
            get
            {
                ElegibilidadeEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ElegibilidadeEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegibilidadeEnum.BOE;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegibilidadeEnum.ECB;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegibilidadeEnum.FED;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegibilidadeEnum.LCB;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ElegibilidadeEnum.MKT;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoJuro
        {
            get
            {
                TipoJuroEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoJuroEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoJuroEnum.Fixo;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoJuroEnum.Var;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoJuroEnum.Outro;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListModalidade
        {
            get
            {
                ModalidadeEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ModalidadeEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ModalidadeEnum.C;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ModalidadeEnum.D;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoCalculoJuros
        {
            get
            {
                TipoCalculoJurosEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = TipoCalculoJurosEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoCalculoJurosEnum.Mes;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoCalculoJurosEnum.Dias;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListSenioridade
        {
            get
            {
                SenioridadeEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = SenioridadeEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SenioridadeEnum.S;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = SenioridadeEnum.J;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListNumAno
        {
            get
            {
                NumAnoEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = NumAnoEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N1;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N2;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N3;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N4;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N5;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N6;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = NumAnoEnum.N12;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;

            }
        }

        public static List<KeyValuePair<string, string>> ListIndiceActivoSubjacente
        {
            get
            {
                IndiceActivoSubjacenteEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = IndiceActivoSubjacenteEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IndiceActivoSubjacenteEnum.A;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IndiceActivoSubjacenteEnum.I;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IndiceActivoSubjacenteEnum.T;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListOnOffRegular
        {
            get
            {
                OnOffRegularEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = OnOffRegularEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = OnOffRegularEnum.O;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = OnOffRegularEnum.R;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListZeroOrOne
        {
            get
            {
                ZeroOrOneEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ZeroOrOneEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ZeroOrOneEnum.Zero;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ZeroOrOneEnum.One;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }


        public static List<KeyValuePair<string, string>> Ivaldur
        {
            get
            {
                IvaldurEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = IvaldurEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IvaldurEnum.I;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = IvaldurEnum.D;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }


        public static List<KeyValuePair<string, string>>Itiporev
        {
            get
            {
                ItiporevEnum en;
                var lst = new List<KeyValuePair<string, string>>();

                en = ItiporevEnum.Empty;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ItiporevEnum.Credito;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = ItiporevEnum.Normal;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                return lst;
            }
        }

        static CatalogueModel()
        {

        }


        static List<KeyValuePair<string, string>> toDropDownList(string[][] lista,
                   string defaultLabel = null, bool append = false)
        {
            List<KeyValuePair<string, string>> list = new List<KeyValuePair<string, string>>();
            if (defaultLabel != null && lista != null) // && lista.Count() > 1)
            {
                list.Add(new KeyValuePair<string, string>("", defaultLabel));
            }
            if (lista != null)
            {
                list.AddRange(
                    lista.Select(
                        x => new KeyValuePair<string, string>(x[0], append ? x[0] + "-" + x[1] : x[1])
                    )
                  );

            }
            return list;
        }
    }
}