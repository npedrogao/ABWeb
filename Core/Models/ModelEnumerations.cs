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
}
