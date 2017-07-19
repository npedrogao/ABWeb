using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EnumExtensions;

namespace Core.Models
{
    public static class CatalogueModel
    {
        public static string Terminal { get; set; }

        public static string Familia { get; set; }

        public static string SubFamilia { get; set; }

        public static string EmCormercialzacao { get; set; }

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
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "C", "Em Criação" },
                                    new string[] { "A", "Activos" },
                                    new string[] { "M", "Em Modificação" },
                                    new string[] { "I", "Inactivo" }
                                  });
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
                //return toDropDownList(new string[][] {
                //                    new string[] { "S", "Sim" },
                //                    new string[] { "N", "Não" }
                //                  });
                return toDropDownList(new string[][] {
                           new string[] { EnumExtensions.EnumExtensions.GetValue(SimNaoEnum.Sim),  EnumExtensions.EnumExtensions.GetDesc(SimNaoEnum.Sim)},
                    new string[] { EnumExtensions.EnumExtensions.GetValue(SimNaoEnum.Nao),  EnumExtensions.EnumExtensions.GetDesc(SimNaoEnum.Nao)}
                });
            }
        }

        public static List<KeyValuePair<string, string>> ListSimNao
        {
            get
            {
                //return toDropDownList(new string[][] {
                //new string[] { " ", " " },
                //                    new string[] { "S", "Sim" },
                //                    new string[] { "N", "Não" }
                //                  });

                return toDropDownList(new string[][] {
                    new string[] { EnumExtensions.EnumExtensions.GetValue(SimNaoEnum.Empty),  EnumExtensions.EnumExtensions.GetDesc(SimNaoEnum.Empty) },
                    new string[] { EnumExtensions.EnumExtensions.GetValue(SimNaoEnum.Sim),  EnumExtensions.EnumExtensions.GetDesc(SimNaoEnum.Sim)},
                    new string[] { EnumExtensions.EnumExtensions.GetValue(SimNaoEnum.Nao),  EnumExtensions.EnumExtensions.GetDesc(SimNaoEnum.Nao)}
                });
            }
        }

        public static List<KeyValuePair<string, string>> ListActive
        {
            get
            {
                return toDropDownList(new string[][] {
                    new string[] { EnumExtensions.EnumExtensions.GetValue(ActivoInactivoEnum.Empty),  EnumExtensions.EnumExtensions.GetDesc(ActivoInactivoEnum.Empty) },
                    new string[] { EnumExtensions.EnumExtensions.GetValue(ActivoInactivoEnum.Activo),  EnumExtensions.EnumExtensions.GetDesc(ActivoInactivoEnum.Activo) },
                    new string[] { EnumExtensions.EnumExtensions.GetValue(ActivoInactivoEnum.Inactivo),  EnumExtensions.EnumExtensions.GetDesc(ActivoInactivoEnum.Inactivo)}
                });
            }
        }

        public static List<KeyValuePair<string, string>> ListPricing
        {
            get
            {
                return toDropDownList(new string[][] {
                                     new string[] { "C", "Clean" },
                                    new string[] { "D", "Dirty" }
                                  }); ;
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoArredon
        {
            get
            {
                return toDropDownList(new string[][] {
                                     new string[] { "E", "Excesso" },
                                    new string[] { "D", "Defeito" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoWarrant
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "C", "Call" },
                                    new string[] { "P", "Put" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListEstiloWarrant
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "E", "Europeu" },
                                    new string[] { "A", "Americano" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoExercicio
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "A", "Automático" },
                                    new string[] { "N", "Não Automático" }
                                  });
            }
        }

        public static List<KeyValuePair<string, string>> ListTipoLiquida
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "A", "Fisica" },
                                    new string[] { "N", "Financeira" }
                                  });
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