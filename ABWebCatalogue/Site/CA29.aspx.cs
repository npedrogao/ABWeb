using Core.Utils;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Models;

namespace ABWebCatalogue.Site
{
    public partial class CA25spx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CatalogueModel.ApplyModel(this);
        }

        protected void btnClaBank_Click(object sender, EventArgs e)
        {

            if (!pnlClaBankContent.Visible)
            {
                pnlClaBankContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnClaBank);

            }
            else
            {
                pnlClaBankContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnClaBank);

            }

        }

        protected void btnClaAllFunds_Click(object sender, EventArgs e)
        {

            if (!PnlClaAllFunds.Visible)
            {
                PnlClaAllFunds.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnClaAllFunds);

            }
            else
            {
                PnlClaAllFunds.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnClaAllFunds);

            }

        }

        protected void btnSociGest_Click(object sender, EventArgs e)
        {

            if (!pnlSociGest.Visible)
            {
                pnlSociGest.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnSociGest);

            }
            else
            {
                pnlSociGest.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnSociGest);

            }

        }

        protected void btnSicav_Click(object sender, EventArgs e)
        {

            if (!pnlSicav.Visible)
            {
                pnlSicav.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnSicav);

            }
            else
            {
                pnlSicav.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnSicav);

            }

        }

        protected void btnKiid_Click(object sender, EventArgs e)
        {

            if (!pnlKiid.Visible)
            {
                pnlKiid.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnKiid);

            }
            else
            {
                pnlKiid.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnKiid);

            }

        }

        protected void btnDivid_Click(object sender, EventArgs e)
        {

            if (!pnlDivid.Visible)
            {
                pnlDivid.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDivid);

            }
            else
            {
                pnlDivid.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDivid);

            }

        }

        protected void btnOutrasCaract_Click(object sender, EventArgs e)
        {

            if (!pnlOutrasCaract.Visible)
            {
                pnlOutrasCaract.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnOutrasCaract);

            }
            else
            {
                pnlOutrasCaract.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnOutrasCaract);

            }

        }

        protected void btnComi_Click(object sender, EventArgs e)
        {

            if (!pnlComi.Visible)
            {
                pnlComi.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnComi);

            }
            else
            {
                pnlComi.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnComi);

            }

        }

        protected void btnCot_Click(object sender, EventArgs e)
        {

            if (!pnlCot.Visible)
            {
                pnlCot.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnCot);

            }
            else
            {
                pnlCot.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnCot);

            }

        }

        protected void btnNego_Click(object sender, EventArgs e)
        {

            if (!pnlNego.Visible)
            {
                pnlNego.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnNego);

            }
            else
            {
                pnlNego.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnNego);

            }

        }

        protected void btnCanalDist_Click(object sender, EventArgs e)
        {

            if (!pnlCanalDist.Visible)
            {
                pnlCanalDist.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnCanalDist);

            }
            else
            {
                pnlCanalDist.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnCanalDist);

            }

        }

        protected void btnContasDo_Click(object sender, EventArgs e)
        {

            if (!pnlContasDo.Visible)
            {
                pnlContasDo.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnContasDo);

            }
            else
            {
                pnlContasDo.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnContasDo);

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


        }

        protected void btnCloseAll_Click(object sender, EventArgs e)
        {
            pnlClaBankContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnClaBank);
            PnlClaAllFunds.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnClaAllFunds);
            pnlSociGest.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnSociGest);
            pnlSicav.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnSicav);
            pnlKiid.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnKiid);
            pnlDivid.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDivid);
            pnlOutrasCaract.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnOutrasCaract);
            pnlComi.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnComi);
            pnlCot.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnCot);
            pnlNego.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnNego);
            pnlCanalDist.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnCanalDist);
            pnlContasDo.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnContasDo);
            pnlAttInvContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnAttInv);
        }

        protected void btnOpenAll_Click(object sender, EventArgs e)
        {
            pnlClaBankContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnClaBank);
            PnlClaAllFunds.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnClaAllFunds);
            pnlSociGest.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnSociGest);
            pnlSicav.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnSicav);
            pnlKiid.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnKiid);
            pnlDivid.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDivid);
            pnlOutrasCaract.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnOutrasCaract);
            pnlComi.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnComi);
            pnlCot.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnCot);
            pnlNego.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnNego);
            pnlCanalDist.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnCanalDist);
            pnlContasDo.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnContasDo);
            pnlAttInvContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnAttInv);
        }
    }
}