<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI97.aspx.cs" Inherits="ABWebCatalogue.Site.TI97" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap-datepicker.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="title">TI05C</div>
        <div class="panel-content panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbEspecie" runat="server" class="col-xs-4 control-label">Espécie:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtEspecie" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtEspecie2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbSgCateira" runat="server" class="col-xs-4 control-label">Seg. Carteira:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtSgCateira" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtSgCateiraDesc" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbEscalaoPrec" runat="server" class="col-xs-4 control-label">Escalão Prec.:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtEscalaoPrec" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbISIN" runat="server" class="col-xs-4 control-label">ISIN:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtISIN" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCVM" runat="server" class="col-xs-4 control-label">CVM:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtCVM" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbClassFin" runat="server" class="col-xs-4 control-label">Class.I.Fin.:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtClassFin" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbBloomberg" runat="server" class="col-xs-4 control-label">Bloomberg:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtBloomberg" runat="server" size="1" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbReuters" runat="server" class="col-xs-4 control-label">Reuters:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtReuters" runat="server" size="1" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCMVMPFC" runat="server" class="col-xs-4 control-label">CMVM PFC:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtCMVMPFC" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDefault" runat="server" class="col-xs-4 control-label">Default:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlDefault" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-6">
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbMoedNomimal" runat="server" class="col-xs-4 control-label">Moed+Nomimal:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtMoedNomimal" runat="server" size="1" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtMoedNomimalDesc" runat="server" size="1" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbNominalAnt" runat="server" class="col-xs-4 control-label">Nominal Ant.:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtNominalAnt" runat="server" size="1" CssClass="form-control medium-input"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-6">
                            <asp:Label ID="lbAmortParcial" runat="server" class="col-xs-6 control-label">Amort. Parcial sem Afeta Nom/Quant.:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlAmortParcial" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbContribuinte" runat="server" class="col-xs-4 control-label">Contribuinte:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtContribuinte" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbISINCONBP" runat="server" class="col-xs-4 control-label">ISIN CON. BP:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtISINCONBP" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCTA" runat="server" class="col-xs-4 control-label">CTA Emissão:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtCTA" runat="server" size="1" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCTADesc" runat="server" size="1" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbNatJuridica" runat="server" class="col-xs-4 control-label">Natureza Juridica:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtNatJuridica" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCodAdicBP" runat="server" class="col-xs-4 control-label">COD. ADIC. BP:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtCodAdicBP" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbRiscoProd" runat="server" class="col-xs-4 control-label">Risco Produto:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtRiscoProd" runat="server" size="1" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbPaisEmit" runat="server" class="col-xs-4 control-label">Pais Emitente:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtPaisEmit" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtPaisEmitDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbLocalGuarda" runat="server" class="col-xs-4 control-label">Local Guarda:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtLocalGuarda" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtLocalGuardaDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCustodiante" runat="server" class="col-xs-4 control-label">Custodiante:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtCustodiante" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCustodianteDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbIRSIRC" runat="server" class="col-xs-4 control-label">% IRS/IRC:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtIRSIRC" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbIsencaoIRS" runat="server" class="col-xs-4 control-label">% Isenção IRS:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtIsencaoIRS" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbAgravaIRS" runat="server" class="col-xs-4 control-label">% Agrava. IRS:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtAgravaIRS" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbIEstrang" runat="server" class="col-xs-4 control-label">% I. Estrang.:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtIEstrang" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbIsencaoIE" runat="server" class="col-xs-4 control-label">% Isenção IE:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtIsencaoIE" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbAgravaIE" runat="server" class="col-xs-4 control-label">Agrava. IE:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtAgravaIE" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbCotacao" runat="server" class="col-xs-4 control-label">Tem Cotação:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlCotacao" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbMoedaLiqCotacao" runat="server" class="col-xs-4 control-label">Moeda Liq.+Cotação:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtMoedaLiqCotacao" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtMoedaLiqCotacaoDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbDataCot" runat="server" class="col-xs-4 control-label">Data Cot.:</asp:Label>
                            <div class="col-xs-4">
                                <input id="txtDataCot" type="date" runat="server" class="form-control" />
                            </div>

                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbPeriodCotacao" runat="server" class="col-xs-4 control-label">Periodicidade Cotação:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtPeriodCotacao" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtPeriodCotacaoDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbOrigemPreco" runat="server" class="col-xs-4 control-label">Origem Preço:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtOrigemPreco" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="OrigemPrecoDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbNegociavel" runat="server" class="col-xs-4 control-label">Negociável:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlNegociavel" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                    <asp:ListItem>V</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbBolsas" runat="server" class="col-xs-4 control-label">Bolsas:</asp:Label>
                            <div class="col-xs-8">
                                <div class="col-xs-8">

                                    <asp:TextBox ID="txtBolsas1" runat="server" CssClass="form-control input-group-xs"></asp:TextBox>
                                </div>
                                <%--<asp:TextBox ID="txtBolsas2" runat="server" CssClass="form-control input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas3" runat="server" CssClass="form-control input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas4" runat="server" CssClass="form-control input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas5" runat="server" CssClass="form-control input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas6" runat="server" CssClass="form-control input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas7" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas8" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas9" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas10" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas11" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas12" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas13" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas14" runat="server" CssClass="form-control "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas15" runat="server" CssClass="form-control "></asp:TextBox>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbPaixsercad" runat="server" class="col-xs-4 control-label">Pais Mercad:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtPaixsercad" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtPaixsercadDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbSistNegocia" runat="server" class="col-xs-4 control-label">Sist. Negocia.:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlSistNegocia" CssClass="form-control" runat="server">
                                    <asp:ListItem>N</asp:ListItem>
                                    <asp:ListItem>P</asp:ListItem>
                                    <asp:ListItem>O</asp:ListItem>
                                    <asp:ListItem>X</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-6"></div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbTickSize" runat="server" class="col-xs-4 control-label">Tick Size:</asp:Label>
                            <div class="col-xs-4 input-group">
                                <asp:TextBox ID="txtTickSize" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbIndicePrinc" runat="server" class="col-xs-4 control-label">Indice Princ:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtIndicePrinc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtIndicePrincDesc" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbIndiceSecun" runat="server" class="col-xs-4 control-label">Indice Secun.:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtIndiceSecun" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtIndiceSecunVal" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbIsencaoTxBol" runat="server" class="col-xs-4 control-label">% Isenção Tx.Bol:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtIsencaoTxBol" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtIsencaoTxBolDesc" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbNet" runat="server" class="col-xs-4 control-label">Net:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlNet" CssClass="form-control" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbAgencias" runat="server" class="col-xs-4 control-label">Agências:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlAgencias" CssClass="form-control" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbElegivel" runat="server" class="col-xs-4 control-label">Elegivel:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlElegivel" CssClass="form-control" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDataCriacao" runat="server" class="col-xs-4 control-label">Data Criação:</asp:Label>
                            <div class="col-xs-4">
                                <input id="txtDataInicio" type="date" runat="server" class="form-control" />
                            </div>

                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbUltActual" runat="server" class="col-xs-4 control-label">Ult. Actual:</asp:Label>
                            <div class="col-xs-4">
                                <input id="txtUltActual" type="date" runat="server" class="form-control" />
                            </div>

                        </div>
                        <div class="col-xs-4">
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse1">Dados Complementares OBRIGAÇÕES / V.M.CONVERTÍVEIS<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="lbDtEmissao" runat="server" class="col-xs-4 control-label">Data Emissão:</asp:Label>
                                    <div class="col-xs-6">
                                        <input id="txtDtEmissao" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbDtUltMort" runat="server" class="col-xs-4 control-label">Dt. Ult. Mort.:</asp:Label>
                                    <div class="col-xs-6">
                                        <input id="txtDtUltMort" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbDtAmortFinal" runat="server" class="col-xs-4 control-label">Dt. Amort. Final:</asp:Label>
                                    <div class="col-xs-6">
                                        <input id="txtDtAmortFinal" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbTipoAmortiz" runat="server" class="col-xs-4 control-label">Tipo Amortiz.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlTipoAmortiz" CssClass="form-control" runat="server">
                                            <asp:ListItem>T</asp:ListItem>
                                            <asp:ListItem>R</asp:ListItem>
                                            <asp:ListItem>O</asp:ListItem>
                                            <asp:ListItem>S</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="lbTipoJuro" runat="server" class="col-xs-4 control-label">Tipo de Juro:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="DDLTipoJuro" CssClass="form-control" runat="server">
                                            <asp:ListItem>Fixo</asp:ListItem>
                                            <asp:ListItem>Var</asp:ListItem>
                                            <asp:ListItem>Outro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbJuro" runat="server" class="col-xs-4 control-label">% Juro:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtJuro" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbDtPriAmort" runat="server" class="col-xs-4 control-label">Dt Pri Amort:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDtPriAmort" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="row form-group">
                                <div class="col-xs-3">
                                    <asp:Label ID="lbPricing" runat="server" class="col-xs-4 control-label">Pricing:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="DDLPricing" CssClass="form-control" runat="server">
                                            <asp:ListItem>Clean</asp:ListItem>
                                            <asp:ListItem>Dirty</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbIndex" runat="server" class="col-xs-4 control-label">Index:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtIndex" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbNuxsiasIndex" runat="server" class="col-xs-6 control-label">Num Dias Index:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtNuxsiasIndex" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Label ID="lbSpread" runat="server" class="col-xs-4 control-label">Spread:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtSpread" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbContaDias" runat="server" class="col-xs-4 control-label">Conta. Dias:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtContaDias" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtContaDiasDesc" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCDiasLivre" runat="server" class="col-xs-4 control-label">CDias Livre:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCDiasLivre" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlCDias" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="D">Dias</asp:ListItem>
                                            <asp:ListItem Value="M">M&#234;s</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>

                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbJuroAno" runat="server" class="col-xs-4 control-label">Nº Juro/Ano:</asp:Label>
                                    <div class="col-xs-5">
                                        <asp:DropDownList ID="ddlJuroAno" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbJuroAnter" runat="server" class="col-xs-4 control-label">%Juro Anter:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtJuroAnter" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtPrimJuro" runat="server" class="col-xs-4 control-label">Dt Prim Juro:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="DtPrimJuro" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtProxJuro" runat="server" class="col-xs-4 control-label">Dt. Prox. Juro:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtProxJuro" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtUtlJuro" runat="server" class="col-xs-4 control-label">Dt. Utl. Juros:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtUtlJuro" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbJuroCorrid" runat="server" class="col-xs-4 control-label">Juros Corrid:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlJuroCorrid" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem Value="N">Não</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbJuroDiario" runat="server" class="col-xs-4 control-label">Juro Diário:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtJuroDiario" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrecoEmissao" runat="server" class="col-xs-4 control-label">Preço Emissão:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtPrecoEmissao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbQtdEmitida" runat="server" class="col-xs-4 control-label">Qtd. Emitida:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtQtdEmitida" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbLoteMinimo" runat="server" class="col-xs-4 control-label">Lote Minimo:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtLoteMinimo" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbBancoLider" runat="server" class="col-xs-4 control-label">Banco Lider:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtBancoLider" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRatingFitch" runat="server" class="col-xs-4 control-label">Rating Fitch:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtRatingFitch" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRatingMoody" runat="server" class="col-xs-4 control-label">Rating Moody:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtRatingMoody" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRatingSP" runat="server" class="col-xs-4 control-label">Rating S&P:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtRatingSP" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSenioridade" runat="server" class="col-xs-4 control-label">Senioridade:</asp:Label>
                                    <div class="col-xs-4 input-group">
                                        <asp:DropDownList ID="ddlSenioridade" CssClass="form-control" runat="server">
                                            <asp:ListItem>S</asp:ListItem>
                                            <asp:ListItem>J</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbAlavancagem" runat="server" class="col-xs-4 control-label">Alavancagem:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlAlavancagem" CssClass="form-control" runat="server">
                                            <asp:ListItem>S</asp:ListItem>
                                            <asp:ListItem>N</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoMercado" runat="server" class="col-xs-4 control-label">Tipo de Mercado:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:DropDownList ID="ddlTipoMercado" CssClass="form-control" runat="server">
                                            <asp:ListItem>MER</asp:ListItem>
                                            <asp:ListItem>MNR</asp:ListItem>
                                            <asp:ListItem>NAN</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSubjacente" runat="server" class="col-xs-4 control-label">Subjacente:</asp:Label>
                                    <div class="col-xs-6 input-group">
                                        <asp:DropDownList ID="ddlSubjacente" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem>N&#227;o</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbMercadoAdmissaoNeg" runat="server" class="col-xs-6 control-label">Mercado de Admissão:</asp:Label>
                                    <div class="col-xs-4 input-group">
                                        <asp:DropDownList ID="ddlMercadoAdmissaoNeg" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="MER">MER</asp:ListItem>
                                            <asp:ListItem Value="MNR">MNR</asp:ListItem>
                                            <asp:ListItem Value="NAN">NAN</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <asp:Label ID="CondReembolso" runat="server" class="col-xs-2 control-label">Condições de Reembolso:</asp:Label>
                                <div class="col-xs-2">
                                    <asp:Label ID="lbMAT" runat="server" class="col-xs-2 control-label">MAT</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtMAT" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-2">
                                    <asp:Label ID="lbCAL" runat="server" class="col-xs-2 control-label">CAL</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCAL" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-2">
                                    <asp:Label ID="lbPUT" runat="server" class="col-xs-2 control-label">PUT</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtPUT" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-2">
                                    <asp:Label ID="lbRAA" runat="server" class="col-xs-2 control-label">RAA</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtRAA" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-2">
                                    <asp:Label ID="lbOUT" runat="server" class="col-xs-2 control-label">OUT</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtOUT" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse2">Dados Complementares WARRANTS DESTACADOS / V.M.CONVERTÍVEIS<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtADMNegoc" runat="server" class="col-xs-4 control-label">Dt. ADM Negoc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtADMNegoc" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtUltNegocObg" runat="server" class="col-xs-4 control-label">Dt. Ult. Negoc:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="ddlDtUltNegocObg" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNExercAno" runat="server" class="col-xs-4 control-label">Nº Exerc/Ano:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlNExercAno" CssClass="form-control" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtPrimExer" runat="server" class="col-xs-4 control-label">Dt. Prim. Exer.:</asp:Label>
                                    <div class="col-xs-4 input-group date" id="datetimepicker12">
                                        <asp:TextBox ID="txtDtPrimExer" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtProExer" runat="server" class="col-xs-4 control-label">Dt. Pro. Exer.:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtProExer" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtUltExer" runat="server" class="col-xs-4 control-label">Dt. Ult. Exer.:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtUltExer" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNumExercic" runat="server" class="col-xs-4 control-label">Num. Exercic.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtNumExercic" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbFactorConv" runat="server" class="col-xs-4 control-label">Factor Conv.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtFactorConv" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbActivoSubja" runat="server" class="col-xs-4 control-label">Activo Subja.:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtActivoSubja1" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtActivoSubja2" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrecoExerc" runat="server" class="col-xs-4 control-label">Preço Exerci.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtPrecoExerc" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoArredon" runat="server" class="col-xs-4 control-label">Tipo Arredon.:</asp:Label>
                                    <div class="col-xs-6 input-group">
                                        <asp:DropDownList ID="ddlTipoArredon" CssClass="form-control" runat="server">
                                            <asp:ListItem>Excesso</asp:ListItem>
                                            <asp:ListItem>Defeito</asp:ListItem>
                                        </asp:DropDownList>
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
                        <a data-toggle="collapse" href="#collapse3">Dados Complementares WARRANTS AUTÓNOMOS / WARRANTS ESTRUTURADOS<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoWarrant" runat="server" class="col-xs-4 control-label">Tipo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlTipoWarrant" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem Value="N">Não</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbEstiloWarrant" runat="server" class="col-xs-4 control-label">Estilo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlEstiloWarrant" CssClass="form-control" runat="server">
                                            <asp:ListItem>Europeu</asp:ListItem>
                                            <asp:ListItem>Americano</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoExerc" runat="server" class="col-xs-4 control-label">Tipo Exercicio:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                                            <asp:ListItem>Automático</asp:ListItem>
                                            <asp:ListItem>Não Automático</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtAdmNegocAuto" runat="server" class="col-xs-4 control-label">Dt. Adm. Negoc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtAdmNegocAuto" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtUltNegocAuto" runat="server" class="col-xs-4 control-label">Dt. Ultima Negoc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtUltNegocAuto" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtVenc" runat="server" class="col-xs-4 control-label">Dt de Vencimento:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtVenc" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="LbParidadeWar" runat="server" class="col-xs-4 control-label">Paridade War:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtParidadeWar" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbLoteMinExe" runat="server" class="col-xs-4 control-label">Lote Min. Exe.:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtLoteMinExe" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndActivoSubj" runat="server" class="col-xs-4 control-label">Ind. Activo Subj.:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtIndActivoSubj" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtIndActivoSubjDesc" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbMoedaActSubj" runat="server" class="col-xs-4 control-label">Moeda Activo Subjacente:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtMoedaActSubj" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoLiquida" runat="server" class="col-xs-4 control-label">Tipo Liquida:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="FIS">Fisica</asp:ListItem>
                                            <asp:ListItem Value="FIN">Financeira</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrecoExerci" runat="server" class="col-xs-4 control-label">Preço Exerci.:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtPrecoExerci" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNomeEmitente" runat="server" class="col-xs-4 control-label">Nome do Emitente:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtNomeEmitente" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-xs-4">
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
                        <a data-toggle="collapse" href="#collapse4">Dados Complementares DERIVADOS/FUTUROS<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="LBParidadeQTD" runat="server" class="col-xs-4 control-label">Paridade/QTD.:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtParidadeQTD" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbActivoSubj" runat="server" class="col-xs-4 control-label">Activo Subjacente:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtActivoSubj" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNomeActivoSubj" runat="server" class="col-xs-4 control-label">Nome Activo Subjacente:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtNomeActivoSubj" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <asp:Label ID="lbTextLivre" runat="server" class="col-xs-4 control-label">Texto Livre:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtTextLivre" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse5">Dados Técnicos espécie<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrincing" runat="server" class="col-xs-4 control-label">Princing:</asp:Label>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbProvider" runat="server" class="col-xs-4 control-label">Provider:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtProvider" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSource" runat="server" class="col-xs-4 control-label">Source:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtSource" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse6">Dados Complementares ELEGIBILIDADE<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrioridade1" runat="server" class="col-xs-6 control-label">1. Prioridade Elegilidade:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlPrioridade1" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrioridade2" runat="server" class="col-xs-6 control-label">2. Prioridade Elegilidade:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlPrioridade2" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrioridade3" runat="server" class="col-xs-6 control-label">3. Prioridade Elegilidade:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlPrioridade3" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrioridade4" runat="server" class="col-xs-6 control-label">4. Prioridade Elegilidade:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlPrioridade4" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrioridade5" runat="server" class="col-xs-6 control-label">5. Prioridade Elegilidade:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlPrioridade5" CssClass="form-control" runat="server"></asp:DropDownList>
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
                        <a data-toggle="collapse" href="#collapse7">Dados Complementares Impostos FTT<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCobrarImposto" runat="server" class="col-xs-6 control-label">Cobrar Imposto:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlCobrarImposto" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRefFIT" runat="server" class="col-xs-4 control-label">Referência FIT:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtRefFIT" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse8">Dados Complementares CMAR<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse8" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRestrationCode" runat="server" class="col-xs-6 control-label">Restration Code:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="RestrationCode" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbRestrationCodeDate" runat="server" class="col-xs-4 control-label">Restration Code Date:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtRestrationCodeDate" type="date" runat="server" class="form-control" />
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
                        <a data-toggle="collapse" href="#collapse9">Atributos de Investimento<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse9" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSubFamilia" runat="server" class="col-xs-4 control-label">SubFamilia:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtSubFamiliaDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbLiquidez" runat="server" class="col-xs-4 control-label">Liquidez:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtLiquidez" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbComplexidade" runat="server" class="col-xs-4 control-label">Complexidade:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtComplexidade" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbHorizonteTemporal" runat="server" class="col-xs-4 control-label">Horizonte Temporal:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtHorizonteTemporal" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbZonaGeografica" runat="server" class="col-xs-4 control-label">Zona Geográfica:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtZonaGeografica" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbOnOffRegular" runat="server" class="col-xs-4 control-label">OnOff/Regular:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtOnOffRegular" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIpad" runat="server" class="col-xs-4 control-label">iPAD:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtIpad" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNivelRisco" runat="server" class="col-xs-4 control-label">Nivel Risco:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtNivelRisco" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbVaR" runat="server" class="col-xs-4 control-label">VaR:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtVaR" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbData" runat="server" class="col-xs-4 control-label">Data:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtData" type="date" runat="server" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDescricao" runat="server" class="col-xs-4 control-label">Descrição:</asp:Label>
                                    <div class="col-xs-8">
                                        <textarea id="txtDescricao" style="resize: none" class="form-control " cols="20" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCatClass" runat="server" class="col-xs-4 control-label">Cat./Class.activ.:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCatClass" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="TXTCatClassDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSolicitarClassRisco" runat="server" class="col-xs-8 control-label">Solicitar classificação de Risco:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlSolicitarClassRisco" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem Value="N">Não</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-xs-4">
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDataActivacao" runat="server" class="col-xs-4 control-label">Data de Activação:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDataActivacao" type="date" runat="server" class="form-control" />
                                    </div>
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

    </div>

    <script type="text/javascript">

        $(document).ready(function () {
            $(".collapse").on('show.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus");
            }).on('hide.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus");
            });
        });

        $(function () {
            var acc = document.getElementsByClassName("titleAccordion");
            var i;

            for (i = 0; i < acc.length; i++) {
                acc[i].onclick = function () {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.maxHeight) {
                        panel.style.maxHeight = null;
                    } else {
                        panel.style.maxHeight = panel.scrollHeight + "px";
                    }
                }
            }
        });

    </script>
</asp:Content>
