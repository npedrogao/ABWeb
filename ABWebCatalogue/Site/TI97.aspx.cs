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
using System.Text;

namespace ABWebCatalogue.Site
{
    public partial class TI97 : System.Web.UI.Page
    {

        
        TI97Model model = new TI97Model();

        protected void Page_Load(object sender, EventArgs e)
        {
            ComboLoad();
            StringBuilder js = new StringBuilder();
            CatalogueModel.ApplyModel(this, ref js);
            ClientScript.RegisterClientScriptBlock(this.GetType(), (new Guid()).ToString(), "<script>function JsServerSide(){" + js.ToString() + "};</script>", false);
            string transaccao = Request.QueryString["transacao"].ToUpper();
            lblTransaction.Text = transaccao;

            if (IsPostBack)
            {
                pnlBtnSearch.AddClass("hidden");
                WebUtil.AddRemoveHidden(true, pnlBtn, pnlTI, pnlSearchContent);
                if (transaccao != null)
                {
                    TypeLoad(transaccao);
                  
                }


            }

        }

   

        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }


        protected void TypeLoad(String transaccao)
        {
            lblTransaction.Text = transaccao;
            string type = transaccao.Substring(transaccao.Length - 1, 1);
            switch (type)
            {
                case "V":
                    Master.FindControl("CPH").Controls.SetReadonlyControls();
                    break;
                case "A":
                    Master.FindControl("CPH").Controls.SetReadonlyControls();
                    break;
                case "C":
                    txtCODVALOR.ReadOnly = true;
                    txtSITUACA.ReadOnly = true;
                    txtSEGCART.ReadOnly = true;
                    cmbDSEGCART.Disabled = true;
                    txtCTIPESC.ReadOnly = true;
                    txtCCIF_2.ReadOnly = true;
                    txtCCIF_6.ReadOnly = true;
                    txtNOMIN.ReadOnly = true;
                    txtZCLIENTE.ReadOnly = true;
                    txtZSEQ.ReadOnly = true;
                    txtDLGUARDA.ReadOnly = true;
                    txtDCUSTOD.ReadOnly = true;
                    txtRETEN.ReadOnly = true;
                    txtTISENIE.ReadOnly = true;
                    cmbDPERCOTA.Disabled = true;
                    txtIORIGEMPREC.ReadOnly = true;
                    cmbIORIGEMPREC.Disabled = true;
                    txtCODPAIS.ReadOnly = true;
                    txtCINDPRI.ReadOnly = true;
                    txtDINDPRI.ReadOnly = true;
                    txtCINDSEC.ReadOnly = true;
                    txtDINDSEC.ReadOnly = true;
                    txtFEALTCLI.ReadOnly = true;
                    txtFEULTMOD.ReadOnly = true;
                    txtUSUARIO.ReadOnly = true;
                    txtEMIS.ReadOnly = true;
                    txtFPROXA.ReadOnly = true;
                    cmbTIPAMOR.Disabled = true;
                    cmbTIPINT.Disabled = true;
                    txtINTERES.ReadOnly = true;
                    txtFPRIMA.ReadOnly = true;
                    cmbTPRICE.Disabled = true;
                    txtNDIASINDX.ReadOnly = true;
                    txtTSPREAD.ReadOnly = true;
                    txtCDAYCNT.ReadOnly = true;
                    txtDDAYCNT.ReadOnly = true;
                    txtQDIASMESCJ.ReadOnly = true;
                    txtCBASECJ.ReadOnly = true;
                    cmbZJURANO.Disabled = true;
                    txtTJURO7.ReadOnly = true;
                    txtFPRIMC.ReadOnly = true;
                    txtDTJUROSP.ReadOnly = true;
                    txtDTJUROSA.ReadOnly = true;
                    cmbCUPCORRC.Disabled = true;
                    txtJURODLIQ.ReadOnly = true;
                    txtPRECOEMI.ReadOnly = true;
                    txtDESDE.ReadOnly = true;
                    txtLOTEMIN.ReadOnly = true;
                    txtCODBAN.ReadOnly = true;
                    txtCRATFITCH.ReadOnly = true;
                    txtCRATMOODY.ReadOnly = true;
                    txtCRATSP.ReadOnly = true;
                    cmbCSENIOR.Disabled = true;
                    txtINDPFC.ReadOnly = true;
                    txtWDFEADMISS.ReadOnly = true;
                    txtWDFEULTNEG.ReadOnly = true;
                    cmbWDZEXERCANO.Disabled = true;
                    txtWDFEVENCIM.ReadOnly = true;
                    txtWDEXERCP.ReadOnly = true;
                    txtWDEXERCA.ReadOnly = true;
                    txtWDZEXERC.ReadOnly = true;
                    txtWDNOVCODVA.ReadOnly = true;
                    txtWDNOMBREV.ReadOnly = true;
                    txtWDPERCENT.ReadOnly = true;
                    cmbWDARREDOD.Disabled = true;
                    txtWDSTRIKE.ReadOnly = true;
                    cmbITIPOWAR.Disabled = true;
                    cmbIESTWAR.Disabled = true;
                    cmbITIPEXER.Disabled = true;
                    txtFEADMISS.ReadOnly = true;
                    txtFEULTNEG.ReadOnly = true;
                    txtFEVENCIM.ReadOnly = true;
                    txtPARIDADE.ReadOnly = true;
                    txtQLOTEMIN.ReadOnly = true;
                    cmbIACTSUBJ.Disabled = true;
                    txtNACTSUBJ.ReadOnly = true;
                    txtCMOESUBJ.ReadOnly = true;
                    cmbCTIPOLIQ.Disabled = true;
                    txtSTRIKE.ReadOnly = true;
                    txtNEMITEN.ReadOnly = true;
                    txtTFACTOR.ReadOnly = true;
                    cmbIACTSUB.Disabled = true;
                    txtGTFACTOR.ReadOnly = true;
                    txtPROVIDER.ReadOnly = true;
                    txtSOURCE.ReadOnly = true;
                    txtCODFTT.ReadOnly = true;
                    txtCSUBFAM.ReadOnly = true;
                    txtCLIQUIDPROD.ReadOnly = true;
                    cmbCCOMPLEXINV.Disabled = true;
                    txtCCOMPLEXINV.ReadOnly = true;
                    txtCHORIZON.ReadOnly = true;
                    cmbCZONGEOG.Disabled = true;
                    txtCNIVELRISCO.ReadOnly = true;
                    cmbCNIVELRISCO.Disabled = true;

                    break;
                case "M":
                    txtCODVALOR.ReadOnly = true;
                    txtSITUACA.ReadOnly = true;
                    cmbDSEGCART.Disabled = true;
                    txtCTIPESC.ReadOnly = true;
                    txtCCIF_2.ReadOnly = true;
                    txtCCIF_6.ReadOnly = true;
                    txtNOMIN.ReadOnly = true;
                    txtAMORPARC.ReadOnly = true;
                    txtZCLIENTE.ReadOnly = true;
                    txtZSEQ.ReadOnly = true;
                    txtDLGUARDA.ReadOnly = true;
                    txtDCUSTOD.ReadOnly = true;
                    txtRETEN.ReadOnly = true;
                    txtTISENIE.ReadOnly = true;
                    cmbDPERCOTA.Disabled = true;
                    cmbIORIGEMPREC.Disabled = true;
                    txtIORIGEMPREC.ReadOnly = true;
                    txtCODPAIS.ReadOnly = true;
                    txtCINDPRI.ReadOnly = true;
                    txtDINDPRI.ReadOnly = true;
                    txtCINDSEC.ReadOnly = true;
                    txtDINDSEC.ReadOnly = true;
                    txtFEALTCLI.ReadOnly = true;
                    txtFEULTMOD.ReadOnly = true;
                    txtUSUARIO.ReadOnly = true;
                    txtEMIS.ReadOnly = true;
                    txtFPROXA.ReadOnly = true;
                    cmbTIPAMOR.Disabled = true;
                    cmbTIPINT.Disabled = true;
                    txtINTERES.ReadOnly = true;
                    txtFPRIMA.ReadOnly = true;
                    cmbTPRICE.Disabled = true;
                    txtINDEXANTE.ReadOnly = true;
                    txtNDIASINDX.ReadOnly = true;
                    txtTSPREAD.ReadOnly = true;
                    txtCDAYCNT.ReadOnly = true;
                    txtDDAYCNT.ReadOnly = true;
                    txtQDIASMESCJ.ReadOnly = true;
                    txtCBASECJ.ReadOnly = true;
                    cmbZJURANO.Disabled = true;
                    txtTJURO7.ReadOnly = true;
                    txtFPRIMC.ReadOnly = true;
                    txtDTJUROSP.ReadOnly = true;
                    txtDTJUROSA.ReadOnly = true;
                    cmbCUPCORRC.Disabled = true;
                    txtJURODLIQ.ReadOnly = true;
                    txtPRECOEMI.ReadOnly = true;
                    txtDESDE.ReadOnly = true;
                    txtLOTEMIN.ReadOnly = true;
                    txtCODBAN.ReadOnly = true;
                    txtCRATFITCH.ReadOnly = true;
                    txtCRATMOODY.ReadOnly = true;
                    txtCRATSP.ReadOnly = true;
                    txtINDPFC.ReadOnly = true;
                    txtWDFEADMISS.ReadOnly = true;
                    txtWDFEULTNEG.ReadOnly = true;
                    cmbWDZEXERCANO.Disabled = true;
                    txtWDFEVENCIM.ReadOnly = true;
                    txtWDEXERCP.ReadOnly = true;
                    txtWDEXERCA.ReadOnly = true;
                    txtWDZEXERC.ReadOnly = true;
                    txtWDNOVCODVA.ReadOnly = true;
                    txtWDNOMBREV.ReadOnly = true;
                    txtWDPERCENT.ReadOnly = true;
                    cmbWDARREDOD.Disabled = true;
                    txtWDSTRIKE.ReadOnly = true;
                    cmbITIPOWAR.Disabled = true;
                    cmbIESTWAR.Disabled = true;
                    cmbITIPEXER.Disabled = true;
                    txtFEADMISS.ReadOnly = true;
                    txtFEULTNEG.ReadOnly = true;
                    txtFEVENCIM.ReadOnly = true;
                    txtPARIDADE.ReadOnly = true;
                    txtQLOTEMIN.ReadOnly = true;
                    cmbIACTSUBJ.Disabled = true;
                    txtNACTSUBJ.ReadOnly = true;
                    txtCMOESUBJ.ReadOnly = true;
                    cmbCTIPOLIQ.Disabled = true;
                    txtSTRIKE.ReadOnly = true;
                    txtNEMITEN.ReadOnly = true;
                    txtTFACTOR.ReadOnly = true;
                    cmbIACTSUB.Disabled = true;
                    txtGTFACTOR.ReadOnly = true;
                    txtPROVIDER.ReadOnly = true;
                    txtSOURCE.ReadOnly = true;
                    txtCODFTT.ReadOnly = true;
                    txtCLIQUIDPROD.ReadOnly = true;
                    txtCCOMPLEXINV.ReadOnly = true;
                    cmbCNIVELRISCO.Disabled = true;
                    txtAMORPARC.ReadOnly = true;
                    break;
                default:

                    break;

            }
        }

