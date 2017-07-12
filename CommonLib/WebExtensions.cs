using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebExtensions
{
    public static class WebExtensions
    {
        public static void LoadWithList(this System.Web.UI.WebControls.DropDownList ddl, bool isPostBack, List<KeyValuePair<string,string>> lst)
        {
            if(!isPostBack)
            { 
                ddl.DataTextField = "Value";
                ddl.DataValueField = "Key";
                ddl.DataSource = lst;
                ddl.DataBind();
            }
        }

    }
}
