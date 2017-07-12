using ABWebCatalogue.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCatalogue
{
    public partial class Default : System.Web.UI.Page
    {
        ABQueryString ab = null;
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ab = new ABQueryString(Request.QueryString["cBalcao"], Request.QueryString["BU"], Request.QueryString["cCodUtilza"], Request.QueryString["cTerminal"], Request.QueryString["transacao"]);
                Session["Transport"] = ab;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            DAL dl = new DAL();
            DataTable dtResult = new DataTable();
            dtResult = dl.GetDataByProjectAndType("ValidaUserId", 00, Consts.BRANCHPTCONN);

            string page = "";
            switch (ab.Transaction)
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