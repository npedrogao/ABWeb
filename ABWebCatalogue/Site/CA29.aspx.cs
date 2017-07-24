using Core.Utils;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Models;
using System.Text;

namespace ABWebCatalogue.Site
{
    public partial class CA29 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CatalogueModel.ApplyModel(this);
            cmbICOMRES01.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB01.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES02.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB02.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES03.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB03.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES04.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB04.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES05.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB05.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES06.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB06.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES07.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB07.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES08.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB08.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES09.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB09.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMRES10.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOMSUB10.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbCESTADO.LoadWithList(IsPostBack, CatalogueModel.ListActiveExclusivo);
            cmbCSRRI.LoadWithList(IsPostBack, CatalogueModel.ListRiscoKidd);
            cmbIDIVIDEND.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbIDIVIDEND.Value = cmbIDIVIDEND.Items[2].Value;
            cmbIUCIT.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbIUCIT.Value = cmbIUCIT.Items[0].Value;
            cmbINSCOPE.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbINSCOPE.Value = cmbINSCOPE.Items[0].Value;
            cmbICUSTODD.LoadWithList(IsPostBack, CatalogueModel.ListPricing);
            cmbICUSTODD.Value = cmbICUSTODD.Items[2].Value;
            cmbIMULTCTA.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbIMULTCTA.Value = cmbIMULTCTA.Items[2].Value;
            cmbICUSTODGA.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICUSTODGA.Value = cmbICUSTODGA.Items[1].Value;
            cmbIBENEFIC.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbIBENEFIC.Value = cmbIBENEFIC.Items[2].Value;
            cmbCVALORIM.LoadWithList(IsPostBack, CatalogueModel.ListTipoValoracao);
            cmbCVALORIM.Value = cmbCVALORIM.Items[1].Value;
            cmbCPERIODO.LoadWithList(IsPostBack, CatalogueModel.ListPeriodoCoracao);
            cmbCPERIODO.Value = cmbCPERIODO.Items[1].Value;
            cmbICOTNET.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            cmbICOTNET.Value = cmbICOTNET.Items[1].Value;
            cmbINSUBSC.LoadWithList(IsPostBack, CatalogueModel.ListTipoResgateExclusivo);
            cmbCTIPRESGA.LoadWithList(IsPostBack, CatalogueModel.ListTipoResgate);
            cmbIALLFUND.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbITIPPROC.LoadWithList(IsPostBack, CatalogueModel.ListZeroOrOne);
            cmbCNIVELRISCO.LoadWithList(IsPostBack, CatalogueModel.ListRiscoProduto);



            StringBuilder js = new StringBuilder();
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES01.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES02.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES06.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES07.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES08.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES09.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSS", cmbICUSTODD.UniqueID, cmbICOMRES10.UniqueID);

            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB01.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB02.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB06.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB07.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB08.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB09.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesSN", cmbICUSTODD.UniqueID, cmbICOMSUB10.UniqueID);

            JsUtil.ExecJsFunction(js, "CustodiaRulesTwoList", cmbICUSTODD.UniqueID, cmbICUSTODGA.UniqueID, cmbICOMRES03.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesTwoList", cmbICUSTODD.UniqueID, cmbICUSTODGA.UniqueID, cmbICOMRES04.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesTwoList", cmbICUSTODD.UniqueID, cmbICUSTODGA.UniqueID, cmbICOMRES05.UniqueID);

            JsUtil.ExecJsFunction(js, "CustodiaRulesTwoListComplex", cmbICUSTODD.UniqueID, cmbICUSTODGA.UniqueID, cmbICOMSUB03.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesTwoListComplex", cmbICUSTODD.UniqueID, cmbICUSTODGA.UniqueID, cmbICOMSUB04.UniqueID);
            JsUtil.ExecJsFunction(js, "CustodiaRulesTwoListComplex", cmbICUSTODD.UniqueID, cmbICUSTODGA.UniqueID, cmbICOMSUB05.UniqueID);






            ClientScript.RegisterClientScriptBlock(this.GetType(), (new Guid()).ToString(), "function JsServerSide(){"+ js.ToString() + "}");


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

        protected void JsInjectCmbLookup(StringBuilder jsBuilder, int fieldSize, string copyBook)
        {
            string placeHolderName = "CPH";

            //System.Web.UI.Control curControl = this.Page.Master.FindControl(placeHolderName).FindControl(fieldName);



            jsBuilder.Append(false); //ToDo            
        }
    }
}