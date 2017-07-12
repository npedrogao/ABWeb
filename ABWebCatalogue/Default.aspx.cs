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
            BarclaysBankAccountSettings settings = new BarclaysBankAccountSettings()
            {
                ApplicationID = "CPWSClone",
                UserRequester = @"Corebus2\nuno.cp.ibm",
                ClientName = userProfile.Terminal
            };

            BarclaysBTS barclaysBTS = new BarclaysBTS("http://bpcfsptln197.corebus2.barclays.org:8100/bcdws/bcdws.asmx");

            barclaysBTS.BarclaysBankAccountSettingsValue = settings;
            TJ21Transaction tr = new TJ21Transaction();
            TJ21Filter input = new TJ21Filter() {
                Ceventotit = "00000000000",
                Cestado = "0",
                Cisin = "000000000000",
                Codvalor = "0000000000000",
                Cproduto = "00",
                Csubprod = "00",
                Ddiaevento_CH = "00000000",
                Dfimevento = "2017-12-31",
                Dinievento = "2017-01-01",
                Zseqvento_CH  = "000"

            };
            try
            {
                tr = barclaysBTS.TJ21EventosConsultaLista(input);            
            }
            
            catch (System.Web.Services.Protocols.SoapException soapEx)
            {
                LogUtils.Error(soapEx);
                Response.Redirect(@"Site\ErrorPage.aspx?message=" + soapEx.Message);
            }
            catch (Exception ex)
            {
                LogUtils.Error(ex);
                Response.Redirect(@"Site\ErrorPage.aspx");
            }

            string page = "";
            switch (userProfile.Transaction)
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
                case "AP69":
                case "AP69C":
                case "AP69M":
                case "AP69A":
                case "AP69V":
                    page = "AP69";
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