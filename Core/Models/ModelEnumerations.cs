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
        Nivel1 = 1,      
        [Description("Nivel 2")]
        Nivel2 = 2,      
        [Description("Nivel 3")]
        Nivel3 = 3,      
        [Description("Nivel 4")]
        Nivel4 = 4,      
        [Description("Nivel 5")]
        Nivel5 = 5
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
        ECB =  2,
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
        NULL = 0,
        [Description("9(?)V9(?)")]
        Decimal,
        [Description("ZZZZ/ZZ/ZZ")]
        AnoMesDia = 2,
        [Description("ZZ/ZZ/ZZZZ")]
        DiaMesAno = 3,
        [Description("ZZ:ZZ")]
        HoraMinuto = 4,
    }
}
