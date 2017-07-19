using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EnumExtensions;

namespace Core.Models
{
    public static class CatalogueModel
    {

        public CatalogueModel(string ecranNome)
        {
            var lst = new List<ModelField>();
            lst.Add(new ModelField(ecranNome, ""))
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
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;

                en = TipoLiquidaEnum.Financeira;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));

                en = TipoLiquidaEnum.Fisica;
                lst.Add(new KeyValuePair<string, string>(EnumExtensions.EnumExtensions.GetValue(en)
                    , EnumExtensions.EnumExtensions.GetDesc(en)));
                return lst;
            }
        }

        public static List<KeyValuePair<string, string>> ListPrazoAbsoluto
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "A", "A" },
                                    new string[] { "P", "P" },
                                    new string[] { "D", "D" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoMercado
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "MER", "MER" },
                                    new string[] { "MNR", "MNR" },
                                    new string[] { "NAN", "NAN"}
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListRiscoProduto
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" },
                                    new string[] { "4", "4" },
                                    new string[] { "5", "5" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoAmortizacao
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "Q", "Q" },
                                    new string[] { "T", "T" },
                                    new string[] { "A", "A" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoSubscricao
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "T", "T" },
                                    new string[] { "O", "O" },
                                    new string[] { "S", "S" },
                                    new string[] { "R", "R" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoResgate
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "Q", "Q" },
                                    new string[] { "T", "T" },
                                    new string[] { "A", "A" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListPeriodoCoracao
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "D", "D" }, //Default
                                    new string[] { "W", "W" },
                                    new string[] { "Q", "Q" },
                                    new string[] { "M", "M" },
                                    new string[] { "A", "A" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoValoracao
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "F", "F" },
                                    new string[] { "L", "L" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListCustodia
        {
            get
            {
                return toDropDownList(new string[][] {
                                   new string[] { " ", " " },
                                    new string[] { "C", "C" },
                                    new string[] { "D", "D" } //Default
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListElegivel
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] { "0", "0" },
                                    new string[] { "100", "100" } //Default
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListRiscoKidd
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" },
                                    new string[] { "4", "4" },
                                    new string[] { "5", "5" },
                                    new string[] { "6", "6" },
                                    new string[] { "7", "7" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListEstadoFundo
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] { "I", "I" },
                                    new string[] { "A", "A" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListSitsNegociavel
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "N", "N" },
                                    new string[] { "P", "P" },
                                    new string[] { "O", "O" },
                                    new string[] { "X", "X" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListIbanNet
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "0", "0" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListNegociavel
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "S", "S" },
                                    new string[] { "N", "N" },
                                    new string[] { "C", "C" },
                                    new string[] { "V", "V" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListElegibilidade
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "BOE", "BOE" },
                                    new string[] { "ECB", "ECB" },
                                    new string[] { "FED", "FED" },
                                    new string[] { "LCB", "LCB" },
                                    new string[] { "MKT", "MKT" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoJuro
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "F", "Fixo" },
                                    new string[] { "I", "Var" },
                                    new string[] { "M", "Outro" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListModalidade
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] { "C", "C" },
                                    new string[] { "D", "D" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoCalculoJuros
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] {  "T", "Mês" },
                                    new string[] {  "D", "Dias" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListSenioridade
        {
            get
            {
                return toDropDownList(new string[][] {
                                   new string[] { " ", " " },
                                    new string[] { "S", "S" },
                                    new string[] { "J", "J" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListNumAno
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" },
                                    new string[] { "4", "4" },
                                    new string[] { "6", "6" },
                                    new string[] { "12", "12" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListIndiceActivoSubjacente
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "A", "A" },
                                    new string[] { "I", "I" },
                                    new string[] { "T", "T" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListOnOffRegular
        {
            get
            {
                return toDropDownList(new string[][] {
                                     new string[] { "O", "O" },
                                    new string[] { "R", "R" }
                                  });
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