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

        private string ecra;
        private string copybook;
        private int tamanho;
        private TipoCampo tipo;

        public ModelField(string ecra, string copybook, int tamanho, TipoCampo tipoCampo)
        {
            this.ecra = ecra;
            this.copybook = copybook;
            this.tamanho = tamanho;
            this.tipo = tipoCampo;
        }

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

        public int Tamanho
        {
            get
            {
                return tamanho;
            }
            set
            {
                tamanho = value;
            }
        }


        public TipoCampo Tipo
        {
            get
            {
                return tipo;
            }
            set
            {
                tipo = value;
            }
        }

        public enum TipoCampo { STRING, DECIMAL, DATA, UNKNOWN }
    }
}
