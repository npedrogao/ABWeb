using Core.Models;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCatalogue.Site
{
    public partial class AP34 : System.Web.UI.Page
    {
        string type;
        AP34Model model = new AP34Model();

        protected void Page_Load(object sender, EventArgs e)
        {
            type = Request.QueryString["type"];

            ddlPrazoAbsoluto.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);
            ddlDeclaracao.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlRepTranches.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlRenovacoes.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlMobilizacaoAntecipada.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlReforcoAutorizado.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            DDLDiasNUteis.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            DDLDiasAntecip.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlDebito.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlProdNCliente.LoadWithList(IsPostBack, CatalogueModel.ListSimNao);
            ddlSolicitarClassRisco.LoadWithList(IsPostBack, CatalogueModel.ListSimNaoExclusivo);
            select.LoadWithList(IsPostBack, CatalogueModel.ListPrazoAbsoluto);

            //

            switch (type)
            {
                case "C":
                    {
                        lblTransaction.Text = "AP34C";

                        break;
                    }
                case "M":
                case "V":
                    {
                        lblTransaction.Text = "AP34M";

                        txtCodProduto.Text = model.CProduto;
                        txtCodProdutoDesc.Text = model.GProduto;
                        txtCodSubProduto.Text = model.CSubProd;
                        txtCodSubProdutoDesc.Text = model.GSubProd;
                        txtClasse.Text = model.CClaPrz;
                        txtClasseDesc.Text = model.GClaPrz;
                        txtMoeda.Text = model.CMoeda;
                        txtMoeda2.Text = model.GMoeda;
                        txtEstado.Text = model.CEstado;
                        txtEstadoDesc.Text = model.GEstado;
                        //txtDataInicio
                        //txtDataFim

                        //Características Gerais
                        select.Disabled = true;
                        select.Value = model.IPrzAbs;
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
                        //txtData = model.Data;
                        txtDescricao.Value = model.Descricao;
                        txtCatClass.Text = model.CatClassActiv;
                        txtCatClassDesc.Text = model.CatClassActivDesc;
                        ddlSolicitarClassRisco.SelectedValue = model.SoliClasRisco;
                        //txtDataActivacao = model.DataActivacao;

                        if (type == "V")
                        {
                            Master.FindControl("CPH").Controls.SetReadonlyControls();
                        }

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
            var form = Request.Form;

            model.CProduto = form.GetStr(txtCodProduto.ID);
            model.GProduto = form.GetStr(txtCodProdutoDesc.ID);
            model.CSubProd = form.GetStr(txtCodSubProduto.ID);
            model.GSubProd = form.GetStr(txtCodSubProdutoDesc.ID);
            model.CClaPrz = form.GetStr(txtClasse.ID);
            model.GClaPrz = form.GetStr(txtClasseDesc.ID);
            model.CMoeda = form.GetStr(txtMoeda.ID);
            model.GMoeda = form.GetStr(txtMoeda2.ID);
            model.CEstado = form.GetStr(txtEstado.ID);
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