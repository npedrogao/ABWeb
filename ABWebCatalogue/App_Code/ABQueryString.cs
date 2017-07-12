using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABWebCatalogue.App_Code
{
    public class ABQueryString
    {

        public string Balcao { get; set; }
        public string BusinessUnit { get; set; }
        public string UserAB { get; set; }
        public string Terminal { get; set; }
        bool Citrix { get; set; }
        public string Transaction { get; set; }

        string OHost { get; set; }
        string Hostip { get; set; }

        public string Host { get; set; }
        public int Port { get; set; }
        string Chave { get; set; }

        public bool AccessDenied { get; set; }

        public ABQueryString(string balcao, string businessUnit, string userAB, string terminal, string transaction)
        {
            System.Web.UI.DropDownList
            Balcao = balcao;
            BusinessUnit = businessUnit;
            UserAB = userAB;
            Terminal = terminal;
            Transaction = transaction;
            AccessDenied = false;
        }
    }
}