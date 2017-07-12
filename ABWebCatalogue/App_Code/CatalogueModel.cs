using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Models
{
    public static class CatalogueModel
    {

        static List<KeyValuePair<string, string>> listFamilia, listSubFamilia, listEstado, listProduto, listMicroFamilias, listSimNaoExclusivo, listSimNao, listPricing, listTipoArredon, listTipoWarrant, listEstiloWarrant, listTipoExercicio,
            listTipoLiquida, listTipoMercado, listPrazoAbsoluto, listRiscoProduto, listTipoAmortizacao, listTipoSubscricao, listTipoResgate, listPeriodoCoracao, listTipoValoracao,
            listCustodia, listElegivel, listRiscoKidd, listEstadoFundo, listSitsNegociavel, listIbanNet, listNegociavel, listTipoAmortiz, listElegibilidade, listTipoJuro, listModalidade,
            listTipoCalculoJuros, listSenioridade, listNumAno, listIndiceActivoSubjacente, listOnOffRegular;

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
                return listFamilia;
            }
        }

        public static List<KeyValuePair<string, string>> ListSubFamilia
        {
            get
            {
                return listSubFamilia;
            }
        }

        public  static List<KeyValuePair<string, string>> ListEstado
        {
            get
            {
                return listEstado;
            }
        }

        public  static List<KeyValuePair<string, string>> ListProduto
        {
            get
            {
                return listProduto;
            }
        }


        public  static List<KeyValuePair<string, string>> ListMicroFamilias
        {
            get
            {
                return toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "AP34", "(AP34) Depósitos Estruturados" },
                                    new string[] { "CA29", "(CA29) Fundos" },
                                    new string[] { "VC39", "(VC39) Seguros" },
                                    new string[] { "TI96", "(TI96) Papel Comercial" },
                                    new string[] { "TI97", "(TI97) Titulos" }
                                  });
            }
        }

        public  static List<KeyValuePair<string, string>> ListSimNaoExclusivo
        {
            get
            {
                return listSimNaoExclusivo;
            }
        }

        public  static List<KeyValuePair<string, string>> ListSimNao
        {
            get
            {
                return listSimNao;
            }
        }

        public  static List<KeyValuePair<string, string>> ListPricing
        {
            get
            {
                return listPricing;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoArredon
        {
            get
            {
                return listTipoArredon;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoWarrant
        {
            get
            {
                return listTipoWarrant;
            }
        }

        public  static List<KeyValuePair<string, string>> ListEstiloWarrant
        {
            get
            {
                return listEstiloWarrant;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoExercicio
        {
            get
            {
                return listTipoExercicio;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoLiquida
        {
            get
            {
                return listTipoLiquida;
            }
        }

        public  static List<KeyValuePair<string, string>> ListPrazoAbsoluto
        {
            get
            {
                return listPrazoAbsoluto;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoMercado
        {
            get
            {
                return listTipoMercado;
            }
        }

        public  static List<KeyValuePair<string, string>> ListRiscoProduto
        {
            get
            {
                return listRiscoProduto;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoAmortizacao
        {
            get
            {
                return listTipoAmortizacao;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoSubscricao
        {
            get
            {
                return listTipoSubscricao;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoResgate
        {
            get
            {
                return listTipoResgate;
            }
        }

        public  static List<KeyValuePair<string, string>> ListPeriodoCoracao
        {
            get
            {
                return listPeriodoCoracao;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoValoracao
        {
            get
            {
                return listTipoValoracao;
            }
        }

        public  static List<KeyValuePair<string, string>> ListCustodia
        {
            get
            {
                return listCustodia;
            }
        }

        public  static List<KeyValuePair<string, string>> ListElegivel
        {
            get
            {
                return listElegivel;
            }
        }

        public  static List<KeyValuePair<string, string>> ListRiscoKidd
        {
            get
            {
                return listRiscoKidd;
            }
        }

        public  static List<KeyValuePair<string, string>> ListEstadoFundo
        {
            get
            {
                return listEstadoFundo;
            }
        }

        public  static List<KeyValuePair<string, string>> ListSitsNegociavel
        {
            get
            {
                return listSitsNegociavel;
            }
        }

        public  static List<KeyValuePair<string, string>> ListIbanNet
        {
            get
            {
                return listIbanNet;
            }
        }

        public  static List<KeyValuePair<string, string>> ListNegociavel
        {
            get
            {
                return listNegociavel;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoAmortiz
        {
            get
            {
                return listTipoAmortiz;
            }
        }

        public  static List<KeyValuePair<string, string>> ListElegibilidade
        {
            get
            {
                return listElegibilidade;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoJuro
        {
            get
            {
                return listTipoJuro;
            }
        }

        public  static List<KeyValuePair<string, string>> ListModalidade
        {
            get
            {
                return listModalidade;
            }
        }

        public  static List<KeyValuePair<string, string>> ListTipoCalculoJuros
        {
            get
            {
                return listTipoCalculoJuros;
            }
        }

        public  static List<KeyValuePair<string, string>> ListSenioridade
        {
            get
            {
                return listSenioridade;
            }
        }

        public  static List<KeyValuePair<string, string>> ListNumAno
        {
            get
            {
                return listNumAno;
            }
        }

        public  static List<KeyValuePair<string, string>> ListIndiceActivoSubjacente
        {
            get
            {
                return listIndiceActivoSubjacente;
            }
        }

        public  static List<KeyValuePair<string, string>> ListOnOffRegular
        {
            get
            {
                return listOnOffRegular;
            }
        }

        static CatalogueModel()
        {
            listEstado = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "AP34", "Em Criação" },
                                    new string[] { "CA29", "Activos" },
                                    new string[] { "VC39", "Em Modificação" },
                                    new string[] { "TI96", "Inactivo" }
                                  });

            listProduto  = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "Produto 1" },
                                    new string[] { "2", "Produto 2" },
                                    new string[] { "3", "Produto 3" },
                                    new string[] { "4", "Produto 4" }
                                  });

            listFamilia = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "Depósitos Estruturados" },
                                    new string[] { "2", "Fundos" },
                                    new string[] { "3", "Seguros" },
                                    new string[] { "4", " Papel Comercial" },
                                    new string[] { "5", "Titulos" }
                                  });

            listSubFamilia = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "SubFamilia 1" },
                                    new string[] { "2", "SubFamilia 2" },
                                    new string[] { "3", "SubFamilia 3" },
                                    new string[] { "4", "SubFamilia 4" }
                                  });

            listMicroFamilias = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "AP34", "(AP34) Depósitos Estruturados" },
                                    new string[] { "CA29", "(CA29) Fundos" },
                                    new string[] { "VC39", "(VC39) Seguros" },
                                    new string[] { "TI96", "(TI96) Papel Comercial" },
                                    new string[] { "TI97", "(TI97) Titulos" }
                                  });

            listSimNaoExclusivo = toDropDownList(new string[][] {
                                    new string[] { "S", "Sim" },
                                    new string[] { "N", "Não" }
                                  });

            listSimNao = toDropDownList(new string[][] {
                                    new string[] { "S", "Sim" },
                                    new string[] { "N", "Não" }
                                  });

            listPricing = toDropDownList(new string[][] {
                                     new string[] { "C", "Clean" },
                                    new string[] { "D", "Dirty" }
                                  });

            listTipoArredon = toDropDownList(new string[][] {
                                     new string[] { "E", "Excesso" },
                                    new string[] { "D", "Defeito" }
                                  });
            listTipoWarrant = toDropDownList(new string[][] {
                                    new string[] { "C", "Call" },
                                    new string[] { "P", "Put" }
                                  });

            listEstiloWarrant = toDropDownList(new string[][] {
                                    new string[] { "E", "Europeu" },
                                    new string[] { "A", "Americano" }
                                  });

            listTipoExercicio = toDropDownList(new string[][] {
                                    new string[] { "A", "Automático" },
                                    new string[] { "N", "Não Automático" }
                                  });

            listTipoLiquida = toDropDownList(new string[][] {
                                    new string[] { "A", "Fisica" },
                                    new string[] { "N", "Financeira" }
                                  });

            listTipoMercado = toDropDownList(new string[][] {
                                    new string[] { "MER", "MER" },
                                    new string[] { "MNR", "MNR" },
                                    new string[] { "NAN", "NAN"}
                                  });

            listPrazoAbsoluto = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "A", "A" },
                                    new string[] { "P", "P" },
                                    new string[] { "D", "D" }
                                  });

            listRiscoProduto = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" },
                                    new string[] { "4", "4" },
                                    new string[] { "5", "5" }
                                  });

            listTipoAmortizacao = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "T", "T" },
                                    new string[] { "O", "O" },
                                    new string[] { "S", "S" },
                                    new string[] { "R", "R" }
                                  });

            listTipoResgate = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "Q", "Q" },
                                    new string[] { "T", "T" },
                                    new string[] { "A", "A" }
                                  });

            listPeriodoCoracao = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "D", "D" }, //Default
                                    new string[] { "W", "W" },
                                    new string[] { "Q", "Q" },
                                    new string[] { "M", "M" },
                                    new string[] { "A", "A" }
                                  });

            listTipoValoracao = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "F", "F" },
                                    new string[] { "L", "L" }
                                  });

            listCustodia = toDropDownList(new string[][] {
                                   new string[] { " ", " " },
                                    new string[] { "C", "C" },
                                    new string[] { "D", "D" } //Default
                                  });

            listElegivel = toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] { "0", "0" },
                                    new string[] { "100", "100" } //Default
                                  });

            listRiscoKidd = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" },
                                    new string[] { "4", "4" },
                                    new string[] { "5", "5" },
                                    new string[] { "6", "6" },
                                    new string[] { "7", "7" }
                                  });

            listEstadoFundo = toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] { "I", "I" },
                                    new string[] { "A", "A" }
                                  });

            listSitsNegociavel = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "N", "N" },
                                    new string[] { "P", "P" },
                                    new string[] { "O", "O" },
                                    new string[] { "X", "X" }
                                  });

            listIbanNet = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "0", "0" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" }
                                  });

            listNegociavel = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "S", "S" },
                                    new string[] { "N", "N" },
                                    new string[] { "C", "C" },
                                    new string[] { "V", "V" }
                                  });

            listTipoAmortiz = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "T", "T" },
                                    new string[] { "R", "R" },
                                    new string[] { "O", "O" },
                                    new string[] { "S", "S" }
                                  });

            listElegibilidade = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "BOE", "BOE" },
                                    new string[] { "ECB", "ECB" },
                                    new string[] { "FED", "FED" },
                                    new string[] { "LCB", "LCB" },
                                    new string[] { "MKT", "MKT" }
                                  });

            listTipoJuro = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "F", "Fixo" },
                                    new string[] { "I", "Var" },
                                    new string[] { "M", "Outro" }
                                  });

            listModalidade = toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] { "C", "C" },
                                    new string[] { "D", "D" }
                                  });

            listTipoCalculoJuros = toDropDownList(new string[][] {
                                    new string[] { " ", " " },
                                    new string[] {  "T", "Mês" },
                                    new string[] {  "D", "Dias" }
                                  });

            listSenioridade = toDropDownList(new string[][] {
                                   new string[] { " ", " " },
                                    new string[] { "S", "S" },
                                    new string[] { "J", "J" }
                                  });

            listNumAno = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "1", "1" },
                                    new string[] { "2", "2" },
                                    new string[] { "3", "3" },
                                    new string[] { "4", "4" },
                                    new string[] { "6", "6" },
                                    new string[] { "12", "12" }
                                  });

            listIndiceActivoSubjacente = toDropDownList(new string[][] {
                                    new string[] { "", "" },
                                    new string[] { "A", "A" },
                                    new string[] { "I", "I" },
                                    new string[] { "T", "T" }
                                  });

            listOnOffRegular = toDropDownList(new string[][] {
                                     new string[] { "O", "O" },
                                    new string[] { "R", "R" }
                                  });

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