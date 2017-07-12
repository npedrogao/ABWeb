using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommonLib.Models
{
    public class Table
    {
        public int Id { get; set; }
        public string Code { get; set; }
        public string Description { get; set; }

    }

    public class DetailTable
    {
        public int Id { get; set; }
        public int IdTable { get; set; }
        public string Table { get; set; }
        public string Field { get; set; }
        public string Value { get; set; }
        public string Aux1 { get; set; }
        public string Aux2 { get; set; }
        public string Aux3 { get; set; }
        public string Aux4 { get; set; }
        public string Aux5 { get; set; }
        public string Aux6 { get; set; }
        public string Aux7 { get; set; }
        public string Aux8 { get; set; }
        public string Aux9 { get; set; }
        public string Aux10 { get; set; }

    }

    public class DetailAuxTable
    {
        public int id { get; set; }
        public string AuxField { get; set; }
        public string Value { get; set; }
    }

}
