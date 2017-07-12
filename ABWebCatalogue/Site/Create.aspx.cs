using ABWebCatalogue.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCatalogue.Site
{
    public partial class Create : System.Web.UI.Page
    {
        ABQueryString ab = null;

        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ab = (ABQueryString)Session["Transport"];
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}