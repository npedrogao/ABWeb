using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Core.Models
{
    public enum ActivoInactivoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Activo")]
        Activo = 'A',
        [Description("Inactivo")]
        Inactivo = 'I'
    }

    public enum PricingEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Clean")]
        Clean = 'C',
        [Description("Dirty")]
        Dirty = 'D'
    }

    public enum SimNaoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Sim")]
        Sim = 'S',
        [Description("Não")]
        Nao = 'N'
    }


    public enum EstadoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Em Criação")]
        Criacao = 'C',
        [Description("Activo")]
        Activo = 'A',
        [Description("Em Modificação")]
        Modificacao = 'M',
        [Description("Inactivo")]
        Inactivo = 'I'
    }


    public enum TipoCampoEnum
    {
        /// <summary>
        /// Não definido e inesperado
        /// </summary>
        Unknown = 0,
        /// <summary>
        /// Valor textual
        /// </summary>
        String = 1,
        /// <summary>
        /// Valor com casas decimais
        /// </summary>
        Decimal = 2,
        /// <summary>
        /// Data simples formato: ZZ/ZZ/ZZZZ, sem horas minutos e segundos
        /// </summary>
        Data = 3,
        /// <summary>
        /// Caixa de opções com valor e descritivo em texto
        /// </summary>
        ComboBox = 4,
        /// <summary>
        /// Caixa de opções com valor e descritivo em texto
        /// </summary>
        CustomMask = 5,
    }

    public enum TabelaEnum
    {
        [Description("")]
        NULL = 0,
        [Description("TB026")]
        TB026 = 1,
        [Description("TB088")]
        TB088 = 2,
        [Description("TB192")]
        TB192 = 3,
        [Description("TB196")]
        TB196 = 4,
        [Description("TB234")]
        TB234 = 5,
        [Description("TB061")]
        TB061 = 6,
        [Description("TB018")]
        TB018 = 7,
    }

    public enum TipoArredonEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description(" Excesso")]
        Excesso = 'E',
        [Description("Defeito")]
        Defeito = 'D'

    }

    public enum TipoWarrantEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Call")]
        Call = 'C',
        [Description("Put")]
        Put = 'P'

    }

    public enum EstiloWarrantEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Europeu")]
        Europeu = 'E',
        [Description("Americano")]
        Americano = 'A'

    }

    public enum TipoExercicioEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Automático")]
        Automatico = 'E',
        [Description("Não Automático")]
        NaoAutomatico = 'D'

    }

    public enum TipoLiquidaEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Fisica")]
        Fisica = 'A',
        [Description("Financeira")]
        Financeira = 'N'

    }

    public enum PrazoAbsolutoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("A")]
        A = 'A',
        [Description("P")]
        P = 'P',
        [Description("D")]
        D = 'D'
    }

    public enum TipoMercadoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("MER")]
        MER = 'A',
        [Description("MNR")]
        MNR = 'P',
        [Description("NAN")]
        NAN = 'D'
    }

    public enum RiscoProdutoEnum
    {
        [Description(" ")]
        Empty = 9999,
        [Description("Nivel 1")]
        Nivel1 = '1',
        [Description("Nivel 2")]
        Nivel2 = '2',
        [Description("Nivel 3")]
        Nivel3 = '3',
        [Description("Nivel 4")]
        Nivel4 = '4',
        [Description("Nivel 5")]
        Nivel5 = '5'
    }

    public enum TipoAmortizacaoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Q")]
        Q = 'Q',
        [Description("T")]
        T = 'T',
        [Description("A")]
        A = 'A'
    }

    public enum TipoSubscricaoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("T")]
        T = 'T',
        [Description("O")]
        O = 'O',
        [Description("S")]
        S = 'S',
        [Description("R")]
        R = 'R'
    }

    public enum TipoResgateEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Q")]
        Q = 'Q',
        [Description("T")]
        T = 'T',
        [Description("A")]
        A = 'A'
    }

    public enum PeriodoCoracaoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("D")]
        D = 'D',
        [Description("W")]
        W = 'W',
        [Description("Q")]
        Q = 'Q',
        [Description("M")]
        M = 'M',
        [Description("A")]
        A = 'A'
    }


    public enum TipoValoracaoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("F")]
        F = 'F',
        [Description("L")]
        L = 'L'
    }


    public enum CustodiaEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("C")]
        C = 'C',
        [Description("D")]
        D = 'D'
    }

    public enum ElegivelEnum
    {
        [Description(" ")]
        Empty = 9999,
        [Description("0")]
        Nivel0 = 0,
        [Description("100")]
        Nivel100 = 100
    }

    public enum RiscoKiddEnum
    {
        [Description(" ")]
        Empty = 9999,
        [Description("Nivel 1")]
        Nivel1 = 1,
        [Description("Nivel 2")]
        Nivel2 = 2,
        [Description("Nivel 3")]
        Nivel3 = 3,
        [Description("Nivel 4")]
        Nivel4 = 4,
        [Description("Nivel 5")]
        Nivel5 = 5,
        [Description("Nivel 6")]
        Nivel6 = 6,
        [Description("Nivel 7")]
        Nivel7 = 7
    }

    public enum EstadoFundoEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("I")]
        I = 'I',
        [Description("100")]
        A = 'A'
    }

    public enum SitsNegociavelEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("N")]
        N = 'N',
        [Description("P")]
        P = 'P',
        [Description("O")]
        O = 'O',
        [Description("X")]
        X = 'X'

    }

    public enum IbanNetEnum
    {
        [Description(" ")]
        Empty = 9999,
        [Description("Nivel 1")]
        Nivel1 = 1,
        [Description("Nivel 2")]
        Nivel2 = 2,
        [Description("Nivel 3")]
        Nivel3 = 3
    }

    public enum NegociavelEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("S")]
        S = 'S',
        [Description("N")]
        N = 'N',
        [Description("C")]
        C = 'C',
        [Description("V")]
        V = 'V'
    }

    public enum ElegibilidadeEnum
    {
        [Description(" ")]
        Empty = 0,
        [Description("BOE")]
        BOE = 1,
        [Description("ECB")]
        ECB = 2,
        [Description("FED")]
        FED = 3,
        [Description("LCB")]
        LCB = 4,
        [Description("MKT")]
        MKT = 5

    }

    public enum TipoJuroEnum
    {
        [Description(" ")]
        Empty = 9999,
        [Description("Fixo")]
        Fixo = 'F',
        [Description("Var")]
        Var = 'I',
        [Description("Outro")]
        Outro = 'M'
    }

    public enum ModalidadeEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("C")]
        C = 'C',
        [Description("D")]
        D = 'D'
    }

    public enum TipoCalculoJurosEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("Mês")]
        Mes = 'T',
        [Description("Dias")]
        Dias = 'D'
    }

    public enum SenioridadeEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("S")]
        S = 'S',
        [Description("J")]
        J = 'J'
    }

    public enum NumAnoEnum
    {
        [Description(" ")]
        Empty = 0,
        [Description("1")]
        N1 = 1,
        [Description("2")]
        N2 = 2,
        [Description("3")]
        N3 = 3,
        [Description("4")]
        N4 = 4,
        [Description("5")]
        N5 = 5,
        [Description("6")]
        N6 = 6,
        [Description("12")]
        N12 = 12
    }

    public enum IndiceActivoSubjacenteEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("A")]
        A = 'A',
        [Description("I")]
        I = 'I',
        [Description("T")]
        T = 'T'
    }

    public enum OnOffRegularEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("O")]
        O = 'O',
        [Description("R")]
        R = 'R'
    }

    public enum ZeroOrOneEnum
    {
        [Description(" ")]
        Empty = ' ',
        [Description("0")]
        Zero = '0',
        [Description("1")]
        One = '1'
    }

    public enum CustomMaskEnum
    {
        [Description("")]
        NULL,
        [Description("9(?)V9(?)")]
        Decimal,
        [Description("ZZ:ZZ")]
        HoraMinuto,
    }

    #region (HELP ENUMS)
    public enum H1971Enum
    {
        [Description("")]
        NULL,
        [Description("D14")]
        Quinzenal,
        [Description("M01")]
        Mensal,
        [Description("M03")]
        Trimestral,
        [Description("M06")]
        Semestral,
        [Description("M12")]
        Anual,
    }
    public enum H1972Enum
    {
        [Description("")]
        NULL,
        [Description("PE")]
        Pedido,
        [Description("AC")]
        Activo,
        [Description("CA")]
        Cancelado,
    }
    public enum H1974Enum
    {
        [Description("")]
        NULL,
        [Description("N")]
        Nao,
        [Description("S")]
        Sim,  
    }
    public enum H1987Enum
    {
        [Description("")]
        NULL,
        [Description("01")]
        CPH,
        [Description("02")]
        Emprestimo02,
        [Description("03")]
        Emprestimo03,
        [Description("04")]
        Fundo,
    }
    
    public enum H2486Enum
    {
        [Description("")]
        NULL,
        [Description("0")]
        ProdutoNaoMiFID,
        [Description("1")]
        ProdutoMiFIDNaoComplexo,
        [Description("2")]
        InstrumentoFinanceiroDerivado,
        [Description("3")]
        InstrumentoFinanceiroComplexoComCapitalGarantido,
        [Description("4")]
        OutrosInstrumentosFinanceirosNaoCotados,
    }

    public enum H2527Enum
    {
        [Description("")]
        NULL,
        [Description("ACC")]
        Accoes,
        [Description("IND")]
        Indices,
        [Description("TJC")]
        TaxasJuroCurtoPrazo,
        [Description("TCB")]
        TaxasJuroMedioLongoPrazo,
        [Description("CDV")]
        TaxasCambio,
        [Description("MEC")]
        ContratosDerivados,
        [Description("MEC")]
        Mercadorias,
        [Description("OUT")]
        Outros,
    }
    public enum H2627Enum {
        [Description("")]
        NULL,
        [Description("1")]
        ActAct,
        [Description("2")]
        Act360,
        [Description("3")]
        Act365,
        [Description("4")]
        TrintaAct,
            [Description("5")]
        Trinta360,
            [Description("6")]
        Trinta365,
            [Description("7")]
        NLAct,
            [Description("8")]
        NL360,
            [Description("9")]
        NL365,
            [Description("10")]
        ActActNonEom,
            [Description("11")]
        Act360NonEom,
            [Description("12")]
        Act365NonEom,
            [Description("13")]
        TrintaActNonEom,
            [Description("14")]
        Trinta360NonEom,
            [Description("15")]
        Trinta365NonEom,
        [Description("16")]
        NLActNonEom,
            [Description("17")]
        NL360NonEom,
            [Description("18")]
        NL365NonEom,
            [Description("19")]
        IsmaTrintaAct,
            [Description("20")]
        IsmaTrinta360,
        [Description("21")]
        IsmaTrinta365,
        [Description("22")]
        IsmaTrintaActNonEom,
        [Description("23")]
        IsmaTrinta360NonEo,
        [Description("24")]
        IsmaTrinta365NonEom,
        [Description("27")]
        Act364,
        [Description("29")]
        UsMuniTrinta360,
        [Description("30")]
        Act364NonEom,
        [Description("32")]
        MuniTrinta360NonEom,
        [Description("33")]
        BusinessDays252,
        [Description("35")]
        GermanTrinta360,
        [Description("36")]
        BusinessDays252_2,
        [Description("38")]
        GermanTrinta360NonEom,
        [Description("40")]
        UsWitActAct,
        [Description("41")]
        UsWibAct360,
        [Description("101")]
        ActAct_101,
        [Description("102")]
        Act360_102,
        [Description("103")]
        Act365_103,
        [Description("104")]
        Trinta365_104,
        [Description("105")]
        ActAct_105,
        [Description("106")]
        Act360_106,
        [Description("107")]
        Act365_107,
        [Description("108")]
        Act360_180,
        [Description("131")]
        Trinta360_131,
        [Description("900")]
        BaseCalculoLivre,
    }
    public enum H2630Enum {
        [Description("")]
        NULL,
        [Description("N")]
        NegociarEmQuantidadePrecoEmValor,
        [Description("P")]
        NegociarEmMontantePrecoEmPercentagemDoValorNominal,
        [Description("O")]
        NegociarEmQuantidadePrecoEmPercentagemDoValorNominal,
        [Description("X")]
        NegociarEmQuantidadePrecoEmValorMasNaoValoriza
    }
    public enum H2631Enum {
        [Description("")]
        NULL,
        [Description("T1")]
        T1,
        [Description("T2")]
        T2,
        [Description("T3")]
        T3,
        [Description("T4")]
        T4,
        [Description("T5")]
        T5,
        [Description("T6")]
        T6,
        [Description("T7")]
        T7,
        [Description("T8")]
        T8,
        [Description("T9")]
        T9,
        [Description("TA")]
        TA,
        [Description("TB")]
        TB,
        [Description("F1")]
        F1,
        [Description("F2")]
        F2,
        [Description("F3")]
        F3,
        [Description("F4")]
        F4,
        [Description("F5")]
        F5,
        [Description("F6")]
        F6,
        [Description("F7")]
        F7,

    }
    public enum H2632Enum {
        [Description("")]
        NULL,
        [Description("P")]
        Parcial,
        [Description("T")]
        Total,
        [Description("R")]
        Reducao,
        [Description("S")]
        Sorteio,
        [Description("O")]
        Opcional,
    }
    public enum H2642Enum {
        [Description("")]
        NULL,
        [Description("S")]
        Negociavel,
        [Description("N")]
        NaoNegociavel,
        [Description("C")]
        NegociavelCompras,
        [Description("V")]
        NegociavelVendas,

    }
    public enum H2658Enum
    {
        [Description("")]
        NULL,
        [Description("4")]
        Afeganistao,
        [Description("710")]
        AfricaDoSul,
        [Description("988")]
        AfricaOcidental988,
        [Description("998")]
        AfricaOcidental998,
        [Description("248")]
        AlandIslands,
        [Description("8")]
        Albania,
        [Description("276")]
        Alemanha,
        [Description("20")]
        Andorra,
        [Description("24")]
        Angola,
        [Description("660")]
        Anguilla,
        [Description("10")]
        Antartica,
        [Description("807")]
        AntigaRepublicaJugoslavaDaMace,
        [Description("28")]
        AntiguaEBarbuda,
        [Description("530")]
        AntilhasHolandesas530,
        [Description("532")]
        AntilhasHolandesas532,
        [Description("682")]
        ArabiaSaudita,
        [Description("12")]
        Argelia,
        [Description("32")]
        Argentina,
        [Description("51")]
        Armenia,
        [Description("533")]
        Aruba,
        [Description("36")]
        Australia,
        [Description("40")]
        Austria,
        [Description("31")]
        Azerbaijan31,
        [Description("944")]
        Azerbaijan944,
        [Description("44")]
        Bahamas,
        [Description("48")]
        Bahrem,
        [Description("602")]
        BancoCentralEuropeu,
        [Description("601")]
        BancoEuropeuDeInvestimento,
        [Description("900")]
        BancoEuropeuDeInvestimentos,
        [Description("50")]
        Bangladesh,
        [Description("52")]
        Barbados,
        [Description("56")]
        Belgica,
        [Description("84")]
        Belize,
        [Description("204")]
        Benin,
        [Description("60")]
        Bermudas,
        [Description("112")]
        Bielorussia,
        [Description("68")]
        Bolivia,
        [Description("70")]
        BosniaHerzegovina,
        [Description("977")]
        BosnianMarks,
        [Description("72")]
        Botswana,
        [Description("74")]
        Bouvet, Ilha,
        [Description("76")]
        Brasil,
        [Description("986")]
        BrasilVisa,
        [Description("96")]
        BruneiDarussalam,
        [Description("100")]
        Bulgaria,
        [Description("854")]
        BurkinaFaso,
        [Description("108")]
        Burundi,
        [Description("64")]
        Butao,
        [Description("132")]
        CaboVerde,
        [Description("136")]
        Caimans, Ilhas,
        [Description("120")]
        Camaroes,
        [Description("124")]
        Canada,
        [Description("140")]
        Centro,
        [Description("952")]
        CfaFrancs,
        [Description("953")]
        CfpFrancs,
        [Description("148")]
        Chade,
        [Description("200")]
        Checoslovaquia,
        [Description("152")]
        Chile,
        [Description("156")]
        China,
        [Description("196")]
        Chipre,
        [Description("162")]
        ChristmasIlha,
        [Description("166")]
        CocosIlha,
        [Description("170")]
        Colombia,
        [Description("174")]
        Comores,
        [Description("178")]
        Congo,
        [Description("184")]
        CookIlhas,
        [Description("410")]
        CoreiaDoSul,
        [Description("408")]
        CoreiaRepDemocratica,
        [Description("384")]
        CostaDoMarfim,
        [Description("188")]
        CostaRica,
        [Description("191")]
        Croacia,
        [Description("192")]
        Cuba,
        [Description("208")]
        Dinamarca,
        [Description("262")]
        Djibouti,
        [Description("212")]
        Dominica,
        [Description("214")]
        DominicanaRepublica,
        [Description("818")]
        Egipto,
        [Description("222")]
        ElSalvador,
        [Description("784")]
        EmiratosArabesUnidos,
        [Description("218")]
        Equador,
        [Description("232")]
        Eritrea,
        [Description("705")]
        Eslovenia,
        [Description("724")]
        Espanha,
        [Description("840")]
        EstadosUnidosAmerica,
        [Description("233")]
        Estonia,
        [Description("230")]
        Etiopia230,
        [Description("231")]
        Etiopia231,
        [Description("238")]
        FalklandsIlhas,
        [Description("643")]
        FederacaoRussa,
        [Description("234")]
        FeroeIlhas,
        [Description("242")]
        Fidji,
        [Description("608")]
        Filipinas,
        [Description("246")]
        Finlandia,
        [Description("250")]
        Franca,
        [Description("950")]
        FrancoCentro,
        [Description("266")]
        Gabao,
        [Description("270")]
        Gambia,
        [Description("288")]
        Gana,
        [Description("268")]
        Georgia,
        [Description("239")]
        GeorgiaDoSul,
        [Description("981")]
        GeorgianLari,
        [Description("292")]
        Gibraltar,
        [Description("308")]
        Granada,
        [Description("300")]
        Grecia,
        [Description("951")]
        Grenada,
        [Description("304")]
        Gronelandia,
        [Description("312")]
        Guadalupe,
        [Description("316")]
        Guam,
        [Description("320")]
        Guatemala,
        [Description("831")]
        Guernsey,
        [Description("328")]
        Guiana,
        [Description("254")]
        GuianaFrancesa,
        [Description("324")]
        Guine,
        [Description("624")]
        GuineBissau,
        [Description("226")]
        GuineEquatorial,
        [Description("332")]
        Haiti,
        [Description("334")]
        HeardEMcdonaldIlhas,
        [Description("528")]
        Holanda,
        [Description("340")]
        Honduras,
        [Description("344")]
        HongKong,
        [Description("348")]
        Hungria,
        [Description("887")]
        Iemen,
        [Description("581")]
        IlhasMenoresExteriores,
        [Description("92")]
        IlhasVirgensBritanicas,
        [Description("356")]
        India,
        [Description("360")]
        Indonesia,
        [Description("365")]
        IranianAirlineRate,
        [Description("364")]
        Irao,
        [Description("368")]
        Iraque,
        [Description("372")]
        Irlanda,
        [Description("352")]
        Islandia,
        [Description("833")]
        IsleOfMan,
        [Description("376")]
        Israel,
        [Description("380")]
        Italia,
        [Description("388")]
        Jamaica,
        [Description("392")]
        Japao,
        [Description("832")]
        Jersey,
        [Description("400")]
        Jordania,
        [Description("890")]
        Jugoslavia890,
        [Description("891")]
        Jugoslavia891,
        [Description("116")]
        KampucheaDemocratico,
        [Description("398")]
        Kazaquistao,
        [Description("296")]
        Kiribati,
        [Description("414")]
        Koweit,
        [Description("418")]
        Laos,
        [Description("426")]
        Lesoto,
        [Description("428")]
        Letonia,
        [Description("422")]
        Libano,
        [Description("430")]
        Liberia,
        [Description("434")]
        Libia,
        [Description("438")]
        Liechtenstein,
        [Description("440")]
        Lituania,
        [Description("442")]
        Luxemburgo,
        [Description("446")]
        Macau,
        [Description("450")]
        Madagascar,
        [Description("458")]
        Malasia,
        [Description("454")]
        Malawi,
        [Description("462")]
        Maldivas,
        [Description("466")]
        Mali,
        [Description("470")]
        Malta,
        [Description("580")]
        MarianasDoNorteIlhas,
        [Description("504")]
        Marrocos,
        [Description("584")]
        MarshallIlhas,
        [Description("474")]
        Martinica,
        [Description("480")]
        Mauricia,
        [Description("478")]
        Mauritania,
        [Description("175")]
        Mayotte,
        [Description("484")]
        Mexico,
        [Description("583")]
        Micronesia,
        [Description("508")]
        Mocambique,
        [Description("498")]
        Moldavia,
        [Description("492")]
        Monaco,
        [Description("496")]
        Mongolia,
        [Description("499")]
        Montenegro,
        [Description("500")]
        Montserrat,
        [Description("104")]
        Myanmar,
        [Description("516")]
        Namibia,
        [Description("520")]
        Nauru,
        [Description("524")]
        Nepal,
        [Description("558")]
        Nicaragua,
        [Description("562")]
        Niger,
        [Description("566")]
        Nigeria,
        [Description("570")]
        Niue,
        [Description("574")]
        NorfolkIlha,
        [Description("578")]
        Noruega,
        [Description("540")]
        NovaCaledonia,
        [Description("554")]
        NovaZelandia,
        [Description("86")]
        OceanoIndico,
        [Description("512")]
        Oman,
        [Description("585")]
        Palau,
        [Description("590")]
        Panama590,
        [Description("591")]
        Panama591,
        [Description("598")]
        PapuasiaNovaGuine,
        [Description("586")]
        Paquistao,
        [Description("600")]
        Paraguai,
        [Description("604")]
        Peru,
        [Description("612")]
        PitcairnIlha,
        [Description("258")]
        PolinesiaFrancesa,
        [Description("616")]
        Polonia,
        [Description("630")]
        PortoRico,
        [Description("620")]
        Portugal,
        [Description("634")]
        Qatar,
        [Description("404")]
        Quenia,
        [Description("826")]
        ReinoUnido,
        [Description("203")]
        RepublicaCheca,
        [Description("180")]
        RepublicaDemocraticaDoCongo,
        [Description("417")]
        RepublicaDoQuirguistao,
        [Description("703")]
        RepublicaEslovaca,
        [Description("638")]
        Reuniao,
        [Description("642")]
        Romenia,
        [Description("646")]
        Ruanda,
        [Description("732")]
        SaaraOcidental,
        [Description("652")]
        SaintBarthelemy,
        [Description("663")]
        SaintMartin,
        [Description("90")]
        SalomanIlhas,
        [Description("882")]
        Samoa,
        [Description("16")]
        SamoaAmericanas,
        [Description("654")]
        SantaHelena,
        [Description("662")]
        SantaLucia,
        [Description("674")]
        SaoMarino,
        [Description("666")]
        SaoPedroEMicuelon,
        [Description("678")]
        SaoTomeEPrincipe,
        [Description("670")]
        SaoVicenteEGranadinas,
        [Description("686")]
        Senegal,
        [Description("694")]
        SerraLeoa,
        [Description("688")]
        Servia,
        [Description("690")]
        Seychelles,
        [Description("702")]
        Singapura,
        [Description("760")]
        Siria,
        [Description("706")]
        Somalia,
        [Description("144")]
        SriLanka,
        [Description("659")]
        StKitts,
        [Description("748")]
        Suazilandia,
        [Description("737")]
        SudanAirlineRate,
        [Description("736")]
        Sudao,
        [Description("752")]
        Suecia,
        [Description("740")]
        Suriname,
        [Description("744")]
        SvalbardIlhaMayen,
        [Description("756")]
        Switzerland,
        [Description("764")]
        Tailandia,
        [Description("158")]
        Taiwan,
        [Description("762")]
        TajikistanRepublica,
        [Description("834")]
        Tanzania,
        [Description("901")]
        Taywan,
        [Description("260")]
        TerritoriosFrancesesDoSul,
        [Description("275")]
        TerritoriosOcupadosDaPalestina,
        [Description("626")]
        TimorLeste,
        [Description("768")]
        Togo,
        [Description("772")]
        Tokelau,
        [Description("776")]
        Tonga,
        [Description("780")]
        TrindadeTobago,
        [Description("788")]
        Tunisia,
        [Description("796")]
        TurcasCaiquesIlhas,
        [Description("795")]
        Turkmenistan,
        [Description("792")]
        Turquia,
        [Description("798")]
        Tuvalu,
        [Description("804")]
        Ucrania,
        [Description("800")]
        Uganda,
        [Description("980")]
        UkranianHyrvnia,
        [Description("978")]
        UniaoEuropeia,
        [Description("810")]
        Urss,
        [Description("858")]
        Uruguai,
        [Description("860")]
        UzbekistanRepublica,
        [Description("548")]
        Vanuatu,
        [Description("336")]
        Vaticano,
        [Description("862")]
        Venezuela,
        [Description("704")]
        Vietname,
        [Description("850")]
        VirgensAmericanasIlhas,
        [Description("876")]
        WallisFutunaIlhas,
        [Description("886")]
        YenemiRial,
        [Description("894")]
        Zambia,
        [Description("716")]
        Zimbabwe,
        [Description("985")]
        Zloty,
    }
    public enum H2660Enum { //ver html 
    }
    public enum H2661Enum { //ver html
    }
    public enum H2666Enum
    {
        [Description("")]
        NULL,
        [Description("0")]
        EspecieNaoElegivel,
        [Description("100")]
        EspecieElegivel,
    }
    public enum H2683Enum {
        [Description("")]
        NULL,
        [Description("DIA")]
        Diaria,
        [Description("1WK")]
        Semanal,
        [Description("2WK")]
        Quinzenal,
        [Description("M00")]
        Mensal,
        [Description("02M")]
        Bimestral,
        [Description("03M")]
        Trimestral,
        [Description("04M")]
        Quadrimestral,
        [Description("06M")]
        Semestral,
        [Description("12M")]
        Anual                            
    }
    public enum H3177Enum
    {
        [Description("")]
        NULL,
        [Description("402")]
        EURIBOR365_1M = 1,
        [Description("702")]
        EURIBOR365_1W = 2,
        [Description("705")]
        EURIBOR365_2M = 3,
        [Description("703")]
        EURIBOR365_2W = 4,
        [Description("404")]
        EURIBOR365_3M = 5,
        [Description("704")]
        EURIBOR365_3W = 6,
        [Description("706")]
        EURIBOR365_4M = 7,
        [Description("707")]
        EURIBOR365_7M = 8,
        [Description("407")]
        EURIBOR365_6M = 9,
        [Description("708")]
        EURIBOR365_7M2 = 10,
        [Description("709")]
        EURIBOR365_8M = 11,
        [Description("710")]
        EURIBOR365_9M = 11,
        [Description("711")]
        EURIBOR365_10M = 12,
        [Description("712")]
        EURIBOR365_12M = 13,
    }
    #endregion
}
