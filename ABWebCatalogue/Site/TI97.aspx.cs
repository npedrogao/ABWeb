using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Core.Utils;

namespace ABWebCatalogue.Site
{
    public partial class TI97 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDadComp_Click(object sender, EventArgs e)
        {

            if (!pnlDadCompContent.Visible)
            {
                pnlDadCompContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadComp);

            }
            else
            {
                pnlDadCompContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadComp);

            }

        }

        protected void btnDadsCOmpWarra_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCOmpWarraContent.Visible)
            {
                pnlDadsCOmpWarraContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadsCOmpWarra);
            }
            else
            {
                pnlDadsCOmpWarraContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadsCOmpWarra);
            }
        }

        protected void btnDadsCompWarrAUto_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCompWarrAUtoContent.Visible)
            {
                pnlDadsCompWarrAUtoContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadsCompWarrAuto);

            }
            else
            {
                pnlDadsCompWarrAUtoContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadsCompWarrAuto);

            }
        }

        protected void btnDadsComp_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCompContent.Visible)
            {
                pnlDadsCompContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadsComp);

            }
            else
            {
                pnlDadsCompContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadsComp);

            }
        }

        protected void btnDadosTec_Click(object sender, EventArgs e)
        {
            if (!pnlDadosTecContent.Visible)
            {
                pnlDadosTecContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadosTec);
      
            }
            else
            {
                pnlDadosTecContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadosTec);
            }
        }

        protected void btnDadsCompEle_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCompEleContent.Visible)
            {
                pnlDadsCompEleContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadsCompEle);

            }
            else
            {
                pnlDadsCompEleContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadsCompEle);
            }
        }

        protected void btnDadosCompImp_Click(object sender, EventArgs e)
        {
            if (!pnlDadosCompImpContent.Visible)
            {
                pnlDadosCompImpContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDadosCompImp);
    
            }
            else
            {
                pnlDadosCompImpContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDadosCompImp);
            }
        }

        protected void btnAttInv_Click(object sender, EventArgs e)
        {
            if (!pnlAttInvContent.Visible)
            {
                pnlAttInvContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnAttInv);
        
            }
            else
            {
                pnlAttInvContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnAttInv);
 
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {


        }
        protected void btnCloseAll_Click(object sender, EventArgs e)
        {

            pnlDadCompContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadComp);
            pnlDadsCOmpWarraContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadsCOmpWarra);
            pnlDadsCompWarrAUtoContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadsCompWarrAuto);
            pnlDadsCompContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadsComp);
            pnlDadosTecContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadosTec);
            pnlDadsCompEleContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadsCompEle);
            pnlDadosCompImpContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDadosCompImp);
            pnlAttInvContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnAttInv);

        }
        protected void btnOpenAll_Click(object sender, EventArgs e)
        {
            pnlDadCompContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadComp);
            pnlDadsCOmpWarraContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadsCOmpWarra);
            pnlDadsCompWarrAUtoContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadsCompWarrAuto);
            pnlDadsCompContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadsComp);
            pnlDadosTecContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadosTec);
            pnlDadsCompEleContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadsCompEle);
            pnlDadosCompImpContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDadosCompImp);
            pnlAttInvContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnAttInv);
        }


    }
}