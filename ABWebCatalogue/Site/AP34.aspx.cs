using Core.Models;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Utils;

namespace ABWebCatalogue.Site
{
    public partial class AP34 : System.Web.UI.Page
    {
        string type;
        AP34Model model = new AP34Model();


        protected void Page_Load(object sender, EventArgs e)
        {
            //this.LoadComplete += AP34_LoadComplete;

            CatalogueModel.ApplyModel(this);

            type = Request.QueryString["type"];

            //cmbIPrzAbs.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);
            //cmbIIrs.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbITranche.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbIRenovac.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbILevAnt.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbIAutRef.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbIDiaNUt.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());

            //cmbGEstado.LoadWithEnum(IsPostBack, CatalogueModel.ListActive.ToList());
            //cmbQDiasAnt.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbIDebFor.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //cmbIPrClNew.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            //ddlSolicitarClassRisco.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNaoExclusivo);

            //select.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);


            switch (type)
            {
                case "C":
                    {


                        //  Core.Models.ModelField("AP34C", model.CProduto, 

                        break;
                    }
                case "M":
                case "V":
                    {


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

                        if (type == "V")
                        {
                            Master.FindControl("CPH").Controls.SetReadonlyControls();
                        }

                        break;
                    }

                case "A":
                    {

                        break;
                    }
            }
        }

