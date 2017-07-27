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


namespace ABWebCatalogue.Site
{
    public partial class AP34 : System.Web.UI.Page
    {
        string type;
        AP34Model model = new AP34Model();


        protected void Page_Load(object sender, EventArgs e)
        {

            StringBuilder js = new StringBuilder();
            CatalogueModel.ApplyModel(this, ref js);
            ClientScript.RegisterClientScriptBlock(this.GetType(), (new Guid()).ToString(), "<script>function JsServerSide(){" + js.ToString() + "};</script>", false);

            if (IsPostBack)
            {
                pnlBtnSearch.AddClass("hidden");
                WebUtil.AddRemoveHidden(true, pnlBtn, pnlGESTADO, pnlDFIMVAL, pnlSearchContent);
      
            }

           


            switch (type)
            {
                case "C":
                    {


                        lblTransaction.Text = "AP34C";

                        break;
                    }
                case "M":
                    lblTransaction.Text = "AP34M";
                    break;
                case "V":
                    {
                        lblTransaction.Text = "AP34V";

                        //txtCProduto.Text = model.CProduto;
                        //cmbGProduto.Value = model.GProduto;
                        ////txtGProduto.Text = model.GProduto;
                        //txtCSubProd.Text = model.CSubProd;
                        //cmbGSubProd.Value = model.GSubProd;
                        ////txtGSubProd.Text = model.GSubProd;
                        //txtCClaPrz.Text = model.CClaPrz;
                        //txtGClaPrz.Text = model.GClaPrz;
                        //txtCMoeda.Text = model.CMoeda;
                        //txtGMoeda.Text = model.GMoeda;
                        //txtCEstado.Text = model.CEstado;
                        //cmbGEstado.SelectedValue = model.GEstado;
                        //txtDIniVal.Text = model.DIniVal != null ? model.DIniVal.Value.ToString("yyyy-MM-dd") : "";
                        //txtDFimVal.Text = model.DFimVal != null ? model.DFimVal.Value.ToString("yyyy-MM-dd") : "";

                        ////Características Gerais
                        //cmbIPrzAbs.SelectedValue = model.IPrzAbs;
                        //txtCProdCnt.Text = model.CProdCnt;
                        //txtCProdCnt2.Text = model.CProdCnt2;
                        //txtCSProCnt.Text = model.CSProCnt;
                        //txtCFinBb.Text = model.CFinBb;
                        //txtGFinBb.Text = model.GFinBb;
                        //cmbIIrs.SelectedValue = model.IIrs;
                        //cmbITranche.SelectedValue = model.ITranche;
                        //txtCAgregDp.Text = model.CAgregDp;
                        ////Renovações
                        //cmbIRenovac.SelectedValue = model.IRenovac;
                        //txtQMAXREN.Text = model.RNVA;
                        ////Operações
                        //cmbILevAnt.SelectedValue = model.ILevAnt;
                        //cmbIAutRef.SelectedValue = model.IAutRef;
                        //cmbIDiaNUt.SelectedValue = model.IDiaNUt;
                        //cmbQDiasAnt.SelectedValue = model.QDiasAnt;
                        ////Débito
                        //cmbIDebFor.SelectedValue = model.IDebFor;
                        //txtQTentDeb.Text = model.QTentDeb;
                        ////Validação Cliente
                        //cmbIPrClNew.SelectedValue = model.IPrClNew;
                        //txtQDiasNCli.Text = model.QDiasNCli;
                        //txtCCampNet.Text = model.CCampNet;
                        //txtGCampNet.Text = model.GCampNet;
                        ////Cross Selling
                        //txtCCxsCons.Text = model.CCxsCons;
                        //txtGCxsCons.Text = model.GCxsCons;
                        //txtCCxsVenc.Text = model.CCxsVenc;
                        //txtGCxsVenc.Text = model.GCxsVenc;
                        ////Atributos Investimento
                        //txtSubFamilia.Text = model.SubFamilia;
                        //txtSubFamiliaDesc.Text = model.SubFamiliaDesc;
                        //txtLiquidez.Text = model.Liquidez;
                        //txtComplexidade.Text = model.Complexidade;
                        //txtComplexidadeDesc.Text = model.ComplexidadeDesc;
                        //txtHorizonteTemporal.Text = model.HorizonteTemporal;
                        //txtHorizonteTemporalDesc.Text = model.HorizonteTemporalDesc;
                        //txtZonaGeografica.Text = model.ZonaGeografica;
                        //txtZonaGeograficaDesc.Text = model.ZonaGeograficaDesc;
                        //txtOnOffRegular.Text = model.OnOffRegular;
                        //txtIpad.Text = model.Ipad;
                        //txtNivelRisco.Text = model.NivelRisco;
                        //txtVaR.Text = model.VaR;
                        //txtData.Text = model.Data != null ? model.Data.Value.ToString("yyyy-MM-dd") : "";

                        //txtDescricao.Value = model.Descricao;
                        //txtCatClass.Text = model.CatClassActiv;
                        //txtCatClassDesc.Text = model.CatClassActivDesc;
                        //ddlSolicitarClassRisco.SelectedValue = model.SoliClasRisco;
                        //txtDataActivacao.Text = model.DataActivacao != null ? model.DataActivacao.Value.ToString("yyyy-MM-dd") : "";

               
                  
                        break;
                    }

                case "A":
                    {
                        lblTransaction.Text = "AP34A";
                        break;
                    }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

  
        }



        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }

      

  

   
    }
}