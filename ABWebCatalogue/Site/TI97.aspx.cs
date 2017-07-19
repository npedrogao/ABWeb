using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
{
    public partial class TI97 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDadComp_Click(object sender, EventArgs e)
        {
            pnlDadCompContent.Visible = pnlDadCompContent.Visible == false ? true : false;
        }

        protected void btnDadsCOmpWarra_Click(object sender, EventArgs e)
        {
            pnlDadsCOmpWarraContent.Visible = pnlDadsCOmpWarraContent.Visible == false ? true : false;
        }

        protected void btnDadsCompWarrAUto_Click(object sender, EventArgs e)
        {
            pnlDadsCompWarrAUtoContent.Visible = pnlDadsCompWarrAUtoContent.Visible == false ? true : false;
        }

        protected void btnDadsComp_Click(object sender, EventArgs e)
        {
            pnlDadsCompContent.Visible = pnlDadsCompContent.Visible == false ? true : false;
        }

        protected void btnDadosTec_Click(object sender, EventArgs e)
        {
            pnlDadosTecContent.Visible = pnlDadosTecContent.Visible == false ? true : false;
        }

        protected void btnDadsCompEle_Click(object sender, EventArgs e)
        {
            pnlDadsCompEleContent.Visible = pnlDadsCompEleContent.Visible == false ? true : false;
        }

        protected void btnDadosCompImp_Click(object sender, EventArgs e)
        {
            pnlDadosCompImpContent.Visible = pnlDadosCompImpContent.Visible == false ? true : false;
        }

        protected void btnAttInv_Click(object sender, EventArgs e)
        {
            pnlAttInvContent.Visible = pnlAttInvContent.Visible == false ? true : false;
        }


    }
}