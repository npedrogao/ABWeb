using Core.Models;
using Core.Utils;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
{
    public partial class ABTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtQMAXREN.Focus();
            cmbIRenovac.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            var builder = new StringBuilder();
            JsUtil.ExecJsFunction("TestMethod", builder);
            JsUtil.InjectJsServerSide(this, builder);
        }
    }
}