using Core.Models;
using Core.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.WebExtensions;
namespace ABWebCatalogue.Site
{
    public partial class Ap34BootstrapTest : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

            StringBuilder js = new StringBuilder();

            //CatalogueModel.ApplyModel(this, ref js, new string[] { Resources.resJS.LookupCmbOnChange });
            JsUtil.ExecJsFunction(Resources.jsRes.LookupCmbOnChange, js, "CPH_txtCPRODUTO", "CPH_cmbCPRODUTO");

            cmbCPRODUTO.LoadWithList(this.IsPostBack, CatalogueModel.ListActive);

            JsUtil.InjectJsServerSide(this, js);

            //ClientScript.RegisterClientScriptBlock(this.GetType(), (new Guid()).ToString(), @"<script type=""text/javascript"">function JsServerSide(){" + js.ToString() + "};</script>", false);
            
            string transaccao = Request.QueryString["transacao"].ToUpper();
            
            
        }

    }
}