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
        Modificacao  = 'M',
        [Description("Inactivo")]
        Inactivo = 'I'

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