        protected void ComboLoad()
        {

            cmbITITDEF.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICOTADO.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbNEGOCIAV.LoadWithList(IsPostBack, CatalogueModel.ListNegociavel);
            cmbTIPTITUL.LoadWithList(IsPostBack, CatalogueModel.ListSitsNegociavel);
            cmbIBANTELE.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbITITBAL.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbTIPINT.LoadWithList(IsPostBack, CatalogueModel.ListTipoJuro);
            cmbTPRICE.LoadWithList(IsPostBack, CatalogueModel.ListPricing);
            cmbTIPAMOR.LoadWithList(IsPostBack, CatalogueModel.ListTipoSubscricao);
            cmbZJURANO.LoadWithList(IsPostBack, CatalogueModel.ListNumAno);
            cmbCUPCORRC.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbCSENIOR.LoadWithList(IsPostBack, CatalogueModel.ListSenioridade);
            cmbIALAVANC.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbCTIPMERC.LoadWithList(IsPostBack, CatalogueModel.ListTipoMercado);
            cmbISUBJACENT.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICONDMAT.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICONDCAL.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICONDPUT.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICONDRAA.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbICONDOUT.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbWDZEXERCANO.LoadWithList(IsPostBack, CatalogueModel.ListNumAno);
            cmbWDARREDOD.LoadWithList(IsPostBack, CatalogueModel.ListTipoArredon);
            cmbITIPOWAR.LoadWithList(IsPostBack, CatalogueModel.ListTipoWarrant);
            cmbIESTWAR.LoadWithList(IsPostBack, CatalogueModel.ListEstiloWarrant);
            cmbCCLASSRISC.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            cmbITIPEXER.LoadWithList(IsPostBack, CatalogueModel.ListTipoLiquida);
            cmbIACTSUBJ.LoadWithList(IsPostBack, CatalogueModel.ListIndiceActivoSubjacente);
            cmbCTIPOLIQ.LoadWithList(IsPostBack, CatalogueModel.ListTipoLiquida);
            cmbIACTSUB.LoadWithList(IsPostBack, CatalogueModel.ListH2527);

        }


    }
}