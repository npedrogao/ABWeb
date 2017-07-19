using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Models
{
    public class ModelField
    {

        private string ecra;
        private string copybook;
        private int tamanho;
        private TipoCampo tipo;
        private int tabelaId;
        private string validaCol;
        private string descritivo;

        public ModelField(string ecra, string copybook, int tamanho, TipoCampo tipoCampo, 
            int tabelaId, string validaCol, string descritivo)
        {
            this.ecra = ecra;
            this.copybook = copybook;
            this.tamanho = tamanho;
            this.tipo = tipoCampo;
            this.tabelaId = tabelaId;
            this.validaCol = validaCol;
            this.descritivo = descritivo;
        }

        public ModelField()
        {

        }

        public string Ecran
        {
            get
            {
                return ecra;
            }
            set
            {
                ecra = value;
            }
        }


        public string CopyBook
        {
            get
            {
                return copybook;
            }
            set
            {
                copybook = value;
            }
        }


        public int Tamanho {
            get
            {
                return tamanho;
            }
            set
            {
                tamanho = value;
            }
        }


        public TipoCampo Tipo { get { return tipo; } set { tipo = value; } }

        public int TabelaId { get { return tabelaId; } set { tabelaId = value; } }

        public string ValidaCol { get { return validaCol; } set { validaCol = value; } }

        public string Descritivo { get { return descritivo; } set { descritivo = value; } }

        public enum TipoCampo { STRING, DECIMAL, DATA, COMBO, UNKNOWN }
    }
}
