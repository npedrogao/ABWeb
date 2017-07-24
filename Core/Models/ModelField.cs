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
        /// Tipologia do campo em questão
        /// </summary>
        public TipoCampoEnum TipoDeCampo { get; set; }

        public string Ecran { get; set; }

        public string DescricaoLbl { get; set; }

        public string CopyBook { get; set; }
        public int ? Tamanho { get; set; }

        public string IDCol { get; set; }

        public string DescCol { get; set; }

        public int ? CasasDecimais { get; set; }

        public ModelField(TabelaEnum tabelaId, string ecra, string copybook, int tamanho, TipoCampoEnum tipoCampo, string validaCol, string description, string descCol, int ? casasDec)
        {
            this.Tabela = tabelaId;
            this.Ecran = ecra;
            this.CopyBook = copybook;
            this.Tamanho = tamanho;
            this.TipoDeCampo = tipoCampo;
            this.IDCol = validaCol;
            this.DescricaoLbl = description;
            this.DescCol = descCol;
            this.CasasDecimais = casasDec;
        }

        public ModelField()
        {

        }
    }
}
