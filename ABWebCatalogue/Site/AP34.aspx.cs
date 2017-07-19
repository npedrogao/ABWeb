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

            type = Request.QueryString["type"];

            ddlPrazoAbsoluto.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);
            ddlDeclaracao.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlRepTranches.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlRenovacoes.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlMobilizacaoAntecipada.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlReforcoAutorizado.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            DDLDiasNUteis.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            
            ddlEstado.LoadWithEnum(IsPostBack, CatalogueModel.ListActive.ToList());
            DDLDiasAntecip.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlDebito.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
            ddlProdNCliente.LoadWithEnum(IsPostBack, CatalogueModel.ListSimNao.ToList());
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
                        txtGProduto.Text = model.GProduto;
                        txtCSubProd.Text = model.CSubProd;
                        txtGSubProd.Text = model.GSubProd;
                        txtCClaPrz.Text = model.CClaPrz;
                        txtGClaPrz.Text = model.GClaPrz;
                        txtCMoeda.Text = model.CMoeda;
                        txtGMoeda.Text = model.GMoeda;
                        ddlEstado.SelectedValue = model.CEstado;
                        txtEstadoDesc.Text = model.GEstado;
                        txtDataInicio.Text = model.DIniVal != null ? model.DIniVal.Value.ToString("yyyy-MM-dd") : "";
                        txtDataFim.Text = model.DFimVal != null ? model.DFimVal.Value.ToString("yyyy-MM-dd") : "";

                        //Características Gerais
                        ddlPrazoAbsoluto.SelectedValue = model.IPrzAbs;
                        txtProdSubPContab.Text = model.CProdCnt;
                        txtProdSubPContab2.Text = model.CProdCnt2;
                        txtProdSubPContabDesc.Text = model.CSProCnt;
                        txtFinalidade.Text = model.CFinBb;
                        txtFinalidadeDesc.Text = model.GFinBb;
                        ddlDeclaracao.SelectedValue = model.IIrs;
                        ddlRepTranches.SelectedValue = model.ITranche;
                        txtCodAgregado.Text = model.CAgregDp;
                        //Renovações
                        ddlRenovacoes.SelectedValue = model.IRenovac;
                        txtNumRenovacoes.Text = model.RNVA;
                        //Operações
                        ddlMobilizacaoAntecipada.SelectedValue = model.ILevAnt;
                        ddlReforcoAutorizado.SelectedValue = model.IAutRef;
                        DDLDiasNUteis.SelectedValue = model.IDiaNUt;
                        DDLDiasAntecip.SelectedValue = model.QDiasAnt;
                        //Débito
                        ddlDebito.SelectedValue = model.IDebFor;
                        txtNumTentativas.Text = model.QTentDeb;
                        //Validação Cliente
                        ddlProdNCliente.SelectedValue = model.IPrClNew;
                        txtNumDiasCliente.Text = model.QDiasNCli;
                        txtCampanhaExcepcao.Text = model.CCampNet;
                        txtCampanhaExcepcaoDesc.Text = model.GCampNet;
                        //Cross Selling
                        txtConstituicao.Text = model.CCxsCons;
                        txtConstituicaoDesc.Text = model.GCxsCons;
                        txtVencimento.Text = model.CCxsVenc;
                        txtVencimentoDesc.Text = model.GCxsVenc;
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
            CatalogueModel.ApplyModel(this);
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
            model.GProduto = form.GetStr(txtGProduto.ID);
            model.CSubProd = form.GetStr(txtCSubProd.ID);
            model.GSubProd = form.GetStr(txtGSubProd.ID);
            model.CClaPrz = form.GetStr(txtCClaPrz.ID);
            model.GClaPrz = form.GetStr(txtGClaPrz.ID);
            model.CMoeda = form.GetStr(txtCMoeda.ID);
            model.GMoeda = form.GetStr(txtGMoeda.ID);
            model.CEstado = form.GetStr(ddlEstado.ID);
            model.GEstado = form.GetStr(txtEstadoDesc.ID);
            //Características Gerais
            model.IPrzAbs = form.GetStr(ddlPrazoAbsoluto.ID);
            model.CProdCnt = form.GetStr(txtProdSubPContab.ID);
            model.CProdCnt2 = form.GetStr(txtProdSubPContab2.ID);
            model.CSProCnt = form.GetStr(txtProdSubPContabDesc.ID);
            model.CFinBb = form.GetStr(txtFinalidade.ID);
            model.GFinBb = form.GetStr(txtFinalidadeDesc.ID);
            model.IIrs = form.GetStr(ddlDeclaracao.ID);
            model.ITranche = form.GetStr(ddlRepTranches.ID);
            model.CAgregDp = form.GetStr(txtCodAgregado.ID);
            //Renovações
            model.IRenovac = form.GetStr(ddlRenovacoes.ID);
            model.RNVA = form.GetStr(txtNumRenovacoes.ID);
            //Operações
            model.ILevAnt = form.GetStr(ddlMobilizacaoAntecipada.ID);
            model.IAutRef = form.GetStr(ddlReforcoAutorizado.ID);
            model.IDiaNUt = form.GetStr(DDLDiasNUteis.ID);
            model.QDiasAnt = form.GetStr(DDLDiasAntecip.ID);
            //Débito
            model.IDebFor = form.GetStr(ddlDebito.ID);
            model.QTentDeb = form.GetStr(txtNumTentativas.ID);
            //Validação Cliente
            model.IPrClNew = form.GetStr(ddlProdNCliente.ID);
            model.QDiasNCli = form.GetStr(txtNumDiasCliente.ID);
            model.CCampNet = form.GetStr(txtCampanhaExcepcao.ID);
            model.GCampNet = form.GetStr(txtCampanhaExcepcaoDesc.ID);
            //Cross Selling
            model.CCxsCons = form.GetStr(txtConstituicao.ID);
            model.GCxsCons = form.GetStr(txtConstituicaoDesc.ID);
            model.CCxsVenc = form.GetStr(txtVencimento.ID);
            model.GCxsVenc = form.GetStr(txtVencimentoDesc.ID);
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