        protected void btnCaracGerais_Click(object sender, EventArgs e)
        {
            if (pnlCatGeraisContent.Visible == false)
            {
                pnlCatGeraisContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnCaracGerais);
            }
            else
            {
                pnlCatGeraisContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnCaracGerais);
            }
        }
        
        protected void btnRenovacoes_Click(object sender, EventArgs e)
        {
            if (pnlRenovacoesContent.Visible == false)
            {
                pnlRenovacoesContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnRenovacoes);
            }
            else
            {
                pnlRenovacoesContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnRenovacoes);
            }
        }

        protected void btnOperacoes_Click(object sender, EventArgs e)
        {
            if (pnlOperacoesContent.Visible == false)
            {
                pnlOperacoesContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnOperacoes);
            }
            else
            {
                pnlOperacoesContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnOperacoes);
            }
        }

        protected void btnDebito_Click(object sender, EventArgs e)
        {
            if (pnlDebitoContent.Visible == false)
            {
                pnlDebitoContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnDebito);
            }
            else
            {
                pnlDebitoContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnDebito);
            }
        }

        protected void btnValidacao_Click(object sender, EventArgs e)
        {
            if (pnlValidacaoContent.Visible == false)
            {
                pnlValidacaoContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnValidacao);
            }
            else
            {
                pnlValidacaoContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnValidacao);
            }
        }

        protected void btnCrossSelling_Click(object sender, EventArgs e)
        {
            if (pnlCrossSellingContent.Visible == false)
            {
                pnlCrossSellingContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnCrossSelling);
            }
            else
            {
                pnlCrossSellingContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnCrossSelling);
            }
        }

        protected void btnAtributoInvestimento_Click(object sender, EventArgs e)
        {
            if (pnlAtributoInvestimentoContent.Visible == false)
            {
                pnlAtributoInvestimentoContent.Visible = true;
                WebUtil.ChangeBtnAtt(true, btnAtributoInvestimento);
            }
            else
            {
                pnlAtributoInvestimentoContent.Visible = false;
                WebUtil.ChangeBtnAtt(false, btnAtributoInvestimento);
            }
        }
        
        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var form = Request.Form;

            //model.CProduto = form.GetStr(txtCProduto.ID);
            //model.GProduto = form.GetStr(cmbGProduto.ID);
            //model.CSubProd = form.GetStr(txtCSubProd.ID);
            //model.GSubProd = form.GetStr(cmbGSubProd.ID);
            //model.CClaPrz = form.GetStr(txtCClaPrz.ID);
            //model.GClaPrz = form.GetStr(txtGClaPrz.ID);
            //model.CMoeda = form.GetStr(txtCMoeda.ID);
            //model.GMoeda = form.GetStr(txtGMoeda.ID);
            //model.CEstado = form.GetStr(txtCEstado.ID);
            //model.GEstado = form.GetStr(cmbGEstado.ID);
            ////Características Gerais
            //model.IPrzAbs = form.GetStr(cmbIPrzAbs.ID);
            //model.CProdCnt = form.GetStr(txtCProdCnt.ID);
            //model.CProdCnt2 = form.GetStr(txtCProdCnt2.ID);
            //model.CSProCnt = form.GetStr(txtCSProCnt.ID);
            //model.CFinBb = form.GetStr(txtCFinBb.ID);
            //model.GFinBb = form.GetStr(txtGFinBb.ID);
            //model.IIrs = form.GetStr(cmbIIrs.ID);
            //model.ITranche = form.GetStr(cmbITranche.ID);
            //model.CAgregDp = form.GetStr(txtCAgregDp.ID);
            ////Renovações
            //model.IRenovac = form.GetStr(cmbIRenovac.ID);
            //model.RNVA = form.GetStr(txtQMAXREN.ID);
            ////Operações
            //model.ILevAnt = form.GetStr(cmbILevAnt.ID);
            //model.IAutRef = form.GetStr(cmbIAutRef.ID);
            //model.IDiaNUt = form.GetStr(cmbIDiaNUt.ID);
            //model.QDiasAnt = form.GetStr(cmbQDiasAnt.ID);
            ////Débito
            //model.IDebFor = form.GetStr(cmbIDebFor.ID);
            //model.QTentDeb = form.GetStr(txtQTentDeb.ID);
            ////Validação Cliente
            //model.IPrClNew = form.GetStr(cmbIPrClNew.ID);
            //model.QDiasNCli = form.GetStr(txtQDiasNCli.ID);
            //model.CCampNet = form.GetStr(txtCCampNet.ID);
            //model.GCampNet = form.GetStr(txtGCampNet.ID);
            ////Cross Selling
            //model.CCxsCons = form.GetStr(txtCCxsCons.ID);
            //model.GCxsCons = form.GetStr(txtGCxsCons.ID);
            //model.CCxsVenc = form.GetStr(txtCCxsVenc.ID);
            //model.GCxsVenc = form.GetStr(txtGCxsVenc.ID);
            ////Atributos Investimento
            //model.SubFamilia = form.GetStr(txtSubFamilia.ID);
            //model.SubFamiliaDesc = form.GetStr(txtSubFamiliaDesc.ID);
            //model.Liquidez = form.GetStr(txtLiquidez.ID);
            //model.Complexidade = form.GetStr(txtComplexidade.ID);
            //model.ComplexidadeDesc = form.GetStr(txtComplexidadeDesc.ID);
            //model.HorizonteTemporal = form.GetStr(txtHorizonteTemporal.ID);
            //model.HorizonteTemporal = form.GetStr(txtHorizonteTemporalDesc.ID);

            //model.ZonaGeografica = form.GetStr(txtZonaGeografica.ID);
            //model.ZonaGeograficaDesc = form.GetStr(txtZonaGeograficaDesc.ID);
            //model.OnOffRegular = form.GetStr(txtOnOffRegular.ID);
            //model.Ipad = form.GetStr(txtIpad.ID);
            //model.NivelRisco = form.GetStr(txtNivelRisco.ID);
            //model.VaR = form.GetStr(txtVaR.ID);
            //// model.Data=  form.GetStr(txtData.ID);
            //model.Descricao = form.GetStr(txtDescricao.ID);
            //model.CatClassActiv = form.GetStr(txtCatClass.ID);
            //model.CatClassActivDesc = form.GetStr(txtCatClassDesc.ID);
            //model.SoliClasRisco = form.GetStr(ddlSolicitarClassRisco.ID);
            ////model.DataActivacao = form.GetStr(txtDataActivacao.ID);


        }
        
        protected void btnCloseAll_Click(object sender, EventArgs e)
        {
            pnlCatGeraisContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnCaracGerais);
            pnlRenovacoesContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnRenovacoes);
            pnlOperacoesContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnOperacoes);
            pnlDebitoContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnDebito);
            pnlValidacaoContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnValidacao);
            pnlCrossSellingContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnCrossSelling);
            pnlAtributoInvestimentoContent.Visible = false;
            WebUtil.ChangeBtnAtt(false, btnAtributoInvestimento);
        }

        protected void btnOpenAll_Click(object sender, EventArgs e)
        {
            pnlCatGeraisContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnCaracGerais);
            pnlRenovacoesContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnRenovacoes);
            pnlOperacoesContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnOperacoes);
            pnlDebitoContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnDebito);
            pnlValidacaoContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnValidacao);
            pnlCrossSellingContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnCrossSelling);
            pnlAtributoInvestimentoContent.Visible = true;
            WebUtil.ChangeBtnAtt(true, btnAtributoInvestimento);
        }

    }
}