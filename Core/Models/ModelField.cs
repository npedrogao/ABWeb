using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Models
{
    /// <summary>
    /// Campo relativo a um campo do Model
    /// </summary>
    public class ModelField
    {
        /// <summary>
        /// Tabela usada para obter os key values do campo
        /// </summary>
        public TabelaEnum Tabela { get; set; }

        /// <summary>
        /// Tabela usada para validar a key inserida pelo utilizador
        /// </summary>
        public TabelaEnum ValidaTab { get; set; }

        /// <summary>
        /// Tipologia do campo em questão
        /// </summary>
        public TipoCampoEnum TipoDeCampo { get; set; }

        public string Ecran { get; set; }

        public string LblDescription { get; set; }

        public string CopyBook { get; set; }
        public int Tamanho { get; set; }

        public ModelField(string ecra, string copybook, int tamanho, TipoCampoEnum tipoCampo)
        {
            this.Ecran = ecra;
            this.CopyBook = copybook;
            this.Tamanho = tamanho;
            this.TipoDeCampo = tipoCampo;
        }

        public ModelField()
        {

        }

        
    }
}
