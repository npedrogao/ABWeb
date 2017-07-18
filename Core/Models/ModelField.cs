using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Models
{
    class ModelField
    {
        private string ecra;
        private string copybook;
        private int tamanho;
        private TipoCampo tipoCampo;

        public ModelField(string ecra, string copybook, int tamanho, TipoCampo tipoCampo)
        {
            this.ecra = ecra;
            this.copybook = copybook;
            this.tamanho = tamanho;
            this.tipoCampo = tipoCampo;
        }

        public enum TipoCampo { STRING, DECIMAL, DATA }
    }
}
