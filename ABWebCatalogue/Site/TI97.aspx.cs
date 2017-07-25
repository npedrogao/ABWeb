using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Core.Utils;
using Core.Models;

namespace ABWebCatalogue.Site
{
    public partial class TI97 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CatalogueModel.ApplyModel(this);
        }

        protected void btnDadComp_Click(object sender, EventArgs e)
        {

            if (!pnlDadCompContent.Visible)
            {
                pnlDadCompContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadComp);

            }
            else
            {
                pnlDadCompContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadComp);

            }

        }

        protected void btnDadsCOmpWarra_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCOmpWarraContent.Visible)
            {
                pnlDadsCOmpWarraContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadsCOmpWarra);
            }
            else
            {
                pnlDadsCOmpWarraContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadsCOmpWarra);
            }
        }

        protected void btnDadsCompWarrAUto_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCompWarrAUtoContent.Visible)
            {
                pnlDadsCompWarrAUtoContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadsCompWarrAuto);

            }
            else
            {
                pnlDadsCompWarrAUtoContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadsCompWarrAuto);

            }
        }

        protected void btnDadsComp_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCompContent.Visible)
            {
                pnlDadsCompContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadsComp);

            }
            else
            {
                pnlDadsCompContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadsComp);

            }
        }

        protected void btnDadosTec_Click(object sender, EventArgs e)
        {
            if (!pnlDadosTecContent.Visible)
            {
                pnlDadosTecContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadosTec);
      
            }
            else
            {
                pnlDadosTecContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadosTec);
            }
        }

        protected void btnDadsCompEle_Click(object sender, EventArgs e)
        {
            if (!pnlDadsCompEleContent.Visible)
            {
                pnlDadsCompEleContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadsCompEle);

            }
            else
            {
                pnlDadsCompEleContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadsCompEle);
            }
        }

        protected void btnDadosCompImp_Click(object sender, EventArgs e)
        {
            if (!pnlDadosCompImpContent.Visible)
            {
                pnlDadosCompImpContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDadosCompImp);
    
            }
            else
            {
                pnlDadosCompImpContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDadosCompImp);
            }
        }

        protected void btnAttInv_Click(object sender, EventArgs e)
        {
            if (!pnlAttInvContent.Visible)
            {
                pnlAttInvContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnAttInv);
        
            }
            else
            {
                pnlAttInvContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnAttInv);
 
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();

        }
        protected void btnCloseAll_Click(object sender, EventArgs e)
        {

            pnlDadCompContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadComp);
            pnlDadsCOmpWarraContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadsCOmpWarra);
            pnlDadsCompWarrAUtoContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadsCompWarrAuto);
            pnlDadsCompContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadsComp);
            pnlDadosTecContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadosTec);
            pnlDadsCompEleContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadsCompEle);
            pnlDadosCompImpContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDadosCompImp);
            pnlAttInvContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnAttInv);

        }
        protected void btnOpenAll_Click(object sender, EventArgs e)
        {
            pnlDadCompContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadComp);
            pnlDadsCOmpWarraContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadsCOmpWarra);
            pnlDadsCompWarrAUtoContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadsCompWarrAuto);
            pnlDadsCompContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadsComp);
            pnlDadosTecContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadosTec);
            pnlDadsCompEleContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadsCompEle);
            pnlDadosCompImpContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDadosCompImp);
            pnlAttInvContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnAttInv);
        }


    }
}