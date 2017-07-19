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
        Modificacao  = 'M',
        [Description("Inactivo")]
        Inactivo = 'I'

    }
}
