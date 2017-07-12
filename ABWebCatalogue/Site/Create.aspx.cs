using ABWebCatalogue.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonLib;

namespace ABCatalogue.Site
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ddlMicroFamilia.LoadWithList(IsPostBack, Models.CatalogueModel.ListMicroFamilias);
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string page = ddlMicroFamilia.SelectedValue;

            Response.Redirect(page+".aspx?type=C");
        }
    }
}