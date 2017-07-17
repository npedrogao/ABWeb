using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Core.Models
{
    public enum ActivoInactivoEnum 
    {
        [Description("ActivoX")]
        Activo = 'A',    
        [Description("Inactivo")]
        Inactivo = 'I'
    }
}
