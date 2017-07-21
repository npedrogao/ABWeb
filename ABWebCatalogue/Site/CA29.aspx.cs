using Core.Utils;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
{
    public partial class CA25spx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ModelCata
        }

        protected void btnClaBank_Click(object sender, EventArgs e)
        {

            if (!pnlClaBankContent.Visible)
            {
                pnlClaBankContent.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnClaBank);

            }
            else
            {
                pnlClaBankContent.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnClaBank);

            }

        }

        protected void btnClaAllFunds_Click(object sender, EventArgs e)
        {

            if (!PnlClaAllFunds.Visible)
            {
                PnlClaAllFunds.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnClaAllFunds);

            }
            else
            {
                PnlClaAllFunds.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnClaAllFunds);

            }

        }

        protected void btnSociGest_Click(object sender, EventArgs e)
        {

            if (!pnlSociGest.Visible)
            {
                pnlSociGest.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnSociGest);

            }
            else
            {
                pnlSociGest.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnSociGest);

            }

        }

        protected void btnSicav_Click(object sender, EventArgs e)
        {

            if (!pnlSicav.Visible)
            {
                pnlSicav.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnSicav);

            }
            else
            {
                pnlSicav.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnSicav);

            }

        }

        protected void btnKiid_Click(object sender, EventArgs e)
        {

            if (!pnlKiid.Visible)
            {
                pnlKiid.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnKiid);

            }
            else
            {
                pnlKiid.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnKiid);

            }

        }

        protected void btnDivid_Click(object sender, EventArgs e)
        {

            if (!pnlDivid.Visible)
            {
                pnlDivid.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnDivid);

            }
            else
            {
                pnlDivid.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnDivid);

            }

        }

        protected void btnOutrasCaract_Click(object sender, EventArgs e)
        {

            if (!pnlOutrasCaract.Visible)
            {
                pnlOutrasCaract.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnOutrasCaract);

            }
            else
            {
                pnlOutrasCaract.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnOutrasCaract);

            }

        }

        protected void btnComi_Click(object sender, EventArgs e)
        {

            if (!pnlComi.Visible)
            {
                pnlComi.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnComi);

            }
            else
            {
                pnlComi.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnComi);

            }

        }

        protected void btnCot_Click(object sender, EventArgs e)
        {

            if (!pnlCot.Visible)
            {
                pnlCot.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnCot);

            }
            else
            {
                pnlCot.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnCot);

            }

        }

        protected void btnNego_Click(object sender, EventArgs e)
        {

            if (!pnlNego.Visible)
            {
                pnlNego.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnNego);

            }
            else
            {
                pnlNego.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnNego);

            }

        }

        protected void btnCanalDist_Click(object sender, EventArgs e)
        {

            if (!pnlCanalDist.Visible)
            {
                pnlCanalDist.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnCanalDist);

            }
            else
            {
                pnlCanalDist.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnCanalDist);

            }

        }

        protected void btnContasDo_Click(object sender, EventArgs e)
        {

            if (!pnlContasDo.Visible)
            {
                pnlContasDo.Visible = true;
                WebUtils.ChangeBtnAtt(true, btnContasDo);

            }
            else
            {
                pnlContasDo.Visible = false;
                WebUtils.ChangeBtnAtt(false, btnContasDo);

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
            pnlClaBankContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnClaBank);
            PnlClaAllFunds.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnClaAllFunds);
            pnlSociGest.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnSociGest);
            pnlSicav.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnSicav);
            pnlKiid.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnKiid);
            pnlDivid.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnDivid);
            pnlOutrasCaract.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnOutrasCaract);
            pnlComi.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnComi);
            pnlCot.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnCot);
            pnlNego.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnNego);
            pnlCanalDist.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnCanalDist);
            pnlContasDo.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnContasDo);
            pnlAttInvContent.Visible = false;
            WebUtils.ChangeBtnAtt(false, btnAttInv);
        }

        protected void btnOpenAll_Click(object sender, EventArgs e)
        {
            pnlClaBankContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnClaBank);
            PnlClaAllFunds.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnClaAllFunds);
            pnlSociGest.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnSociGest);
            pnlSicav.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnSicav);
            pnlKiid.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnKiid);
            pnlDivid.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnDivid);
            pnlOutrasCaract.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnOutrasCaract);
            pnlComi.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnComi);
            pnlCot.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnCot);
            pnlNego.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnNego);
            pnlCanalDist.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnCanalDist);
            pnlContasDo.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnContasDo);
            pnlAttInvContent.Visible = true;
            WebUtils.ChangeBtnAtt(true, btnAttInv);
        }
    }
}