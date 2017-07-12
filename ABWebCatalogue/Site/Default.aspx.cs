using ABWebCatalogue.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
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
           
        }

        protected void btnCriar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {

        }
    }
}