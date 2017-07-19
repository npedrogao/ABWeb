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

        public ModelField(string ecra, string copybook, int tamanho, TipoCampo tipoCampo)
        {
            this.ecra = ecra;
            this.copybook = copybook;
            this.tamanho = tamanho;
            this.tipo = tipoCampo;
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
