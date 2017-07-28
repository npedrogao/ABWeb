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

    public enum KeyValueSourceEnum
    {
        /// <summary>
        /// O valor vem do valor interno do enumerado e o texto do próprio enumerado
        /// Ex: Empty = 'D' 
        ///     Output: Valor: D Texto: Empty
        /// </summary>
        ValueFromEnumVal_TextFromEnum = 1,

        /// <summary>
        /// O value vem da anotação "Description" e o texto do próprio enumerado
        /// Ex: Description("ABC")
        ///     Empty = 'D'
        ///     Output: Valor: ABC Texto: ABC
        /// </summary>
        ValueFromDescTextFromEnum = 2,

        /// <summary>
        /// O texto vem da anotação "Description" e o valor do próprio texto do enumerado
        /// Ex: Description("XPTO")
        ///     F42 = 'D'
        ///     Output: Valor: F42 Texto: XPTO
        /// </summary>
        ValueFromFromEnumTxtTextFromDesc = 3,
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
        [Description("AB_WEB_CORE_ERRORCODES")]
        AB_WEB_CORE_ERRORCODES = 8,
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
        NULL = 9999,
        [Description("9(?)V9(?)")]
        Decimal = 1,
        [Description("ZZ:ZZ")]
        HoraMinuto = 2,
    }

    #region (HELP ENUMS)
    public enum H1971Enum
    {
        [Description("")]
        NULL = 0,
        [Description("D14 - Quinzenal")]
        D14 = 1,
        [Description("M01 - Mensal")]
        M01 = 2,
        [Description("M06 - Semestral")]
        M06 = 3,
        [Description("M12 - Anual")]
        M12 = 4,
    }
    public enum H1972Enum
    {
        [Description("")]
        NULL = ' ',
        [Description("PE")]
        Pedido = 'P',
        [Description("AC")]
        Activo = 'A',
        [Description("CA")]
        Cancelado = 'C',
    }
    public enum H1974Enum
    {
        [Description("")]
        NULL = ' ',
        [Description("N")]
        Nao = 'N',
        [Description("S")]
        Sim = 'S',
    }
    public enum H1987Enum
    {
        [Description("")]
        NULL = 0,
        [Description("01")]
        CPH = 1,
        [Description("02")]
        Emprestimo02 = 2,
        [Description("03")]
        Emprestimo03 = 3,
        [Description("04")]
        Fundo = 4,
    }

    public enum H2486Enum
    {
        [Description("")]
        NULL = 9999, //n pode ser 0
        [Description("Produto Não MiFID")]
        ProdutoNaoMiFID = 0,
        [Description("Produto MiFID Não Complexo")]
        ProdutoMiFIDNaoComplexo = 1,
        [Description("Instrumento Financeiro Derivado")]
        InstrumentoFinanceiroDerivado = 2,
        [Description("Instrumento Financeiro Complexo com Capital Garantido")]
        InstrumentoFinanceiroComplexoComCapitalGarantido = 3,
        [Description("Outros Instrumentos Financeiros Não Cotados")]
        OutrosInstrumentosFinanceirosNaoCotados = 4,
    }

    public enum H2527Enum
    {
        [Description("")]
        NULL = 0,
        [Description("para acções")]
        ACC = 1,
        [Description("para índices")]
        IND = 2,
        [Description("para taxas de juro de curto prazo (inferior a 1 ano)")]
        TJC = 3,
        [Description("para taxas de juro de médio e longo prazo")]
        TJL = 4,
        [Description("para taxas de câmbio")]
        TCB = 5,
        [Description("para contratos derivados")]
        CDV = 6,
        [Description("para mercadorias")]
        MEC = 7,
        [Description("para outros subjacentes não específicados anteriormente")]
        OUT = 7,
    }
    public enum H2627Enum
    {
        [Description("")]
        NULL = 0,
        [Description("ACT/ACT")]
        ActAct = 1,
        [Description("ACT/360")]
        Act360 = 2,
        [Description("ACT/365")]
        Act365 = 3,
        [Description("30/ACT")]
        TrintaAct = 4,
        [Description("30/360")]
        Trinta360 = 5,
        [Description("30/365")]
        Trinta365 = 6,
        [Description("NL/ACT")]
        NLAct = 7,
        [Description("NL/360")]
        NL360 = 8,
        [Description("NL/365")]
        NL365 = 9,
        [Description("ACT/ACT NON-EOM")]
        ActActNonEom = 10,
        [Description("ACT/360 NON-EOM")]
        Act360NonEom = 11,
        [Description("ACT/365 NON-EOM")]
        Act365NonEom = 12,
        [Description("30/ACT NON-EOM")]
        TrintaActNonEom = 13,
        [Description("30/360 NON-EOM")]
        Trinta360NonEom = 14,
        [Description("30/365 NON-EOM")]
        Trinta365NonEom = 15,
        [Description("NL/ACT NON-EOM")]
        NLActNonEom = 16,
        [Description("NL/360 NON-EOM")]
        NL360NonEom = 17,
        [Description("NL/365 NON-EOM")]
        NL365NonEom = 18,
        [Description("ISMA-30/ACT")]
        IsmaTrintaAct = 19,
        [Description("ISMA-30/360")]
        IsmaTrinta360 = 20,
        [Description("ISMA-30/365")]
        IsmaTrinta365 = 21,
        [Description("ISMA30/ACT NON-EOM")]
        IsmaTrintaActNonEom = 22,
        [Description("ISMA-30/360 NON-EO")]
        IsmaTrinta360NonEo = 23,
        [Description("ISMA30/365 NON-EOM")]
        IsmaTrinta365NonEom = 24,
        [Description("ACT/364")]
        Act364 = 27,
        [Description("US MUNI: 30/360")]
        UsMuniTrinta360 = 29,
        [Description("ACT/364 NON-EOM")]
        Act364NonEom = 30,
        [Description("MUNI30/360 NON-EOM")]
        MuniTrinta360NonEom = 32,
        [Description("BUSINESS DAYS/252")]
        BusinessDays252 = 33,
        [Description("GERMAN:30/360")]
        GermanTrinta360 = 35,
        [Description("BUSINESS DAYS/252")]
        BusinessDays252_2 = 36,
        [Description("GER:30/360 NON-EOM")]
        GermanTrinta360NonEom = 38,
        [Description("US:WIT ACT/ACT")]
        UsWitActAct = 40,
        [Description("US:WIB ACT/360")]
        UsWibAct360 = 41,
        [Description("ACT/ACT(101)")]
        ActAct_101 = 101,
        [Description("ACT/360(102)")]
        Act360_102 = 102,
        [Description("ACT/365(103)")]
        Act365_103 = 103,
        [Description("30/360(104)")]
        Trinta365_104 = 104,
        [Description("ACT/ACT(105)")]
        ActAct_105 = 105,
        [Description("ACT/360(106)")]
        Act360_106 = 106,
        [Description("ACT/365(107)")]
        Act365_107 = 107,
        [Description("ACT/360(108)")]
        Act360_108 = 108,
        [Description("30/360: 131")]
        Trinta360_131 = 131,
        [Description("Base de Calculo Livre(Dias/Meses)")]
        BaseCalculoLivre = 900,
    }
    public enum H2630Enum
    {
        [Description("")]
        NULL = ' ',
        [Description("Negociar em quantidade e o preço é em valor")]
        N = 'N',
        [Description("Negociar em montante e o preço é em percentagem do valor nominal")]
        P = 'P',
        [Description("Negociar em quantidade o preço é em percentagem do valor nominal")]
        O = 'O',
        [Description("Negociar em quantidade e o preço é em valor mas não valoriza (futuros)")]
        X = 'X'
    }
    public enum H2631Enum
    {
        [Description("")]
        NULL = 0,
        [Description("T1")]
        T1 = 1,
        [Description("T2")]
        T2 = 2,
        [Description("T3")]
        T3 = 3,
        [Description("T4")]
        T4 = 4,
        [Description("T5")]
        T5 = 5,
        [Description("T6")]
        T6 = 6,
        [Description("T7")]
        T7 = 7,
        [Description("T8")]
        T8 = 8,
        [Description("T9")]
        T9 = 9,
        [Description("TA")]
        TA = 10,
        [Description("TB")]
        TB = 11,
        [Description("F1")]
        F1 = 12,
        [Description("F2")]
        F2 = 13,
        [Description("F3")]
        F3 = 14,
        [Description("F4")]
        F4 = 15,
        [Description("F5")]
        F5 = 16,
        [Description("F6")]
        F6 = 17,
        [Description("F7")]
        F7 = 18,

    }
    public enum H2632Enum
    {
        [Description("")]
        NULL = ' ',
        [Description("P")]
        Parcial = 'P',
        [Description("TOTAL")]
        Total = 'T',
        [Description("REDUCAO")]
        Reducao = 'R',
        [Description("SORTEIO")]
        Sorteio = 'S',
        [Description("OPCIONAL")]
        Opcional = 'O',
    }
    public enum H2642Enum
    {
        [Description("")]
        NULL = ' ',
        [Description("Negociável")]
        S = 'S',
        [Description("Não negociável")]
        N = 'N',
        [Description("Negociável para compras")]
        C = 'C',
        [Description("Negociável para vendas")]
        V = 'V',
    }
    public enum H2658Enum
    {
        [Description("")]
        NULL = 0,
        [Description("Afeganistao")]
        Afeganistao = 4,
        [Description("Africa Do Sul")]
        AfricaDoSul = 710,
        [Description("Africa Ocidental")]
        AfricaOcidental = 988,
        [Description("Africa Ocidental")]
        AfricaOcidental2 = 998,
        [Description("Aland Islands")]
        AlandIslands = 248,
        [Description("Albania")]
        Albania = 8,
        [Description("Alemanha")]
        Alemanha = 276,
        [Description("Andorra")]
        Andorra = 20,
        [Description("Angola")]
        Angola = 24,
        [Description("Anguilla")]
        Anguilla = 660,
        [Description("Antartica")]
        Antartica = 10,
        [Description("Antiga Republica Jugoslava Da Mace")]
        AntigaRepublicaJugoslavaDaMace = 807,
        [Description("Antigua E Barbuda")]
        AntiguaEBarbuda = 28,
        [Description("Antilhas Holandesas")]
        AntilhasHolandesas = 530,
        [Description("Antilhas Holandesas")]
        AntilhasHolandesas2 = 532,
        [Description("Arabia Saudita")]
        ArabiaSaudita = 682,
        [Description("Argelia")]
        Argelia = 12,
        [Description("Argentina")]
        Argentina = 32,
        [Description("Armenia")]
        Armenia = 51,
        [Description("Aruba")]
        Aruba = 533,
        [Description("Australia")]
        Australia = 36,
        [Description("Austria")]
        Austria = 40,
        [Description("Azerbaijan")]
        Azerbaijan = 31,
        [Description("Azerbaijan")]
        Azerbaijan2 = 944,
        [Description("Bahamas")]
        Bahamas = 44,
        [Description("Bahrem")]
        Bahrem = 48,
        [Description("Banco Central Europeu")]
        BancoCentralEuropeu = 602,
        [Description("Banco Europeu De Investimento")]
        BancoEuropeuDeInvestimento = 601,
        [Description("Banco Europeu De Investimentos")]
        BancoEuropeuDeInvestimentos = 900,
        [Description("Bangladesh")]
        Bangladesh = 50,
        [Description("Barbados")]
        Barbados = 52,
        [Description("Belgica")]
        Belgica = 56,
        [Description("Belize")]
        Belize = 84,
        [Description("Benin")]
        Benin = 204,
        [Description("Bermudas")]
        Bermudas = 60,
        [Description("Bielorussia, R.S.S.")]
        BielorussiaRSS = 112,
        [Description("Bolivia")]
        Bolivia = 68,
        [Description("Bosnia E Herzegovina")]
        BosniaEHerzegovina = 70,
        [Description("Bosnian Marks")]
        BosnianMarks = 977,
        [Description("Botswana")]
        Botswana = 72,
        [Description("Bouvet, Ilha")]
        Bouvet, Ilha = 74,
        [Description("Brasil")]
        Brasil = 76,
        [Description("Brasil (Visa)")]
        BrasilVisa = 986,
        [Description("Brunei Darussalam")]
        BruneiDarussalam = 96,
        [Description("Bulgaria")]
        Bulgaria = 100,
        [Description("Burkina Faso")]
        BurkinaFaso = 854,
        [Description("Burundi")]
        Burundi = 108,
        [Description("Butao")]
        Butao = 64,
        [Description("Cabo Verde")]
        CaboVerde = 132,
        [Description("Caimans, Ilhas")]
        Caimans, Ilhas = 136,
        [Description("Camaroes")]
        Camaroes = 120,
        [Description("Canada")]
        Canada = 124,
        [Description("Centro")]
        Centro = 140,
        [Description("Cfa Francs")]
        CfaFrancs = 952,
        [Description("Cfp Francs")]
        CfpFrancs = 953,
        [Description("Chade")]
        Chade = 148,
        [Description("Checoslovaquia")]
        Checoslovaquia = 200,
        [Description("Chile")]
        Chile = 152,
        [Description("China, Republica Popular Da")]
        ChinaRepublicaPopularDa = 156,
        [Description("Chipre")]
        Chipre = 196,
        [Description("Christmas, Ilha")]
        ChristmasIlha = 162,
        [Description("Cocos (Keeling), Ilha Dos")]
        CocosKeelingIlhaDos = 166,
        [Description("Colombia")]
        Colombia = 170,
        [Description("Comores")]
        Comores = 174,
        [Description("Congo")]
        Congo = 178,
        [Description("Cook, Ilhas")]
        CookIlhas = 184,
        [Description("Coreia Do Sul")]
        CoreiaDoSul = 410,
        [Description("Coreia, Rep.Democratica Da")]
        CoreiaRepDemocraticaDa = 408,
        [Description("Costa Do Marfim")]
        CostaDoMarfim = 384,
        [Description("Costa Rica")]
        CostaRica = 188,
        [Description("Croacia")]
        Croacia = 191,
        [Description("Cuba")]
        Cuba = 192,
        [Description("Dinamarca")]
        Dinamarca = 208,
        [Description("Djibouti")]
        Djibouti = 262,
        [Description("Dominica")]
        Dominica = 212,
        [Description("Dominicana, Republica")]
        DominicanaRepublica = 214,
        [Description("Egipto")]
        Egipto = 818,
        [Description("El Salvador")]
        ElSalvador = 222,
        [Description("Emiratos Arabes Unidos")]
        EmiratosArabesUnidos = 784,
        [Description("Equador")]
        Equador = 218,
        [Description("Eritrea")]
        Eritrea = 232,
        [Description("Eslovenia")]
        Eslovenia = 705,
        [Description("Espanha")]
        Espanha = 724,
        [Description("Estados Unidos America")]
        EstadosUnidosAmerica = 840,
        [Description("Estonia")]
        Estonia = 233,
        [Description("Etiopia")]
        Etiopia = 230,
        [Description("Etiopia")]
        Etiopia2 = 231,
        [Description("Falklands, Ilhas (Malvinas)")]
        FalklandsIlhasMalvinas=238,
        [Description("Federacao Russa")]
        FederacaoRussa = 643,
        [Description("Feroe, Ilhas")]
        FeroeIlhas = 234,
        [Description("Fidji")]
        Fidji = 242,
        [Description("Filipinas")]
        Filipinas = 608,
        [Description("Finlandia")]
        Finlandia = 246,
        [Description("Franca")]
        Franca = 250,
        [Description("Franco Centro")]
        FrancoCentro = 950,
        [Description("Gabao")]
        Gabao = 266,
        [Description("Gambia")]
        Gambia = 270,
        [Description("Gana")]
        Gana = 288,
        [Description("Georgia")]
        Georgia = 268,
        [Description("Georgia Do Sul")]
        GeorgiaDoSul = 239,
        [Description("Georgian Lari")]
        GeorgianLari = 981,
        [Description("Gibraltar")]
        Gibraltar = 292,
        [Description("Granada")]
        Granada = 308,
        [Description("Grecia")]
        Grecia = 300,
        [Description("Grenada")]
        Grenada = 951,
        [Description("Gronelandia")]
        Gronelandia = 304,
        [Description("Guadalupe")]
        Guadalupe = 312,
        [Description("Guam")]
        Guam = 316,
        [Description("Guatemala")]
        Guatemala = 320,
        [Description("Guernsey")]
        Guernsey = 831,
        [Description("Guiana")]
        Guiana = 328,
        [Description("Guiana Francesa")]
        GuianaFrancesa = 254,
        [Description("Guine")]
        Guine = 324,
        [Description("Guine Bissau")]
        GuineBissau = 624,
        [Description("Guine Equatorial")]
        GuineEquatorial = 226,
        [Description("Haiti")]
        Haiti = 332,
        [Description("Heard E Mcdonald, Ilhas")]
        HeardEMcdonaldIlhas = 334,
        [Description("Holanda")]
        Holanda = 528,
        [Description("Honduras")]
        Honduras = 340,
        [Description("Hong Kong")]
        HongKong = 344,
        [Description("Hungria")]
        Hungria = 348,
        [Description("Iemen")]
        Iemen = 887,
        [Description("Ilhas Menores Exteriores (Estados")]
        IlhasMenoresExterioresEstados = 581,
        [Description("Ilhas Virgens Britanicas")]
        IlhasVirgensBritanicas = 92,
        [Description("India")]
        India = 356,
        [Description("Indonesia")]
        Indonesia = 360,
        [Description("Iranian Airline Rate")]
        IranianAirlineRate = 365,
        [Description("Irao")]
        Irao = 364,
        [Description("Iraque")]
        Iraque = 368,
        [Description("Irlanda")]
        Irlanda = 372,
        [Description("Islandia")]
        Islandia = 352,
        [Description("Isle Of Man")]
        IsleOfMan = 833,
        [Description("Israel")]
        Israel = 376,
        [Description("Italia")]
        Italia = 380,
        [Description("Jamaica")]
        Jamaica = 388,
        [Description("Japao")]
        Japao = 392,
        [Description("Jersey")]
        Jersey = 832,
        [Description("Jordania")]
        Jordania = 400,
        [Description("Jugoslavia")]
        Jugoslavia = 890,
        [Description("Jugoslavia")]
        Jugoslavia2 = 891,
        [Description("Kampuchea Democratico")]
        KampucheaDemocratico = 116,
        [Description("Kazaquistao")]
        Kazaquistao = 398,
        [Description("Kiribati")]
        Kiribati = 296,
        [Description("Koweit")]
        Koweit = 414,
        [Description("Laos, Republica Democratica Popula")]
        LaosRepublicaDemocraticaPopula = 418,
        [Description("Lesoto")]
        Lesoto = 426,
        [Description("Letonia, Republica")]
        LetoniaRepublica = 428,
        [Description("Libano")]
        Libano = 422,
        [Description("Liberia")]
        Liberia = 430,
        [Description("Libia, Jamahiriya Arabe")]
        LibiaJamahiriyaArabe = 434,
        [Description("Liechtenstein")]
        Liechtenstein = 438,
        [Description("Lituania")]
        Lituania = 440,
        [Description("Luxemburgo")]
        Luxemburgo = 442,
        [Description("Macau")]
        Macau = 446,
        [Description("Madagascar")]
        Madagascar = 450,
        [Description("Malasia")]
        Malasia = 458,
        [Description("Malawi")]
        Malawi = 454,
        [Description("Maldivas")]
        Maldivas = 462,
        [Description("Mali")]
        Mali = 466,
        [Description("Malta")]
        Malta = 470,
        [Description("Marianas Do Norte, Ilhas")]
        MarianasDoNorteIlhas = 580,
        [Description("Marrocos")]
        Marrocos = 504,
        [Description("Marshall, Ilhas")]
        MarshallIlhas = 584,
        [Description("Martinica")]
        Martinica = 474,
        [Description("Mauricia")]
        Mauricia = 480,
        [Description("Mauritania")]
        Mauritania = 478,
        [Description("Mayotte")]
        Mayotte = 175,
        [Description("Mexico")]
        Mexico = 484,
        [Description("Micronesia")]
        Micronesia = 583,
        [Description("Mocambique")]
        Mocambique = 508,
        [Description("Moldavia")]
        Moldavia = 498,
        [Description("Monaco")]
        Monaco = 492,
        [Description("Mongolia")]
        Mongolia = 496,
        [Description("Montenegro")]
        Montenegro = 499,
        [Description("Montserrat")]
        Montserrat = 500,
        [Description("Myanmar")]
        Myanmar = 104,
        [Description("Namibia")]
        Namibia = 516,
        [Description("Nauru")]
        Nauru = 520,
        [Description("Nepal")]
        Nepal = 524,
        [Description("Nicaragua")]
        Nicaragua = 558,
        [Description("Niger")]
        Niger = 562,
        [Description("Nigeria")]
        Nigeria = 566,
        [Description("Niue")]
        Niue = 570,
        [Description("Norfolk, Ilha")]
        NorfolkIlha = 574,
        [Description("Noruega")]
        Noruega = 578,
        [Description("Nova Caledonia")]
        NovaCaledonia = 540,
        [Description("Nova Zelandia")]
        NovaZelandia = 554,
        [Description("Oceano Indico, Ter. Brit.Do")]
        OceanoIndicoTerBritDo = 86,
        [Description("Oman")]
        Oman = 512,
        [Description("Palau")]
        Palau = 585,
        [Description("Panama")]
        Panama = 590,
        [Description("Panama")]
        Panama2 = 591,
        [Description("Papuasia Nova Guine")]
        PapuasiaNovaGuine = 598,
        [Description("Paquistao")]
        Paquistao = 586,
        [Description("Paraguai")]
        Paraguai = 600,
        [Description("Peru")]
        Peru = 604,
        [Description("Pitcairn, Ilha")]
        PitcairnIlha = 612,
        [Description("Polinesia Francesa")]
        PolinesiaFrancesa = 258,
        [Description("Polonia")]
        Polonia = 616,
        [Description("Porto Rico")]
        PortoRico = 630,
        [Description("Portugal")]
        Portugal = 620,
        [Description("Qatar")]
        Qatar = 634,
        [Description("Quenia")]
        Quenia = 404,
        [Description("Reino Unido")]
        ReinoUnido = 826,
        [Description("Republica Checa")]
        RepublicaCheca = 203,
        [Description("Republica Democratica Do Congo")]
        RepublicaDemocraticaDoCongo = 180,
        [Description("Republica Do Quirguistao")]
        RepublicaDoQuirguistao = 417,
        [Description("Republica Eslovaca")]
        RepublicaEslovaca = 703,
        [Description("Reuniao")]
        Reuniao = 638,
        [Description("Romenia")]
        Romenia = 642,
        [Description("Ruanda")]
        Ruanda = 646,
        [Description("Saara Ocidental")]
        SaaraOcidental = 732,
        [Description("Saint Barthelemy")]
        SaintBarthelemy = 652,
        [Description("Saint Martin")]
        SaintMartin = 663,
        [Description("Saloman, Ilhas")]
        SalomanIlhas = 90,
        [Description("Samoa")]
        Samoa = 882,
        [Description("Samoa Americanas")]
        SamoaAmericanas = 16,
        [Description("Santa Helena")]
        SantaHelena = 654,
        [Description("Santa Lucia")]
        SantaLucia = 662,
        [Description("Sao Marino")]
        SaoMarino = 674,
        [Description("Sao Pedro E Micuelon")]
        SaoPedroEMicuelon = 666,
        [Description("Sao Tome E Principe")]
        SaoTomeEPrincipe = 678,
        [Description("Sao Vicente E Granadinas")]
        SaoVicenteEGranadinas = 670,
        [Description("Senegal")]
        Senegal = 686,
        [Description("Serra Leoa")]
        SerraLeoa = 694,
        [Description("Servia")]
        Servia = 688,
        [Description("Seychelles")]
        Seychelles = 690,
        [Description("Singapura")]
        Singapura = 702,
        [Description("Siria, Republica Arabe Da")]
        SiriaRepublicaArabeDa = 760,
        [Description("Somalia")]
        Somalia = 706,
        [Description("Sri Lanka")]
        SriLanka = 144,
        [Description("St.Kitts")]
        StKitts = 659,
        [Description("Suazilandia")]
        Suazilandia = 748,
        [Description("Sudan Airline Rate")]
        SudanAirlineRate = 737,
        [Description("Sudao")]
        Sudao = 736,
        [Description("Suecia")]
        Suecia = 752,
        [Description("Suriname")]
        Suriname = 740,
        [Description("Svalbard E Ilha Mayen")]
        SvalbardEIlhaMayen = 744,
        [Description("Switzerland")]
        Switzerland = 756,
        [Description("Tailandia")]
        Tailandia = 764,
        [Description("Taiwan (Formosa)")]
        TaiwanFormosa=158,
        [Description("Tajikistan, Republica")]
        TajikistanRepublica = 762,
        [Description("Tanzania")]
        Tanzania = 834,
        [Description("Taywan")]
        Taywan = 901,
        [Description("Territorios Franceses Do Sul")]
        TerritoriosFrancesesDoSul = 260,
        [Description("Territorios Ocupados Da Palestina")]
        TerritoriosOcupadosDaPalestina = 275,
        [Description("Timor Leste")]
        TimorLeste = 626,
        [Description("Togo")]
        Togo = 768,
        [Description("Tokelau")]
        Tokelau = 772,
        [Description("Tonga")]
        Tonga = 776,
        [Description("Trindade E Tobago")]
        TrindadeETobago = 780,
        [Description("Tunisia")]
        Tunisia = 788,
        [Description("Turcas E Caiques, Ilhas")]
        TurcasECaiquesIlhas = 796,
        [Description("Turkmenistan")]
        Turkmenistan = 795,
        [Description("Turquia")]
        Turquia = 792,
        [Description("Tuvalu")]
        Tuvalu = 798,
        [Description("Ucrania, R.S.S.Da")]
        UcraniaRSSDa = 804,
        [Description("Uganda")]
        Uganda = 800,
        [Description("Ukranian Hyrvnia")]
        UkranianHyrvnia = 980,
        [Description("Uniao Europeia")]
        UniaoEuropeia = 978,
        [Description("Urss")]
        Urss = 810,
        [Description("Uruguai")]
        Uruguai = 858,
        [Description("Uzbekistan, Republica")]
        UzbekistanRepublica = 860,
        [Description("Vanuatu")]
        Vanuatu = 548,
        [Description("Vaticano")]
        Vaticano = 336,
        [Description("Venezuela")]
        Venezuela = 862,
        [Description("Vietname")]
        Vietname = 704,
        [Description("Virgens Americanas, Ilhas")]
        VirgensAmericanasIlhas = 850,
        [Description("Wallis E Futuna, Ilhas")]
        WallisEFutunaIlhas = 876,
        [Description("Yenemi Rial")]
        YenemiRial = 886,
        [Description("Zambia")]
        Zambia = 894,
        [Description("Zimbabwe")]
        Zimbabwe = 716,
        [Description("Zloty")]
        Zloty = 985,

    }

    public enum H2666Enum
    {
        [Description("")]
        NULL = 9999, //n pode ser 0
        [Description("Espécie não elegível")]
        EspecieNaoElegivel = 0,
        [Description("Espécie elegível")]
        EspecieElegivel = 100,
    }
    public enum H2683Enum
    {
        [Description("")]
        NULL = 9999,
        [Description("DIA")]
        Diaria = 1,
        [Description("1WK")]
        Semanal = 2,
        [Description("2WK")]
        Quinzenal = 3,
        [Description("M00")]
        Mensal = 4,
        [Description("02M")]
        Bimestral = 5,
        [Description("03M")]
        Trimestral = 6,
        [Description("04M")]
        Quadrimestral = 7,
        [Description("06M")]
        Semestral = 8,
        [Description("12M")]
        Anual = 9
    }
    public enum H3177Enum
    {
        [Description("")]
        NULL = 9999,
        [Description("EURIBOR365 1M")]
        EURIBOR365_1M = 402,
        [Description("EURIBOR365 1W ")]
        EURIBOR365_1W = 702,
        [Description("EURIBOR365 2M")]
        EURIBOR365_2M = 705,
        [Description("EURIBOR365 2W")]
        EURIBOR365_2W = 703,
        [Description("EURIBOR365 3M")]
        EURIBOR365_3M = 404,
        [Description("EURIBOR365 3W")]
        EURIBOR365_3W = 704,
        [Description("EURIBOR365 4M")]
        EURIBOR365_4M = 706,
        [Description("EURIBOR365 7M")]
        EURIBOR365_7M = 707,
        [Description("EURIBOR365 6M")]
        EURIBOR365_6M = 407,
        [Description("EURIBOR365 7M")]
        EURIBOR365_7M2 = 708,
        [Description("EURIBOR365 8M")]
        EURIBOR365_8M = 709,
        [Description("EURIBOR365 9M")]
        EURIBOR365_9M = 710,
        [Description("EURIBOR365 10M")]
        EURIBOR365_10M = 711,
        [Description("EURIBOR365 12M")]
        EURIBOR365_12M = 712,
    }
    #endregion
}
