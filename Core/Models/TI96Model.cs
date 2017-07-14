using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Core.Models
{
    public class TI96Model
    {
        [Display(Name = "Titulo")]
        public virtual short Tpti
        {
            get;
            set;
        }

        [Display(Name = "Id. Prog.")]
        public virtual string Cprogramapc
        {
            get;
            set;
        }

        [Display(Name = "Nº Cliente")]
        public virtual int Zcliente
        {
            get;
            set;
        }

        [Display(Name = "Nº Emissão")]
        public virtual int Zemissao
        {
            get;
            set;
        }
        
        [Display(Name = "Valor nom. emissão")]
        public virtual decimal Mnomine
        {
            get;
            set;
        }

        #region (BANCO AGENTE)
        [Display(Name = "Banco Agente")]
        public virtual int Codban
        {
            get;
            set;
        }
      
        public virtual string Dcodban
        {
            get;
            set;
        }
        #endregion
        #region (ESPECIE)
        [Display(Name = "Espécie")]
        public virtual string Codvalor
        {
            get;
            set;
        }

        public virtual string Nombrev
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "Reactivar")]
        public virtual string Reactivar
        {
            get;
            set;
        }

        [Display(Name = "Isin")]
        public virtual string Codisin
        {
            get;
            set;
        }

        [Display(Name = "Código sgc")]
        public virtual string Codsgc
        {
            get;
            set;
        }

        [Display(Name = "Bolsa sgc")]
        public virtual string Bolsgc
        {
            get;
            set;
        }

        #region (CUSTODIANTE)
        [Display(Name = "Custodiante")]
        public virtual string Ccustod
        {
            get;
            set;
        }

        [Display(Name = null)]
        public virtual string Dcustod
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "Cotação")]
        public virtual decimal Camed
        {
            get;
            set;
        }

        [Display(Name = "Moeda Cot/Liq")]
        public virtual string Moedaval
        {
            get;
            set;
        }

        [Display(Name = "Default")]
        public virtual string Ititdef
        {
            get;
            set;
        }

        [Display(Name = "Vl. Nom. Unitário")]
        public virtual decimal Nomin
        {
            get;
            set;
        }

        [Display(Name = "Moeda Nominal")]
        public virtual string Coddivi
        {
            get;
            set;
        }
       
        [Display(Name = "CVM")]
        public virtual string Nemonica
        {
            get;
            set;
        }

        [Display(Name = "Local Guard.")]
        public virtual string Lguarda
        {
            get;
            set;
        }

        [Display(Name = "Sist. Negoc.")]
        public virtual string Tiptitul
        {
            get;
            set;
        }

        [Display(Name = "Bloomberg")]
        public virtual string Cbloombg
        {
            get;
            set;
        }

        [Display(Name = "Escalão")]
        public virtual string Ctipesc
        {
            get;
            set;
        }

        [Display(Name = "Reuters")]
        public virtual string Creuters
        {
            get;
            set;
        }

        [Display(Name = "D. Custódia")]
        public virtual string Dercus
        {
            get;
            set;
        }

        [Display(Name = "NIF")]
        public virtual string Nif
        {
            get;
            set;
        }
        #region (PAIS EMIT)
        [Display(Name = "País Emit.")]
        public virtual int Cpaisemi
        {
            get;
            set;
        }
        
        public virtual string Dpaisemi
        {
            get;
            set;
        }
        #endregion
        [Display(Name = "Lote mínimo")]
        public virtual decimal Lotemin
        {
            get;
            set;
        }

        [Display(Name = "Agências")]
        public virtual string Ititbal
        {
            get;
            set;
        }

        #region PAIS MERCAD
        [Display(Name = "País Mercado")]
        public virtual int Codpais
        {
            get;
            set;
        }

        public virtual string Dpais
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "NET")]
        public virtual short Ibantele
        {
            get;
            set;
        }

        [Display(Name = "% Crédito")]
        public virtual decimal Tcredito
        {
            get;
            set;
        }

        #region (SEG.CARTEIR)
        [Display(Name = "Seg. Carteira")]
        public virtual string Segcart
        {
            get;
            set;
        }

        public virtual string Dsegcart
        {
            get;
            set;
        }
        #endregion
        
        [Display(Name = "Estado")]
        public virtual string Situaca
        {
            get;
            set;
        }

        [Display(Name = "Negociável")]
        public virtual string Negociav
        {
            get;
            set;
        }

        #region (ULT.ACTU)
        [Display(Name = "Última Actualização")]
        public virtual int Fechactu
        {
            get;
            set;
        }

        public virtual string Usuario
        {
            get;
            set;
        }
        #endregion

        #region (BOLSAS)
        public virtual short Cbolsa01
        {
            get;
            set;
        }

        public virtual short Cbolsa02
        {
            get;
            set;
        }

        public virtual short Cbolsa03
        {
            get;
            set;
        }

        public virtual short Cbolsa04
        {
            get;
            set;
        }

        public virtual short Cbolsa05
        {
            get;
            set;
        }

        public virtual short Cbolsa06
        {
            get;
            set;
        }

        public virtual short Cbolsa07
        {
            get;
            set;
        }

        public virtual short Cbolsa08
        {
            get;
            set;
        }

        public virtual short Cbolsa09
        {
            get;
            set;
        }

        public virtual short Cbolsa10
        {
            get;
            set;
        }

        public virtual short Cbolsa11
        {
            get;
            set;
        }
        
        public virtual short Cbolsa12
        {
            get;
            set;
        }
        
        public virtual short Cbolsa13
        {
            get;
            set;
        }
        
        public virtual short Cbolsa14
        {
            get;
            set;
        }
        
        public virtual short Cbolsa15
        {
            get;
            set;
        }
        #endregion
       public virtual string Tipint
        {
            get;
            set;
        }

        [Display(Name = "Modalidade (cap/desc)")]
        public virtual string Itipemiss
        {
            get;
            set;
        }

        [Display(Name = "Taxa Média Emissão")]
        public virtual decimal Interes
        {
            get;
            set;
        }
 
        [Display(Name = "Qtd. Emissão")]
        public virtual long Desde
        {
            get;
            set;
        }

        [Display(Name = "% Isenção")]
        [DisplayFormat(DataFormatString = "{0:C}")]
        public virtual decimal Exenc
        {
            get;
            set;
        }

        [Display(Name = "Taxa de Emissão")]
        public virtual decimal Txprog
        {
            get;
            set;
        }

        [Display(Name = "% IRS / IRC")]
        public virtual decimal Reten
        {
            get;
            set;
        }

        [Display(Name = "Prazo da Emissão")]
        public virtual decimal Przdprog
        {
            get;
            set;
        }

        [Display(Name = "% Juro Diário")]
        public virtual decimal Jurodliq
        {
            get;
            set;
        }

        [Display(Name = "Base Calculo")]
        public virtual decimal Basecalc
        {
            get;
            set;
        }

        [Display(Name = "Cálculo de Juros")]
        public virtual string Icalcjur
        {
            get;
            set;
        }

        [Display(Name = "% Juro Anterior")]
        public virtual decimal Tjuro7
        {
            get;
            set;
        }

        [Display(Name = "Mensualização")]
        public virtual string Imensual
        {
            get;
            set;
        }

        [Display(Name = "Tipo Amortização")]
        public virtual string Tipamor
        {
            get;
            set;
        }

        [Display(Name = "Data Emissão")]
        public virtual string Emis
        {
            get;
            set;
        }

        [Display(Name = "ISIN Con. BP")]
        public virtual string Isinbp
        {
            get;
            set;
        }

        [Display(Name = "Data Amortização")]
        public virtual string Fproxa
        {
            get;
            set;
        }
        
        [Display(Name = "Cod. Adic. BP")]
        public virtual string Cidabp
        {
            get;
            set;
        }
        
        [Display(Name = "Data 1º Cupão")]
        public virtual string Fprimc
        {
            get;
            set;
        }

        [Display(Name = "Data BP")]
        public virtual string Fbancopt
        {
            get;
            set;
        }

        [Display(Name = "Cupão Corrido")]
        public virtual string Cupcorrc
        {
            get;
            set;
        }

        [Display(Name = "Venc-1 DD/MM")]
        public virtual string Venc1
        {
            get;
            set;
        }

        [Display(Name = "Venc-2 DD/MM")]
        public virtual string Venc2
        {
            get;
            set;
        }

        [Display(Name = "Venc-3 DD/MM")]
        public virtual string Venc3
        {
            get;
            set;
        }

        [Display(Name = "Venc-4 DD/MM")]
        public virtual string Venc4
        {
            get;
            set;
        }
        #region (WARRANTS)


        [Display(Name = "Tipo Warrant")]
        public virtual string Itipowar
        {
            get;
            set;
        }

        [Display(Name = "Estilo Warrant")]
        public virtual string Iestwar
        {
            get;
            set;
        }

        [Display(Name = "Tipo Exercício")]
        public virtual string Itipexer
        {
            get;
            set;
        }

        [Display(Name = "Data admissão negociação")]
        public virtual string Feadmiss
        {
            get;
            set;
        }

        [Display(Name = "Data última negociação")]
        public virtual string Feultneg
        {
            get;
            set;
        }

        [Display(Name = "Data de vencimento")]
        public virtual string Fevencim
        {
            get;
            set;
        }

        [Display(Name = "Paridade Warrant")]
        public virtual decimal Paridade
        {
            get;
            set;
        }

        [Display(Name = "Lote mínimo para exercício")]
        public virtual int Qlotemin
        {
            get;
            set;
        }

        #region (IND.ACTIVO SUBJ.)
        [Display(Name = "Índice Activo Subjacente")]
        public virtual string Iactsubj
        {
            get;
            set;
        }
      
        public virtual string Nactsubj
        {
            get;
            set;
        }
        #endregion
        [Display(Name = "Moeda Activo Subjacente")]
        public virtual string Cmoesubj
        {
            get;
            set;
        }

        [Display(Name = "Tipo Liquidação")]
        public virtual string Ctipoliq
        {
            get;
            set;
        }

        [Display(Name = "Preço Exercício")]
        public virtual decimal Strike
        {
            get;
            set;
        }

        [Display(Name = "Nome do Emitente")]
        public virtual string Nemiten
        {
            get;
            set;
        }

        [Display(Name = "Nominativo")]
        public virtual string Inominat
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "Novo Valor Unitário")]
        public virtual decimal Nominn
        {
            get;
            set;
        }

        [Display(Name = "Natureza Jurídica")]
        public virtual string Cnat
        {
            get;
            set;
        }

        [Display(Name = "Índice Principal")]
        public virtual string Cipr
        {
            get;
            set;
        }

        [Display(Name = "Índice Secundário")]
        public virtual string Cise
        {
            get;
            set;
        }

        [Display(Name = "% Ret. Estrangeiro")]
        public virtual string Pret
        {
            get;
            set;
        }

        [Display(Name = "% Agrav. IRS")]
        public virtual string Pagr
        {
            get;
            set;
        }

        [Display(Name = "Exchange Traded Funds")]
        public virtual string Etfs
        {
            get;
            set;
        }
        #region (PAPEL COMERCIAL)
        [Display(Name = "Index Prazo Inferior")]
        public virtual decimal Tprzinf
        {
            get;
            set;
        }

        [Display(Name = "Index Prazo Superior")]
        public virtual decimal Tprzsup
        {
            get;
            set;
        }

        [Display(Name = "Nº Dias Index Inferior")]
        public virtual int Qprzinf
        {
            get;
            set;
        }

        [Display(Name = "Nº Dias Index Superior")]
        public virtual int Qprzsup
        {
            get;
            set;

        }

        [Display(Name = "Indexante")]
        public virtual decimal Tindexante
        {
            get;
            set;

        }

        [Display(Name = "Spread")]
        public virtual decimal Tspreadpc
        {
            get;
            set;

        }

        [Display(Name = "Arredondamento")]
        public virtual decimal Tarredond
        {
            get;
            set;
        }

        public virtual int Auxi
        {
            get;
            set;
        }

        [Display(Name = "Taxa Referência")]
        public virtual decimal Tcambio
        {
            get;
            set;

        }

        [Display(Name = "Data de Câmbio")]
        public virtual string Dcambio
        {
            get;
            set;
        }
        #endregion
        #region (TAXA MULTIPLA)
        [Display(Name = "Taxa Mínima")]
        public virtual decimal Txmin
        {
            get;
            set;
        }
        [Display(Name = "Taxa Máxima")]
        public virtual decimal Txmax
        {
            get;
            set;
        }
        #endregion

        #region (ATRIBUTOS INVESTIMENTO)
        [Display(Name = "Sub-Família")]
        public virtual string Csubfam
        {
            get;
            set;
        }

        public virtual string Dsubfam
        {
            get;
            set;
        }

        public virtual string Cliquidprod
        {
            get;
            set;
        }
        [Display(Name = "Complexidade")]
        public virtual string Ccomplexinv
        {
            get;
            set;
        }

        public virtual string Dcomplexinv
        {
            get;
            set;
        }

        public virtual string Chorizon
        {
            get;
            set;
        }

        public virtual string Dhorizon
        {
            get;
            set;
        }
        [Display(Name = "Zona Geográfica")]
        public virtual string Czongeog
        {
            get;
            set;
        }

        public virtual string Dzongeog
        {
            get;
            set;
        }
        [Display(Name = "OnOff/Regular")]
        public virtual string Conoffregu
        {
            get;
            set;
        }
        [Display(Name = "Ipad")]
        public virtual string Cipad
        {
            get;
            set;
        }
        [Display(Name = "Nível Risco")]
        public virtual string Cnivelrisco
        {
            get;
            set;
        }
        [Display(Name = "VaR")]
        public virtual string Mvar
        {
            get;
            set;
        }
        [Display(Name = "Data")]
        public virtual string Dvar
        {
            get;
            set;
        }
        [Display(Name = "Descrição")]
        public virtual string Gobsrv
        {
            get;
            set;
        }
        [Display(Name = "Cat/Class.Activ.")]
        public virtual string Cclaacti
        {
            get;
            set;
        }

        public virtual string Cclassrisc
        {
            get;
            set;
        }

        public virtual string Dtactiva
        {
            get;
            set;
        }

        public virtual string IPrzAbs
        {
            get;
            set;
        }

        public virtual string CProdCnt
        {
            get;
            set;
        }

        public virtual string CFinBb
        {
            get;
            set;

        }

        public virtual string GFinBb
        {
            get;
            set;
        }

        public virtual string CSProCnt
        {
            get;
            set;
        }

        public virtual string GSubProd
        {
            get;
            set;
        }

        public virtual string CAgregDp
        {
            get;
            set;
        }

        public virtual string SolicitarClassRisco
        {
            get;
            set;
        }
        #endregion
        public TI96Model()
        {

        }
    }
}