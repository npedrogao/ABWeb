using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
#if USE_ACTIVEX
            if (Session["capturePostback"] == null)
            {
                StringBuilder sbScript = new StringBuilder();

                sbScript.Append("<script language='JavaScript' type='text/javascript'>\n");
                sbScript.Append("<!--\n");
                sbScript.Append("var net = new ActiveXObject(\"WScript.Network\");");
                sbScript.Append(this.ClientScript.GetPostBackEventReference(this, "@@@") + ";\n");
                sbScript.Append("// -->\n");
                sbScript.Append("</script>\n");

                string ScriptContent = sbScript.ToString();
                ScriptContent = ScriptContent.Replace("\'@@@\'", "net.UserName + \',\' + net.UserDomain + \',\'+ net.ComputerName");

                this.ClientScript.RegisterStartupScript(this.GetType(), "AutoPostBackScript", ScriptContent);

                Session["capturePostback"] = true;

                return;
            }

            this.ClientScript.GetPostBackEventReference(this, "arg");

            string eventTarget = this.Request["__EVENTTARGET"];
            string eventArgument = this.Request["__EVENTARGUMENT"];

            string[] Args = eventArgument.Split(',');
            Session["clientUserName"] = Args[0];
            Session["clientDomainName"] = Args[1];
            Session["clientComputerName"] = Args[2];
#if DEBUG
            Debug.Assert(Args.Length == 3);
            Debug.Assert(Args[0] != "");
            Debug.Assert(Args[1] != "");
            Debug.Assert(Args[2] != "");
#endif // DEBUG

            Session.Remove("capturePostback");

            log.Info(String.Format("ClientActiveX UserName: \"{0}\" DomainName: \"{1}\" ComputerName: \"{2}\"", Args[0], Args[1], Args[2]));            
#endif // USE_ACTIVEX
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string page = "";
            switch (Request.QueryString["transaction"])
            {               
                case "CA25C":               
                case "CA25V":
                    page = "CA25";
                    break;
                case "VC37":               
                case "VC37M":
                case "VC37A":
                case "VC37V":
                    page = "VC37";
                    break;
                case "AP34":
                case "AP34C":
                case "AP34M":
                case "AP34A":
                case "AP34V":
                    page = "AP34";
                    break;
                case "TI05":
                case "TI05C":
                case "TI05M":
                case "TI05A":
                case "TI05V":
                    page = "TI05";
                    break;
                case "TI04":
                case "TI04C":
                case "TI04M":
                case "TI04A":
                case "TI04V":
                    page = "TI04";
                    break;
                default:
                    page = "Default";
                    break;
            }

            Response.Redirect(String.Format("Site/{0}.aspx?{1}", page, Request.QueryString.ToString()));
        }
    }
}