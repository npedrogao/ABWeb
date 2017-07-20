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

        public string DescricaoLbl { get; set; }

        public string CopyBook { get; set; }
        public int Tamanho { get; set; }

        public string ValidaCol { get; set; }

        public bool? Subcampo { get; set; }

        public ModelField(TabelaEnum tabelaId, string ecra, string copybook, int tamanho, TipoCampoEnum tipoCampo, string validaCol, string description, 
            TabelaEnum validaTabela, bool subcampo)
        {
            this.Tabela = tabelaId;
            this.Ecran = ecra;
            this.CopyBook = copybook;
            this.Tamanho = tamanho;
            this.TipoDeCampo = tipoCampo;
            this.ValidaCol = validaCol;
            this.DescricaoLbl = description;
            this.ValidaTab = validaTabela;
            this.Subcampo = subcampo;
        }

        public ModelField()
        {

        }
    }
}
