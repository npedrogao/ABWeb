using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Models
{
    public class CA58Item
    {
        public CA58Item()
        {

        }

        public CA58Item(string familia, string subFam, string emComer, string estado, string produto, string isin, string ultimaAlter, DateTime? dtAct, DateTime? dtInac)
        {
            Familia= familia;
            SubFamilia = subFam;
            EmComercializacao = emComer;
            this.Estado = estado;
            this.Produto = produto;
            this.ISIN = isin;
            UltimaAlteracao = ultimaAlter;
            DataActivacao = dtAct;
            DataInactivacao = dtInac;
        }

        public string Familia { get; set; }
        public string SubFamilia { get; set; }

        public string EmComercializacao { get; set; }

        public string Estado { get; set; }

        public string Produto { get; set; }

        public string ISIN { get; set; }

        public string UltimaAlteracao { get; set; }

        public DateTime? DataActivacao { get; set; }

        public DateTime? DataInactivacao { get; set; }
    }
}
