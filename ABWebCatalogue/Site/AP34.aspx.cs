using Core.Models;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            cmbIPrzAbs.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);
            cmbIIrs.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbITranche.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbIRenovac.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbILevAnt.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbIAutRef.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbIDiaNUt.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());

            cmbCEstado.LoadWithEnum(IsPostBack, CatalogueModel.ListActive.ToList());
            cmbQDiasAnt.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbIDebFor.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            cmbIPrClNew.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlSolicitarClassRisco.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNaoExclusivo);

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


                        txtCProduto.Text = model.CProduto;
                        cmbGProduto.Value = model.GProduto;
                        //txtGProduto.Text = model.GProduto;
                        txtCSubProd.Text = model.CSubProd;
                        cmbGSubProd.Value = model.GSubProd;
                        //txtGSubProd.Text = model.GSubProd;
                        txtCClaPrz.Text = model.CClaPrz;
                        txtGClaPrz.Text = model.GClaPrz;
                        txtCMoeda.Text = model.CMoeda;
                        txtGMoeda.Text = model.GMoeda;
                        cmbCEstado.SelectedValue = model.CEstado;
                        txtGEstado.Text = model.GEstado;
                        txtDIniVal.Text = model.DIniVal != null ? model.DIniVal.Value.ToString("yyyy-MM-dd") : "";
                        txtDFimVal.Text = model.DFimVal != null ? model.DFimVal.Value.ToString("yyyy-MM-dd") : "";

                        //Características Gerais
                        cmbIPrzAbs.SelectedValue = model.IPrzAbs;
                        txtCProdCnt.Text = model.CProdCnt;
                        txtCProdCnt2.Text = model.CProdCnt2;
                        txtCSProCnt.Text = model.CSProCnt;
                        txtCFinBb.Text = model.CFinBb;
                        txtGFinBb.Text = model.GFinBb;
                        cmbIIrs.SelectedValue = model.IIrs;
                        cmbITranche.SelectedValue = model.ITranche;
                        txtCAgregDp.Text = model.CAgregDp;
                        //Renovações
                        cmbIRenovac.SelectedValue = model.IRenovac;
                        txtRNVA.Text = model.RNVA;
                        //Operações
                        cmbILevAnt.SelectedValue = model.ILevAnt;
                        cmbIAutRef.SelectedValue = model.IAutRef;
                        cmbIDiaNUt.SelectedValue = model.IDiaNUt;
                        cmbQDiasAnt.SelectedValue = model.QDiasAnt;
                        //Débito
                        cmbIDebFor.SelectedValue = model.IDebFor;
                        txtQTentDeb.Text = model.QTentDeb;
                        //Validação Cliente
                        cmbIPrClNew.SelectedValue = model.IPrClNew;
                        txtQDiasNCli.Text = model.QDiasNCli;
                        txtCCampNet.Text = model.CCampNet;
                        txtGCampNet.Text = model.GCampNet;
                        //Cross Selling
                        txtCCxsCons.Text = model.CCxsCons;
                        txtGCxsCons.Text = model.GCxsCons;
                        txtCCxsVenc.Text = model.CCxsVenc;
                        txtGCxsVenc.Text = model.GCxsVenc;
                        //Atributos Investimento
                        txtSubFamilia.Text = model.SubFamilia;
                        txtSubFamiliaDesc.Text = model.SubFamiliaDesc;
                        txtLiquidez.Text = model.Liquidez;
                        txtComplexidade.Text = model.Complexidade;
                        txtComplexidadeDesc.Text = model.ComplexidadeDesc;
                        txtHorizonteTemporal.Text = model.HorizonteTemporal;
                        txtHorizonteTemporalDesc.Text = model.HorizonteTemporalDesc;
                        txtZonaGeografica.Text = model.ZonaGeografica;
                        txtZonaGeograficaDesc.Text = model.ZonaGeograficaDesc;
                        txtOnOffRegular.Text = model.OnOffRegular;
                        txtIpad.Text = model.Ipad;
                        txtNivelRisco.Text = model.NivelRisco;
                        txtVaR.Text = model.VaR;
                        txtData.Text = model.Data != null ? model.Data.Value.ToString("yyyy-MM-dd") : "";

                        txtDescricao.Value = model.Descricao;
                        txtCatClass.Text = model.CatClassActiv;
                        txtCatClassDesc.Text = model.CatClassActivDesc;
                        ddlSolicitarClassRisco.SelectedValue = model.SoliClasRisco;
                        txtDataActivacao.Text = model.DataActivacao != null ? model.DataActivacao.Value.ToString("yyyy-MM-dd") : "";

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

        protected void Page_PreRender(object sender, EventArgs e)
        {
            
        }

        protected void btnCaracGerais_Click(object sender, EventArgs e)
        {
            if (pnlCatGeraisContent.Visible == false)
            {
                pnlCatGeraisContent.Visible = true;
                btnCaracGerais.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnCaracGerais.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlCatGeraisContent.Visible = false;
                btnCaracGerais.Attributes.CssStyle.Remove("titleAccordion-less");
                btnCaracGerais.Attributes.Add("class", "titleAccordion-plus");
            }
        }


        protected void btnRenovacoes_Click(object sender, EventArgs e)
        {
            if (pnlRenovacoesContent.Visible == false)
            {
                pnlRenovacoesContent.Visible = true;
                btnRenovacoes.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnRenovacoes.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlRenovacoesContent.Visible = false;
                btnRenovacoes.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnRenovacoes.Attributes.Add("class", "titleAccordion-plus");
            }
        }

        protected void btnOperacoes_Click(object sender, EventArgs e)
        {
            if (pnlOperacoesContent.Visible == false)
            {
                pnlOperacoesContent.Visible = true;
                btnOperacoes.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnOperacoes.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlOperacoesContent.Visible = false;

                btnOperacoes.Attributes.CssStyle.Remove("titleAccordion-less");
                btnOperacoes.Attributes.Add("class", "titleAccordion-plus");
            }
        }

        protected void btnDebito_Click(object sender, EventArgs e)
        {
            if (pnlDebitoContent.Visible == false)
            {
                pnlDebitoContent.Visible = true;

                btnDebito.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnDebito.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlDebitoContent.Visible = false;

                btnDebito.Attributes.CssStyle.Remove("titleAccordion-less");
                btnDebito.Attributes.Add("class", "titleAccordion-plus");
            }
        }

        protected void btnValidacao_Click(object sender, EventArgs e)
        {
            if (pnlValidacaoContent.Visible == false)
            {
                pnlValidacaoContent.Visible = true;

                btnValidacao.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnValidacao.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlValidacaoContent.Visible = false;

                btnValidacao.Attributes.CssStyle.Remove("titleAccordion-less");
                btnValidacao.Attributes.Add("class", "titleAccordion-plus");
            }
        }

        protected void btnCrossSelling_Click(object sender, EventArgs e)
        {
            if (pnlCrossSellingContent.Visible == false)
            {
                pnlCrossSellingContent.Visible = true;

                btnCrossSelling.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnCrossSelling.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlCrossSellingContent.Visible = false;

                btnCrossSelling.Attributes.CssStyle.Remove("titleAccordion-less");
                btnCrossSelling.Attributes.Add("class", "titleAccordion-plus");
            }
        }

        protected void btnAtributoInvestimento_Click(object sender, EventArgs e)
        {
            if (pnlAtributoInvestimentoContent.Visible == false)
            {
                pnlAtributoInvestimentoContent.Visible = true;

                btnAtributoInvestimento.Attributes.CssStyle.Remove("titleAccordion-plus");
                btnAtributoInvestimento.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                pnlAtributoInvestimentoContent.Visible = false;

                btnAtributoInvestimento.Attributes.CssStyle.Remove("titleAccordion-less");
                btnAtributoInvestimento.Attributes.Add("class", "titleAccordion-plus");
            }
        }


        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var form = Request.Form;

            model.CProduto = form.GetStr(txtCProduto.ID);
            model.GProduto = form.GetStr(cmbGProduto.ID);
            model.CSubProd = form.GetStr(txtCSubProd.ID);
            model.GSubProd = form.GetStr(cmbGSubProd.ID);
            model.CClaPrz = form.GetStr(txtCClaPrz.ID);
            model.GClaPrz = form.GetStr(txtGClaPrz.ID);
            model.CMoeda = form.GetStr(txtCMoeda.ID);
            model.GMoeda = form.GetStr(txtGMoeda.ID);
            model.CEstado = form.GetStr(cmbCEstado.ID);
            model.GEstado = form.GetStr(txtGEstado.ID);
            //Características Gerais
            model.IPrzAbs = form.GetStr(cmbIPrzAbs.ID);
            model.CProdCnt = form.GetStr(txtCProdCnt.ID);
            model.CProdCnt2 = form.GetStr(txtCProdCnt2.ID);
            model.CSProCnt = form.GetStr(txtCSProCnt.ID);
            model.CFinBb = form.GetStr(txtCFinBb.ID);
            model.GFinBb = form.GetStr(txtGFinBb.ID);
            model.IIrs = form.GetStr(cmbIIrs.ID);
            model.ITranche = form.GetStr(cmbITranche.ID);
            model.CAgregDp = form.GetStr(txtCAgregDp.ID);
            //Renovações
            model.IRenovac = form.GetStr(cmbIRenovac.ID);
            model.RNVA = form.GetStr(txtRNVA.ID);
            //Operações
            model.ILevAnt = form.GetStr(cmbILevAnt.ID);
            model.IAutRef = form.GetStr(cmbIAutRef.ID);
            model.IDiaNUt = form.GetStr(cmbIDiaNUt.ID);
            model.QDiasAnt = form.GetStr(cmbQDiasAnt.ID);
            //Débito
            model.IDebFor = form.GetStr(cmbIDebFor.ID);
            model.QTentDeb = form.GetStr(txtQTentDeb.ID);
            //Validação Cliente
            model.IPrClNew = form.GetStr(cmbIPrClNew.ID);
            model.QDiasNCli = form.GetStr(txtQDiasNCli.ID);
            model.CCampNet = form.GetStr(txtCCampNet.ID);
            model.GCampNet = form.GetStr(txtGCampNet.ID);
            //Cross Selling
            model.CCxsCons = form.GetStr(txtCCxsCons.ID);
            model.GCxsCons = form.GetStr(txtGCxsCons.ID);
            model.CCxsVenc = form.GetStr(txtCCxsVenc.ID);
            model.GCxsVenc = form.GetStr(txtGCxsVenc.ID);
            //Atributos Investimento
            model.SubFamilia = form.GetStr(txtSubFamilia.ID);
            model.SubFamiliaDesc = form.GetStr(txtSubFamiliaDesc.ID);
            model.Liquidez = form.GetStr(txtLiquidez.ID);
            model.Complexidade = form.GetStr(txtComplexidade.ID);
            model.ComplexidadeDesc = form.GetStr(txtComplexidadeDesc.ID);
            model.HorizonteTemporal = form.GetStr(txtHorizonteTemporal.ID);
            model.HorizonteTemporal = form.GetStr(txtHorizonteTemporalDesc.ID);

            model.ZonaGeografica = form.GetStr(txtZonaGeografica.ID);
            model.ZonaGeograficaDesc = form.GetStr(txtZonaGeograficaDesc.ID);
            model.OnOffRegular = form.GetStr(txtOnOffRegular.ID);
            model.Ipad = form.GetStr(txtIpad.ID);
            model.NivelRisco = form.GetStr(txtNivelRisco.ID);
            model.VaR = form.GetStr(txtVaR.ID);
            // model.Data=  form.GetStr(txtData.ID);
            model.Descricao = form.GetStr(txtDescricao.ID);
            model.CatClassActiv = form.GetStr(txtCatClass.ID);
            model.CatClassActivDesc = form.GetStr(txtCatClassDesc.ID);
            model.SoliClasRisco = form.GetStr(ddlSolicitarClassRisco.ID);
            //model.DataActivacao = form.GetStr(txtDataActivacao.ID);


        }

    }
}