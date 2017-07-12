using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ABCatalogueWebSiteMVC.Models
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
        public virtual string Idtp
        {
            get;
            set;
        }

        [Display(Name = "Nº Cliente")]
        public virtual int Ncli
        {
            get;
            set;
        }

        [Display(Name = "Nº Emissão")]
        public virtual int Nems
        {
            get;
            set;
        }
        
        [Display(Name = "Valor nom. emissão")]
        public virtual decimal Vlne
        {
            get;
            set;
        }

        #region (BANCO AGENTE)
        [Display(Name = "Banco Agente")]
        public virtual int Bana
        {
            get;
            set;
        }
      
        public virtual string Gban
        {
            get;
            set;
        }
        #endregion
        #region (ESPECIE)
        [Display(Name = "Espécie")]
        public virtual string Cval
        {
            get;
            set;
        }

        public virtual string Nbrv
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "Reactivar")]
        public virtual string Ract
        {
            get;
            set;
        }

        [Display(Name = "Isin")]
        public virtual string Isin
        {
            get;
            set;
        }

        [Display(Name = "Código sgc")]
        public virtual string Csgc
        {
            get;
            set;
        }

        [Display(Name = "Bolsa sgc")]
        public virtual string Bsgc
        {
            get;
            set;
        }

        #region (CUSTODIANTE)
        [Display(Name = "Custodiante")]
        public virtual string Ccus
        {
            get;
            set;
        }

        [Display(Name = null)]
        public virtual string Dcus
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "Cotação")]
        public virtual decimal Camd
        {
            get;
            set;
        }

        [Display(Name = "Moeda Cot/Liq")]
        public virtual string Moec
        {
            get;
            set;
        }

        [Display(Name = "Default")]
        public virtual string Itit
        {
            get;
            set;
        }

        [Display(Name = "Vl. Nom. Unitário")]
        public virtual decimal Nmin
        {
            get;
            set;
        }

        [Display(Name = "Moeda Nominal")]
        public virtual string Divi
        {
            get;
            set;
        }
       
        [Display(Name = "CVM")]
        public virtual string Nemo
        {
            get;
            set;
        }

        [Display(Name = "Local Guard.")]
        public virtual string Lgua
        {
            get;
            set;
        }

        [Display(Name = "Sist. Negoc.")]
        public virtual string Tipt
        {
            get;
            set;
        }

        [Display(Name = "Bloomberg")]
        public virtual string Blob
        {
            get;
            set;
        }

        [Display(Name = "Escalão")]
        public virtual string Ctip
        {
            get;
            set;
        }

        [Display(Name = "Reuters")]
        public virtual string Reut
        {
            get;
            set;
        }

        [Display(Name = "D. Custódia")]
        public virtual string Derc
        {
            get;
            set;
        }

        [Display(Name = "NIF")]
        public virtual string Cnif
        {
            get;
            set;
        }
        #region (PAIS EMIT)
        [Display(Name = "País Emit.")]
        public virtual int Cpai
        {
            get;
            set;
        }
        
        public virtual string Dpai
        {
            get;
            set;
        }
        #endregion
        [Display(Name = "Lote mínimo")]
        public virtual decimal Lote
        {
            get;
            set;
        }

        [Display(Name = "Agências")]
        public virtual string Itba
        {
            get;
            set;
        }

        #region PAIS MERCAD
        [Display(Name = "País Mercado")]
        public virtual int Codp
        {
            get;
            set;
        }

        public virtual string Desp
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "NET")]
        public virtual short Iban
        {
            get;
            set;
        }

        [Display(Name = "% Crédito")]
        public virtual decimal Tcre
        {
            get;
            set;
        }

        #region (SEG.CARTEIR)
        [Display(Name = "Seg. Carteira")]
        public virtual string Segc
        {
            get;
            set;
        }

        public virtual string Dseg
        {
            get;
            set;
        }
        #endregion
        
        [Display(Name = "Estado")]
        public virtual string Situ
        {
            get;
            set;
        }

        [Display(Name = "Negociável")]
        public virtual string Nego
        {
            get;
            set;
        }

        #region (ULT.ACTU)
        [Display(Name = "Última Actualização")]
        public virtual int Fech
        {
            get;
            set;
        }

        public virtual string Util
        {
            get;
            set;
        }
        #endregion

        #region (BOLSAS)
        public virtual short Bl01
        {
            get;
            set;
        }

        public virtual short Bl02
        {
            get;
            set;
        }

        public virtual short Bl03
        {
            get;
            set;
        }

        public virtual short Bl04
        {
            get;
            set;
        }

        public virtual short Bl05
        {
            get;
            set;
        }

        public virtual short Bl06
        {
            get;
            set;
        }

        public virtual short Bl07
        {
            get;
            set;
        }

        public virtual short Bl08
        {
            get;
            set;
        }

        public virtual short Bl09
        {
            get;
            set;
        }

        public virtual short Bl10
        {
            get;
            set;
        }

        public virtual short Bl11
        {
            get;
            set;
        }
        
        public virtual short Bl12
        {
            get;
            set;
        }
        
        public virtual short Bl13     
        {
            get;
            set;
        }
        
        public virtual short Bl14
        {
            get;
            set;
        }
        
        public virtual short Bl15
        {
            get;
            set;
        }
        #endregion
       public virtual string Tpin
        {
            get;
            set;
        }

        [Display(Name = "Modalidade (cap/desc)")]
        public virtual string Ipem
        {
            get;
            set;
        }

        [Display(Name = "Taxa Média Emissão")]
        public virtual decimal Inte
        {
            get;
            set;
        }
 
        [Display(Name = "Qtd. Emissão")]
        public virtual long Desd
        {
            get;
            set;
        }

        [Display(Name = "% Isenção")]
        [DisplayFormat(DataFormatString = "{0:C}")]
        public virtual decimal Exen
        {
            get;
            set;
        }

        [Display(Name = "Taxa de Emissão")]
        public virtual decimal Txpr
        {
            get;
            set;
        }

        [Display(Name = "% IRS / IRC")]
        public virtual decimal Rete
        {
            get;
            set;
        }

        [Display(Name = "Prazo da Emissão")]
        public virtual decimal Przd
        {
            get;
            set;
        }

        [Display(Name = "% Juro Diário")]
        public virtual decimal Jurl
        {
            get;
            set;
        }

        [Display(Name = "Base Calculo")]
        public virtual decimal Base
        {
            get;
            set;
        }

        [Display(Name = "Cálculo de Juros")]
        public virtual string Cajr
        {
            get;
            set;
        }

        [Display(Name = "% Juro Anterior")]
        public virtual decimal Tjur
        {
            get;
            set;
        }

        [Display(Name = "Mensualização")]
        public virtual string Imen
        {
            get;
            set;
        }

        [Display(Name = "Tipo Amortização")]
        public virtual string Tipm
        {
            get;
            set;
        }

        [Display(Name = "Data Emissão")]
        public virtual DateTime Emis
        {
            get;
            set;
        }

        [Display(Name = "ISIN Con. BP")]
        public virtual string Isbp
        {
            get;
            set;
        }

        [Display(Name = "Data Amortização")]
        public virtual DateTime Fpro
        {
            get;
            set;
        }
        
        [Display(Name = "Cod. Adic. BP")]
        public virtual string Cida
        {
            get;
            set;
        }
        
        [Display(Name = "Data 1º Cupão")]
        public virtual DateTime Fpri
        {
            get;
            set;
        }

        [Display(Name = "Data BP")]
        public virtual DateTime Fban
        {
            get;
            set;
        }

        [Display(Name = "Cupão Corrido")]
        public virtual string Cupc
        {
            get;
            set;
        }

        [Display(Name = "Venc-1 DD/MM")]
        public virtual DateTime Venc1
        {
            get;
            set;
        }

        [Display(Name = "Venc-2 DD/MM")]
        public virtual DateTime Venc2
        {
            get;
            set;
        }

        [Display(Name = "Venc-3 DD/MM")]
        public virtual DateTime Venc3
        {
            get;
            set;
        }

        [Display(Name = "Venc-4 DD/MM")]
        public virtual DateTime Venc4
        {
            get;
            set;
        }
        #region (WARRANTS)


        [Display(Name = "Tipo Warrant")]
        public virtual string Twar
        {
            get;
            set;
        }

        [Display(Name = "Estilo Warrant")]
        public virtual string Ewar
        {
            get;
            set;
        }

        [Display(Name = "Tipo Exercício")]
        public virtual string Texe
        {
            get;
            set;
        }

        [Display(Name = "Data admissão negociação")]
        public virtual DateTime Fadm
        {
            get;
            set;
        }

        [Display(Name = "Data última negociação")]
        public virtual DateTime Fult
        {
            get;
            set;
        }

        [Display(Name = "Data de vencimento")]
        public virtual DateTime Fven
        {
            get;
            set;
        }

        [Display(Name = "Paridade Warrant")]
        public virtual decimal Pari
        {
            get;
            set;
        }

        [Display(Name = "Lote mínimo para exercício")]
        public virtual int Ltmn
        {
            get;
            set;
        }

        #region (IND.ACTIVO SUBJ.)
        [Display(Name = "Índice Activo Subjacente")]
        public virtual string Isub
        {
            get;
            set;
        }
      
        public virtual string Dsub
        {
            get;
            set;
        }
        #endregion
        [Display(Name = "Moeda Activo Subjacente")]
        public virtual string Smoe
        {
            get;
            set;
        }

        [Display(Name = "Tipo Liquidação")]
        public virtual string Tliq
        {
            get;
            set;
        }

        [Display(Name = "Preço Exercício")]
        public virtual decimal Pexe
        {
            get;
            set;
        }

        [Display(Name = "Nome do Emitente")]
        public virtual string Nemi
        {
            get;
            set;
        }

        [Display(Name = "Nominativo")]
        public virtual string Tivo
        {
            get;
            set;
        }
        #endregion

        [Display(Name = "Novo Valor Unitário")]
        public virtual decimal Nmi2
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
        public virtual decimal Ipri
        {
            get;
            set;
        }

        [Display(Name = "Index Prazo Superior")]
        public virtual decimal Iprs
        {
            get;
            set;
        }

        [Display(Name = "Nº Dias Index Inferior")]
        public virtual int Ndii
        {
            get;
            set;
        }

        [Display(Name = "Nº Dias Index Superior")]
        public virtual int Ndis
        {
            get;
            set;

        }

        [Display(Name = "Indexante")]
        public virtual decimal Indx
        {
            get;
            set;

        }

        [Display(Name = "Spread")]
        public virtual decimal Spre
        {
            get;
            set;

        }

        [Display(Name = "Arredondamento")]
        public virtual decimal Arre
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
        public virtual decimal Tcam
        {
            get;
            set;

        }

        [Display(Name = "Data de Câmbio")]
        public virtual DateTime Dtcm
        {
            get;
            set;
        }
        #endregion
        #region (TAXA MULTIPLA)
        [Display(Name = "Taxa Mínima")]
        public virtual decimal Txmi
        {
            get;
            set;
        }
        [Display(Name = "Taxa Máxima")]
        public virtual decimal Txma
        {
            get;
            set;
        }
        #endregion

        #region (ATRIBUTOS INVESTIMENTO)
        [Display(Name = "Sub-Família")]
        public virtual string SubFamilia
        {
            get;
            set;
        }

        public virtual string SubFamiliaDesc
        {
            get;
            set;
        }

        public virtual string Liquidez
        {
            get;
            set;
        }
        [Display(Name = "Complexidade")]
        public virtual string Complexidade
        {
            get;
            set;
        }

        public virtual string ComplexidadeDesc
        {
            get;
            set;
        }

        public virtual string HorizonteTemporal
        {
            get;
            set;
        }

        public virtual string HorizonteTemporalDesc
        {
            get;
            set;
        }
        [Display(Name = "Zona Geográfica")]
        public virtual string ZonaGeografica
        {
            get;
            set;
        }

        public virtual string ZonaGeograficaDesc
        {
            get;
            set;
        }
        [Display(Name = "OnOff/Regular")]
        public virtual string OnOffRegular
        {
            get;
            set;
        }
        [Display(Name = "Ipad")]
        public virtual string Ipad
        {
            get;
            set;
        }
        [Display(Name = "Nível Risco")]
        public virtual string NivelRisco
        {
            get;
            set;
        }
        [Display(Name = "VaR")]
        public virtual string VaR
        {
            get;
            set;
        }
        [Display(Name = "Data")]
        public virtual string Data
        {
            get;
            set;
        }
        [Display(Name = "Descrição")]
        public virtual string Descricao
        {
            get;
            set;
        }
        [Display(Name = "Cat/Class.Activ.")]
        public virtual string CatClassActiv
        {
            get;
            set;
        }

        public virtual string CatClassActivDesc
        {
            get;
            set;
        }

        public virtual string DataActivacao
        {
            get;
            set;
        }

        public virtual String IPrzAbs
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