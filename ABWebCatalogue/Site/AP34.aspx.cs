using Core.Models;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Utils;
using System.Text;
using System.Resources;
using System.Reflection;

namespace ABWebCatalogue.Site
{
    public partial class AP34 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {          
            btnClearKeys.HRef = WebUtil.GetPageRoot(this); // + this.Request.Url.Query;

            StringBuilder js = new StringBuilder();
            //StringBuilder lib = new StringBuilder();
            // Resources.resJS.LookupCmbOnChange
            string[] jsFunctionNames = new string[] { Resources.jsRes.LookupCmbOnChange };

            CatalogueModel.ApplyModel(this, ref js, jsFunctionNames);
            
            JsUtil.ExecJsFunction(Resources.jsRes.AccordionController, js);
            JsUtil.ExecJsFunction(Resources.jsRes.LockUnlockField, js, "S", cmbIRenovac.ClientID, txtQMAXREN.ClientID);
            JsUtil.InjectJsServerSide(this, js);

            string transaccao = Request.QueryString["transacao"].ToUpper();
            lblTransaction.Text = transaccao;
            if (IsPostBack)
            {
                pnlBtnSearch.AddClass("hidden");
                WebUtil.AddRemoveHidden(true, pnlBtn, pnlGESTADO, pnlDFIMVAL, pnlSearchContent);
 
                if (transaccao != null)
                {
                    
                    TypeLoad(transaccao);
                }
            }
            ComboLoad();
        }

        private void TypeLoad(string transaccao)
        {
            lblTransaction.Text = transaccao;
            string type = transaccao.Substring(transaccao.Length - 1, 1);
            switch (type)
            {
                case "C":
                    
                    ReadOnlyCommonFields();

                    break;
                case "M":
                    txtCClaPrz.ReadOnly = true;
                    cmbCClaPrz.Disabled = true;
                    txtCMOEDA.ReadOnly = true;
                    cmbCMOEDA.Disabled = true;
                    cmbIRenovac.Disabled = true;
                    txtQMAXREN.ReadOnly = true;
                    cmbGCAMPNET.Disabled = true;
                    txtCCAMPNET.ReadOnly = true;
                    ReadOnlyCommonFields();
                    break;
                case "V":
                    Master.FindControl("CPH").Controls.SetReadonlyControls();
                    //cmbITRANCHE.Disabled = true;
                    //txtCAGREGDP.ReadOnly = true;
                    //cmbIRenovac.Disabled = true;
                    //txtQMAXREN.ReadOnly = true;
                    //cmbILEVANT.Disabled = true;
                    //cmbIAUTREF.Disabled = true;
                    //cmbIDiaNUt.Disabled = true;
                    //txtQDIASANT.ReadOnly = true;
                    //cmbIDEBFOR.Disabled = true;
                    //txtQTENTDEB.ReadOnly = true;
                    //cmbIPRCLNEW.Disabled = true;
                    //txtQDIASNCLI.ReadOnly = true;
                    //txtCCAMPNET.ReadOnly = true;
                    //cmbGCAMPNET.Disabled = true;
                    //cmbCCXSCONS.Disabled = true;
                    //txtCCXSCONS.ReadOnly = true;
                    //cmbCCXSVENC.Disabled = true;
                    //txtCCXSVENC.ReadOnly = true;
                    //txtCONOFFREGU.ReadOnly = true;
                    //txtCIPAD.ReadOnly = true;
                    //txtMVAR.ReadOnly = true;
                    //txtDVAR.ReadOnly = true;
                    //txtGOBSRV.ReadOnly = true;
                    //txtCCLAACTI.ReadOnly = true;
                    //txtCCLASSRISC.ReadOnly = true;
                    //txtDTACTIVA.ReadOnly = true;
                    //ReadOnlyCommonFields();
                    break;
                case "A":
                    Master.FindControl("CPH").Controls.SetReadonlyControls();
                    //txtCClaPrz.ReadOnly = true;
                    //cmbGCLAPRZ.Disabled = true;
                    //txtCMOEDA.ReadOnly = true;
                    //cmbGMOEDA.Disabled = true;
                    //cmbGESTADO.Disabled = true;
                    //txtCESTADO.ReadOnly = true;
                    //txtDINIVAL.ReadOnly = true;
                    //txtDFIMVAL.ReadOnly = true;
                    //cmbIPRZABS.Disabled = true;
                    //txtCPRODCNT.ReadOnly = true;
                    //txtCSPROCNT.ReadOnly = true;
                    //txtCFINBB.ReadOnly = true;
                    //cmbCFINBB.Disabled = true;
                    //cmbIIRS.Disabled = true;
                    //cmbITRANCHE.Disabled = true;
                    //txtCAGREGDP.ReadOnly = true;
                    //cmbIRenovac.Disabled = true;
                    //txtQMAXREN.ReadOnly = true;
                    //cmbILEVANT.Disabled = true;
                    //cmbIAUTREF.Disabled = true;
                    //cmbIDiaNUt.Disabled = true;
                    //txtQDIASANT.ReadOnly = true;
                    //cmbIDEBFOR.Disabled = true;
                    //txtQTENTDEB.ReadOnly = true;
                    //cmbIPRCLNEW.Disabled = true;
                    //txtQDIASNCLI.ReadOnly = true;
                    //txtCCAMPNET.ReadOnly = true;
                    //cmbGCAMPNET.Disabled = true;
                    //txtCCXSCONS.ReadOnly = true;
                    //cmbCCXSCONS.Disabled = true;
                    //cmbCCXSVENC.Disabled = true;
                    //txtCCXSVENC.ReadOnly = true;
                    //txtCONOFFREGU.ReadOnly = true;
                    //txtCIPAD.ReadOnly = true;
                    //txtMVAR.ReadOnly = true;
                    //txtDVAR.ReadOnly = true;
                    //txtGOBSRV.ReadOnly = true;
                    //txtCCLAACTI.ReadOnly = true;
                    //txtCCLASSRISC.ReadOnly = true;
                    //txtDTACTIVA.ReadOnly = true;
                    //ReadOnlyCommonFields();
                    break;
                default:
                    break;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


        }



        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }

        protected void ReadOnlyCommonFields()
        {
            txtCPRODUTO.ReadOnly = true;
            //cmbGPRODUTO.Disabled = true;
            txtCSubProd.ReadOnly = true;
            cmbCSubProd.Disabled = true;
            txtCSUBFAM.ReadOnly = true;
            cmbCSUBFAM.Disabled = true;
            txtCLIQUIDPROD.ReadOnly = true;
            cmbCCOMPLEXINV.Disabled = true;
            txtCCOMPLEXINV.ReadOnly = true;
            cmbCHORIZON.Disabled = true;
            txtCHORIZON.ReadOnly = true;
            cmbCZONGEOG.Disabled = true;
            txtCZONGEOG.ReadOnly = true;
            txtCNIVELRISCO.ReadOnly = true;
        }

        protected void ComboLoad()
        {

            cmbIPRZABS.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);
            cmbIIRS.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbITRANCHE.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbIRenovac.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbILEVANT.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbIAUTREF.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbIDiaNUt.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbIDEBFOR.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbIPRCLNEW.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            //cmbGESTADO.LoadWithList(IsPostBack, CatalogueModel.ListActive);

        }


    }
}