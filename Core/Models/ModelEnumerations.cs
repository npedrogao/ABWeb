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
        UNKNOWN = 0,
        /// <summary>
        /// Valor textual
        /// </summary>
        STRING = 1,
        /// <summary>
        /// Valor com casas decimais
        /// </summary>
        DECIMAL = 2,
        /// <summary>
        /// Data simples formato: ZZ/ZZ/ZZZZ, sem horas minutos e segundos
        /// </summary>
        DATA = 3,
        /// <summary>
        /// Caixa de opções com valor e descritivo em texto
        /// </summary>
        COMBOBOX = 4,
    }

    public enum TabelaEnum
    {
        [Description("")]
        NA = 0,
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
}
