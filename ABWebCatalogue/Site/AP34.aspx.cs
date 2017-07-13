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

            switch (type)
            {
                case "C":
                    {
                        lblTransaction.Text = "AP34C";
                        break;
                    }
                case "M":
                    {
                        lblTransaction.Text = "AP34M";

                        txtCodProduto.Text = model.CProduto;

                        break;
                    }
                case "V":
                    {
                        lblTransaction.Text = "AP34V";

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
        }

    }
}