using ABWebCatalogue.App_Code;
using CommonLib.Log;
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
        UserProfile userProfile = null;
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
                userProfile = (UserProfile)Session["UserProfile"];
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        
            string page = "";
            switch (Request.QueryString["transacao"])
            {               
                case "CA25C":               
                case "CA25V":
                    page = "CA25";
                    break;
                case "VC37":
                case "VC37C":
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

            Response.Redirect(String.Format("Site/{0}.aspx", page));
        }
    }
}