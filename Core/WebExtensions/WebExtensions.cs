﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;

namespace Core.WebExtensions
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

        public static void LoadWithList(this System.Web.UI.HtmlControls.HtmlSelect ddl, bool isPostBack, List<KeyValuePair<string, string>> lst)
        {
            if (!isPostBack)
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

        public static void SetReadonlyControls(this ControlCollection controlCollection)
        {
            foreach (Control ctrl in controlCollection)
            {
                if (ctrl.Controls.Count > 0)
                    SetReadonlyControls(ctrl.Controls);
                else
                {
                    switch (ctrl.GetType().ToString())
                    {
                        case "System.Web.UI.WebControls.TextBox":
                            {
                                var txt = (ctrl as System.Web.UI.WebControls.TextBox);
                                txt.ReadOnly = true;
                            }
                            break;
                        case "System.Web.UI.HtmlControls.HtmlSelect":
                            {
                                var sel = (ctrl as System.Web.UI.HtmlControls.HtmlSelect);
                                sel.Disabled = true;
                            }
                            break;
                    }
                }
            }
        }

    }
}
