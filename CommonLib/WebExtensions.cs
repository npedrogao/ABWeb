using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CommonLib
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

        public static DateTime? GetDt(this System.Collections.Specialized.NameValueCollection col, string colName)
        {
            var value = col[colName];
            if (!String.IsNullOrEmpty(value) && value is string && value.Trim().Length == 10)
            {
                string str = (value as string);
                return new DateTime(Convert.ToInt32(str.Substring(0, 2)), Convert.ToInt32(str.Substring(2, 2)), Convert.ToInt32(str.Substring(4, 4))); 
            }
            else
                return null;
        }

        public static string GetStr(this System.Collections.Specialized.NameValueCollection col, string colName)
        {
            var value = col[colName];
            if(value!=null)
                return value.Trim();
            return String.Empty;
        }

    }
}
