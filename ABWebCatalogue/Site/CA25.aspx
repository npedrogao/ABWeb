<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA25.aspx.cs" Inherits="ABWebCatalogue.Site.CA25spx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".collapse").on('show.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus");
            }).on('hide.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus");
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="title">CA25</div>
        <div class="panel-content panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-xs-12 ">
                    <div class="row form-group">
                        <div class="col-xs-3">
                            <asp:Label ID="lbISIN" runat="server" class="col-xs-4 control-label">ISIN:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtISIN" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                        </div>
                        <div class="col-xs-3">
                        </div>
                        <div class="col-xs-3">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-3">
                            <asp:Label ID="lbMoeda" runat="server" class="col-xs-4 control-label">Moeda:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtMoeda" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <asp:Label ID="lbEstadoFundo" runat="server" class="col-xs-5 control-label">Estado do Fundo:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtEstadoFundo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <asp:Label ID="lbProduto" runat="server" class="col-xs-4 control-label">Produto:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtProduto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <asp:Label ID="lbAntigoProduto" runat="server" class="col-xs-5 control-label">Antigo Produto:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtAntigoProduto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-3">
                            <asp:Label ID="lbNomeCurto" runat="server" class="col-xs-4 control-label">Nome Curto:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtNomeCurto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <asp:Label ID="lbClasseFundo" runat="server" class="col-xs-5 control-label">Classe do Fundo:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtClasseFundo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <asp:Label ID="lbSubProduto" runat="server" class="col-xs-4 control-label">SubProduto:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtSubProduto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <asp:Label ID="lbAntigoSubProduto" runat="server" class="col-xs-5 control-label">Antigo SubProduto:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtAntigoSubProduto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse1">Características Bankinter<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCategoriaAtivos" runat="server" class="col-xs-4 control-label">Categoria de Ativos:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCategoriaAtivos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbClassesAtivos" runat="server" class="col-xs-4 control-label">Classes de Ativos:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtClassesAtivos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse2">Características All Funds<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label1" runat="server" class="col-xs-4 control-label">Classes de Ativos:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtClassesAtivosAll" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtClassesAtivosAllDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label2" runat="server" class="col-xs-4 control-label">Tipo de Ativos:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTipoAtivos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTipoAtivosDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label3" runat="server" class="col-xs-4 control-label">Área Geográfica:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtAreaGeo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtAreaGeoDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label4" runat="server" class="col-xs-4 control-label">Range:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtRange" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtRangeDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label5" runat="server" class="col-xs-4 control-label">Zona Geográfica:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtZonaGeo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtZonaGeoDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label6" runat="server" class="col-xs-4 control-label">Tipo de Fundo:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTipoFundo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTipoFundoDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse3">Sociedade Gestora<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label7" runat="server" class="col-xs-4 control-label">Código Soc. Gestora:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCodSocGestora" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label8" runat="server" class="col-xs-4 control-label">Nome Soc. Gestora:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="TextBox3" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label9" runat="server" class="col-xs-4 control-label">Pais Soc. Gestora:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label10" runat="server" class="col-xs-4 control-label">Pais Emissão do Fundo:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtPaisEmissaoFundo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse4">SICAV<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label11" runat="server" class="col-xs-4 control-label">Código SICAV:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtcodSICAV" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label12" runat="server" class="col-xs-4 control-label">Pais SICAV:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtPaisSICAV" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label13" runat="server" class="col-xs-4 control-label">Domicilio SICAV:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtdomicilioSICAV" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label14" runat="server" class="col-xs-4 control-label">Nome SICAV:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtNomeSICAV" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label15" runat="server" class="col-xs-4 control-label">NIF Emitente:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtNIFEmitente" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse5">KIID<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label16" runat="server" class="col-xs-4 control-label">Risco KIID:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtRiscoKIID" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label17" runat="server" class="col-xs-4 control-label">Data SICAV:</asp:Label>
                                    <div class="col-xs-5">
                                        <input id="txtDataKIID" runat="server" cssclass="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label18" runat="server" class="col-xs-4 control-label">Ongoing Charge:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtOngoingCharge" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse6">Dividendos<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label19" runat="server" class="col-xs-6 control-label">COM Dividendos:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCOMDividendos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label20" runat="server" class="col-xs-6 control-label">Periodicidade Pag. Dividendos:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtPeriodicidadePagDividendos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label21" runat="server" class="col-xs-6 control-label">Tipo Retenção Dividendos:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtTipoRetencaoDividendos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse7">Outras Caracteristicas<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="Label22" runat="server" class="col-xs-6 control-label">UCIT:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtUCIT" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label23" runat="server" class="col-xs-6 control-label">Moeda Trailer Fees:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtMoedaTrailerFees" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label24" runat="server" class="col-xs-6 control-label">Tipo Pag. p/Fundos c/ Equalização:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtTipoPFundosEqual" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label25" runat="server" class="col-xs-6 control-label">Decimais Montantes:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDecMontantes" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="Label26" runat="server" class="col-xs-6 control-label">INISCOPE ESD?:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtINIESCOPEESD" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label27" runat="server" class="col-xs-6 control-label">INISCOPE ESD?:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtIniscope" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label28" runat="server" class="col-xs-6 control-label">Decimais Quantidades:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDecQtds" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="Label29" runat="server" class="col-xs-6 control-label">Custódia / Distribuição:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCustodiaDistribuicao" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label30" runat="server" class="col-xs-6 control-label">Multi Contas:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtMultiContas" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label35" runat="server" class="col-xs-6 control-label">Ret. Imposto Selo:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtRetImpostoSelo" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label31" runat="server" class="col-xs-6 control-label">Balcão Oper.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtBalcaoOper" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="Label32" runat="server" class="col-xs-6 control-label">Gestão Ativos:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtGestaoAtivos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label33" runat="server" class="col-xs-6 control-label">Benef.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtBenef" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label36" runat="server" class="col-xs-6 control-label">Tipo Valorização:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtTipoVal" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label34" runat="server" class="col-xs-6 control-label">Balção Adicional:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtBalcaoAdicional" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="Label37" runat="server" class="col-xs-6 control-label">Informa Banco de Portugal:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtInfBancoPortugal" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label38" runat="server" class="col-xs-6 control-label">Tipo processamento.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtTipoProcess" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="Label40" runat="server" class="col-xs-6 control-label">Cliente obrigatório:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtClienteObrig" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="Label41" runat="server" class="col-xs-6 control-label">Agrupamento Extrato:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtAgrupExtrato" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:TextBox ID="txtAgrupExtratoDesc" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-xs-3">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse8">Comissões<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse8" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                </div>
                                <div class="col-xs-3">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse9">Cotações<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse9" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label39" runat="server" class="col-xs-4 control-label">Periodo Cotação:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtPeriodoCotacao" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label42" runat="server" class="col-xs-4 control-label">Cotações p/ Agências:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCotAgencias" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="Label44" runat="server" class="col-xs-4 control-label">Decimais Cotações:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtDecCotacoes" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label43" runat="server" class="col-xs-4 control-label">Cotações p/ Serviços:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCotServicos" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse10">Negociação<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse10" class="panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                            </div>
                            <div class="row form-group">
                            </div>
                            <div class="row form-group">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row form-group">
        <div class="col-xs-offset-10">
            <button class="btn btn-default">Limpar</button>
            <button class="btn btn-default col-xs-offset-3">Gravar</button>
        </div>
    </div>
    <div class="row">
        <hr class="hr" />
    </div>

</asp:Content>
