using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABCatalogueWebSiteMVC.Models
{
    public class CA29Model 
    {
        /// <summary>
        /// ISIN 
        /// </summary>
        public virtual string Isin
        {
            get;
            set;
        }
        /// <summary>
        /// MOEDA  
        /// </summary>
        public virtual string Cmoe
        {
            get;
            set;
        }
        /// <summary>
        /// ESTADO DO FUNDO
        /// </summary>
        public virtual string Edf
        {
            get;
            set;
        }
        /// <summary>
        /// SUBPRODUTO 
        /// </summary>
        public virtual string Csub
        {
            get;
            set;
        }
        /// <summary>
        /// NOME CURTO
        /// </summary>
        public virtual string NomeCurto
        {
            get;
            set;
        }
        /// <summary>
        /// NOME
        /// </summary>
        public virtual string Nome
        {
            get;
            set;
        }
        /// <summary>
        /// NOME LONGO
        /// </summary>
        public virtual string NomeLongo
        {
            get;
            set;
        }
        #region (CLASSIFICACAO BANKINTER)

        /// <summary>
        /// CATEGORIA DE ATIVOS (CLASSIFICAÇÃO BANKINTER)
        /// </summary>
        public virtual string CategoriaAtivos
        {
            get;
            set;
        }
        /// <summary>
        /// CATEGORIA DE ATIVOS DESCRICAO (CLASSIFICAÇÃO BANKINTER)
        /// </summary>
        public virtual string CategoriaAtivosDescricao
        {
            get;
            set;
        }

        /// <summary>
        /// CLASSE DE ATIVOS (CLASSIFICAÇÃO BANKINTER)
        /// </summary>
        public virtual string ClasseAtivos
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRIÇÃO CLASSE ATIVOS (CLASSIFICAÇÃO BANKINTER)
        /// </summary>
        public virtual string ClasseAtivosDescricao
        {
            get;
            set;
        }
        #endregion
        #region (CLASSIFICACAO ALL FUNDS)
        /// <summary>
        /// CLASSE DE ATIVOS (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string ClasseAtivosAf
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRIÇÃO CLASSE ATIVOS (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string ClasseAtivosDescricaoAf
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO DE ATIVOS (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string TipoAtivos
        {
            get;
            set;
        }
        /// <summary>
        /// AREA GEOGRAFICA (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string AreaGeografica
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRICAO AREA GEOGRAFICA (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string AreaGeograficaDescricao
        {
            get;
            set;
        }
        /// <summary>
        /// Range (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string Range
        {
            get;
            set;
        }
        /// <summary>
        /// Descricao Range (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string RangeDescricao
        {
            get;
            set;
        }
        /// <summary>
        /// ZONA GEOGRAFICA (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string ZonaGeografica
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRIÇÃO ZONA GEOGRAFICA (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string ZonaGeograficaDescricao
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO DE FUNDO (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string TipoFundo
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRICAO TIPO DE FUNDO (CLASSIFICAÇÃO ALL FUNDS)
        /// </summary>
        public virtual string TipoFundoDescricao
        {
            get;
            set;
        }
        #endregion
        #region (SOCIEDADE GESTORA)
        /// <summary>
        /// CODIGO SOC. GESTORA (SOCIEDADE GESTORA)
        /// </summary>
        public virtual string CodSg
        {
            get;
            set;
        }
        /// <summary>
        /// NOME SOC. GESTORA (SOCIEDADE GESTORA)
        /// </summary>
        public virtual string NomeSg
        {
            get;
            set;
        }
        /// <summary>
        /// PAIS SOC. GESTORA (SOCIEDADE GESTORA)
        /// </summary>
        public virtual string PaisSg
        {
            get;
            set;
        }
        /// <summary>
        /// PAIS SOC. GESTORA (SOCIEDADE GESTORA)
        /// </summary>
        public virtual string PaisEmissaoFundo
        {
            get;
            set;
        }
        #endregion
        #region (SICAV)
        /// <summary>
        /// CODIGO SICAV (SICAV)
        /// </summary>
        public virtual string CodSicav
        {
            get;
            set;
        }
        /// <summary>
        /// PAIS SICAV (SICAV)
        /// </summary>
        public virtual string PaisSicav
        {
            get;
            set;
        }
        /// <summary>
        /// DOMICILIO SICAV (SICAV)
        /// </summary>
        public virtual string DomicilioSicav
        {
            get;
            set;
        }
        /// <summary>
        /// NOME SICAV (SICAV)
        /// </summary>
        public virtual string NomeSicav
        {
            get;
            set;
        }
        /// <summary>
        /// NIF EMITENTE (SICAV)
        /// </summary>
        public virtual string NifEmitente
        {
            get;
            set;
        }
        #endregion
        #region (LIDD)
        /// <summary>
        /// RISCO KIDD (LIDD)
        /// </summary>
        public virtual string RiscoKidd
        {
            get;
            set;
        }
        /// <summary>
        /// DATA DO KIID (LIDD)
        /// </summary>
        public virtual string DataKidd
        {
            get;
            set;
        }
        /// <summary>
        /// DATA DO KIID (LIDD)
        /// </summary>
        public virtual string OngoingCharge
        {
            get;
            set;
        }
        #endregion
        #region (DIVIDENDOS)
        /// <summary>
        /// COM DIVIDENDOS (DIVIDENDOS)
        /// </summary>
        public virtual string ComDividendos
        {
            get;
            set;
        }
        /// <summary>
        /// PERIOCIDADE PAG DIVIDENDOS (DIVIDENDOS)
        /// </summary>
        public virtual string PerPagDividendos
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO DE RETENÇÃO DIVIDENDOS (DIVIDENDOS)
        /// </summary>
        public virtual string TipoRetencaoDividendos
        {
            get;
            set;
        }
        #endregion
        #region (OUTRAS CARACTERISTICAS)
        /// <summary>
        /// TIPO DE RETENÇÃO DIVIDENDOS (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string Ucit
        {
            get;
            set;
        }
        /// <summary>
        /// MOEDA TRAILER FEES (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string MoedaTrailerFees
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO PAG. P/ FUNDOS C/ EQUALIZAÇÃO (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string TipoPagFundosEqua
        {
            get;
            set;
        }
        /// <summary>
        /// DECIMAIS MONTANTE (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string DecMte
        {
            get;
            set;
        }
        /// <summary>
        /// INSCOPE ESD (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string Inscope
        {
            get;
            set;
        }
        /// <summary>
        /// CODIGO BLOOMBERG (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string CodBloomberg
        {
            get;
            set;
        }
        /// <summary>
        /// CUSTODIA/DISTRIBUIÇÃO (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string CustDist
        {
            get;
            set;
        }
        /// <summary>
        /// MULTI CONTAS (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string MultiContas
        {
            get;
            set;
        }
        /// <summary>
        /// RET. IMPOSTO SELO (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string CindSelo
        {
            get;
            set;
        }
        /// <summary>
        /// BALCAO OPER (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string CodBalcaoOper
        {
            get;
            set;
        }
        /// <summary>
        /// GESTAO ATIVOS (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string GestaoAtivos
        {
            get;
            set;
        }
        /// <summary>
        /// BENEF (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string Benefic
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO DE VALORAÇÃO (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string TipoVal
        {
            get;
            set;
        }
        /// <summary>
        /// BALCAO ADICIONAL (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string CodBalcaoAdic
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO PROCESSAMENTO (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string TipoProc
        {
            get;
            set;
        }
        /// <summary>
        /// AGRUPAMENTO ESTRATO (OUTRAS CARACTERISTICAS)
        /// </summary>
        public virtual string AgrupEst
        {
            get;
            set;
        }
        #endregion
        #region (COMISSOES)
        /// <summary>
        /// COMISSAO DE GESTAO (COMISSÕES)
        /// </summary>
        public virtual string ComGest
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO COMISSAO SOC. GESTORA (COMISSÕES)
        /// </summary>
        public virtual string ComTipo
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO DISTRIBUIÇÃO (COMISSÕES)
        /// </summary>
        public virtual string ComDist
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO SUBSCRIÇÃO SOC. GESTORA (COMISSÕES)
        /// </summary>
        public virtual string ComSubscrS
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO MAX SUBSCIÇÃO (COMISSÕES)
        /// </summary>
        public virtual string ComMaxSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO DISTRIBUIÇÃO (COMISSÕES)
        /// </summary>
        public virtual string ComDistr
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSÃO RESGATE COS. GESTORA (COMISSÕES)
        /// </summary>
        public virtual string ComResgate
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO MAX RESGATE (COMISSÕES)
        /// </summary>
        public virtual string ComMaxResgate
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO TOTAL (COMISSÕES)
        /// </summary>
        public virtual string ComTotal
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO COMISSAO DO FUNDO (COMISSÕES)
        /// </summary>
        public virtual string TipoComFundo
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO DE DEPOSITO (COMISSÕES)
        /// </summary>
        public virtual string ComDep
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO SUBSCRIÇÃO DO FUNDO (COMISSÕES)
        /// </summary>
        public virtual string ComSubscrFundo
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSAO DE ADMINISTRAÇÃO (COMISSÕES)
        /// </summary>
        public virtual string ComAdm
        {
            get;
            set;
        }
        /// <summary>
        /// COMISSSAO RESGATE DO FUNDO (COMISSÕES)
        /// </summary>
        public virtual string ComResgFundo
        {
            get;
            set;
        }
        #endregion
        #region (COTACOES)        
        /// <summary>
        /// PERIODO DE CORACAO (COTACOES)
        /// </summary>
        public virtual string PeriodoCoracao
        {
            get;
            set;
        }
        /// <summary>
        /// COTAÇÕES P/AGENCIA (COTACOES)
        /// </summary>
        public virtual string CotAgencia
        {
            get;
            set;
        }
        /// <summary>
        /// DECIMAIS COTAÇÕES (COTACOES)
        /// </summary>
        public virtual string DecCot
        {
            get;
            set;
        }
        /// <summary>
        /// COTAÇÕES P/SERVIÇOS (COTACOES)
        /// </summary>
        public virtual string CotSrvc
        {
            get;
            set;
        }
        #endregion
        #region (NEGOCIACAO)
        /// <summary>
        /// CUT OFF SUBSRIÇÕES (NEGOCIAÇÃO)
        /// </summary>
        public virtual string CutOffSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// MONT. MINIMO 1ª SUBSCRIÇÃO (NEGOCIAÇÃO)
        /// </summary>
        public virtual string MinMontSubscrPri
        {
            get;
            set;
        }
        /// <summary>
        /// CUT OFF RESGATES (NEGOCIAÇÃO)
        /// </summary>
        public virtual string CutOffResg
        {
            get;
            set;
        }
        /// <summary>
        /// MONT. MINIMO SUBSCRIÇÃO (NEGOCIAÇÃO)
        /// </summary>
        public virtual string MinMontSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// MINIMO SUBSCRIÇÃO G.A. (NEGOCIAÇÃO)
        /// </summary>
        public virtual string MinSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// % REPARTIÇÃO SUBSCRIÇÃO (NEGOCIAÇÃO)
        /// </summary>
        public virtual string RepSubscrPerc
        {
            get;
            set;
        }
        /// <summary>
        /// % POSIÇÃO MINIMA (NEGOCIAÇÃO)
        /// </summary>
        public virtual string MinPos
        {
            get;
            set;
        }
        /// <summary>
        /// % REPARTIÇÃO RESGATE (NEGOCIAÇÃO)
        /// </summary>
        public virtual string RepResg
        {
            get;
            set;
        }
        /// <summary>
        /// % POSIÇÃO MÁXIMA (NEGOCIAÇÃO)
        /// </summary>
        public virtual string MaxPos
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO SUBSCRIÇÃO (NEGOCIAÇÃO)
        /// </summary>
        public virtual string TipoSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// NOTIFICAÇÃO SUBSCRIÇÕES (NEGOCIAÇÃO)
        /// </summary>
        public virtual string NotifSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO RESGATE (NEGOCIAÇÃO)
        /// </summary>
        public virtual string TipoResg
        {
            get;
            set;
        }
        /// <summary>
        /// DIAS P/NOTIFICAÇÃO SUBS. (NEGOCIAÇÃO)
        /// </summary>
        public virtual string DiasNotifSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO DIAS NOTIFICAÇÃO SUBS. (NEGOCIAÇÃO)
        /// </summary>
        public virtual string TipoDiasNotifSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO SETTLEMENT P/ SUBSCRIÇÕES (NEGOCIAÇÃO)
        /// </summary>
        public virtual string TipoSettlementSubscr
        {
            get;
            set;
        }
        /// <summary>
        /// TIPO SETTLEMENT P/ RESGATES (NEGOCIAÇÃO)
        /// </summary>
        public virtual string TipoSettlementResg
        {
            get;
            set;
        }
        /// <summary>
        /// NOTIFICAÇÃO RESGATES (NEGOCIAÇÃO)
        /// </summary>
        public virtual string NotifResg
        {
            get;
            set;
        }
        /// <summary>
        /// DIAS P/NOTIFICAÇÃO RESG. (NEGOCIAÇÃO)
        /// </summary>
        public virtual string DiasNotifResg
        {
            get;
            set;
        }
        /// <summary>
        /// NEGOCEIA VIA ALL FUNDS? (NEGOCIAÇÃO)
        /// </summary>
        public virtual bool IsAllFunds
        {
            get;
            set;
        }
        #endregion
        #region  (CANAL DE DISTRIBUIÇÃO)        
        /// <summary>
        /// AGENCIAS, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres01
        {
            get;
            set;
        }
        /// <summary>
        ///  AGENCIAS SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub01
        {
            get;
            set;
        }
        /// <summary>
        /// PRIVATE, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres02
        {
            get;
            set;
        }
        /// <summary>
        /// PRIVATE, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub02
        {
            get;
            set;
        }
        /// <summary>
        /// GESTÃO PATRIMONIO, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres03
        {
            get;
            set;
        }
        /// <summary>
        /// GESTAO PATRIMONIO, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub03
        {
            get;
            set;
        }
        /// <summary>
        /// BANKINTER FUNDOS, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres04
        {
            get;
            set;
        }
        /// <summary>
        /// BANKINTER FUNDOS, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub04
        {
            get;
            set;
        }
        /// <summary>
        /// BANKINTER VIDA, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres05
        {
            get;
            set;
        }
        /// <summary>
        /// BANKINTER VIDA, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub05
        {
            get;
            set;
        }
        /// <summary>
        /// INTERNET, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres06
        {
            get;
            set;
        }
        /// <summary>
        /// INTERNET, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub06
        {
            get;
            set;
        }
        /// <summary>
        /// NETBANKING, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres07
        {
            get;
            set;
        }
        /// <summary>
        /// NETBANKING, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool ICOMSUB07
        {
            get;
            set;
        }
        /// <summary>
        /// BANCA TELEFONICA, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres08
        {
            get;
            set;
        }
        /// <summary>
        /// BANCA TELEFONICA, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub08
        {
            get;
            set;
        }
        /// <summary>
        /// CORPORATE, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres09
        {
            get;
            set;
        }
        /// <summary>
        /// CORPORATE, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub09
        {
            get;
            set;
        }
        /// <summary>
        /// PEQ./MÉDIAS EMPRESAS, RESGATES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomres10
        {
            get;
            set;
        }
        /// <summary>
        /// PEQ./MÉDIAS EMPRESAS, SUBSCRIÇÕES (CANAL DE DISTRIBUIÇÃO)
        /// </summary>
        public virtual bool Icomsub10
        {
            get;
            set;
        }
        #endregion
        #region (CONTAS D.O.)
        /// <summary>
        /// CTA D.O. DO FUNDO (CONTAS D.O.)
        /// </summary>
        public virtual string CtaFundo
        {
            get;
            set;
        }
        /// <summary>
        /// DESCTITIVO CTA D.O. DO FUNDO (CONTAS D.O.)
        /// </summary>
        public virtual string CtaFundoDesc
        {
            get;
            set;
        }
        /// <summary>
        /// CTA D.O. CLIENTE S/D.O. (CONTAS D.O.)
        /// </summary>
        public virtual string CtaCliente
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRITIVO CTA D.O. CLIENTE S/ D.O. (CONTAS D.O.)
        /// </summary>
        public virtual string CtaClienteDesc
        {
            get;
            set;
        }
        /// <summary>
        /// CTA D.O. P/ COMISSÕES (CONTAS D.O.)
        /// </summary>
        public virtual string CtaCltCom
        {
            get;
            set;
        }
        /// <summary>
        /// DESCRITIVO CTA D.O. P/ COMISSOES (CONTAS D.O.)
        /// </summary>
        public virtual string CtaCltComDesc
        {
            get;
            set;
        }
        /// <summary>
        /// CTA D.O. CLIENTE S/ MOEDA ESTRANG. (CONTAS D.O.)
        /// </summary>
        public virtual string CtaCltMoeEstra
        {
            get;
            set;
        }
        /// <summary>
        /// CTA D.O. CLIENTE S/ MOEDA ESTRANG. (CONTAS D.O.)
        /// </summary>
        public virtual string CtaCltMoeEstraDesc
        {
            get;
            set;
        }
        /// <summary>
        /// OBSERVAÇÕES (CONTAS D.O.)
        /// </summary>
        public virtual string Observacoes
        {
            get;
            set;
        }
        /// <summary>
        /// ESTAT (CONTAS D.O.)
        /// </summary>
        public virtual string Estat
        {
            get;
            set;
        }
        /// <summary>
        /// T. EXT. (CONTAS D.O.)
        /// </summary>
        public virtual string ExtT
        {
            get;
            set;
        }
        /// <summary>
        /// ORDEM (CONTAS D.O.)
        /// </summary>
        public virtual string Ordem
        {
            get;
            set;
        }
        /// <summary>
        /// SEGM. (CONTAS D.O.)
        /// </summary>
        public virtual string Segm
        {
            get;
            set;
        }
        /// <summary>
        /// ROT. COT. (CONTAS D.O.)
        /// </summary>
        public virtual string RotCot
        {
            get;
            set;
        }
        /// <summary>
        /// VALOR NOMINAL (CONTAS D.O.)
        /// </summary>
        public virtual string NominalVal
        {
            get;
            set;
        }
        /// <summary>
        /// PER. EXT. (CONTAS D.O.)
        /// </summary>
        public virtual string ExtPer
        {
            get;
            set;
        }
        #endregion


        public CA29Model()
        {

        }
    }
}