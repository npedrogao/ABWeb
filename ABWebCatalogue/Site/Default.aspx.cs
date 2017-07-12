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
        protected void Page_Init(object sender, EventArgs e)
        {
          
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCriar_Click(object sender, EventArgs e)
        {
            Response.Redirect(String.Format("Create.aspx?{0}", Request.QueryString.ToString()));
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {

        }
    }
}