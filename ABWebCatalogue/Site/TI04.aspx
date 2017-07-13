<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI04.aspx.cs" Inherits="ABCatalogue.Site.TI04" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap-datepicker.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="title">TI04C</div>
        <div class="panel-content panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDebito" runat="server" class="col-xs-6 control-label">Identificação Programa:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtIdProg" runat="server" CssClass="form-control" MaxLength="15"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbNCliente" runat="server" class="col-xs-4 control-label">Nº Cliente:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtNCliente" runat="server" CssClass="form-control" MaxLength="7"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbNEmissao" runat="server" class="col-xs-4 control-label">Nº Emissão:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtNEmissao" runat="server" CssClass="form-control" MaxLength="7"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbValNominalEmissao" runat="server" class="col-xs-6 control-label ">Valor nominal emissão:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtValNominalEmissao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbBancoAgente" runat="server" class="col-xs-4 control-label">Banco agente:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtBancoAgente" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtBancoAgente2" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbEspecie" runat="server" class="col-xs-4 control-label">Espécie:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtEspecie" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox>
                            </div>
                            <div class="col-xs-5">
                                <asp:TextBox ID="txtEspecie2" runat="server" CssClass="form-control" MaxLength="27"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbReactivar" runat="server" class="col-xs-4 control-label">Reactivar:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlReactivar" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbISIN" runat="server" class="col-xs-4 control-label">ISIN:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtISIN" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCodSGC" runat="server" class="col-xs-4 control-label">Código SGC:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCodSGC" runat="server" CssClass="form-control" MaxLength="12"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbBolsaSGC" runat="server" class="col-xs-4 control-label">Bolsa SGC:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtBolsaSGC" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbCustodiante" runat="server" class="col-xs-4 control-label">Custodiante:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtCustodiante" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                            </div>
                            <div class="col-xs-5">
                                <asp:TextBox ID="txtCustodiante2" runat="server" CssClass="form-control" MaxLength="13"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCotacao" runat="server" class="col-xs-4 control-label">Cotação:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCotacao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbMoedaCL" runat="server" class="col-xs-4 control-label">Moeda COT/LIQ:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtMoedaCL" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDefault" runat="server" class="col-xs-4 control-label">Default:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlDefault" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbVLNOMUnit" runat="server" class="col-xs-4 control-label">VL.NOM.Unitário:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtVLNOMUnit" runat="server" size="1" CssClass="form-control " MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbMoedaNominal" runat="server" class="col-xs-4 control-label">Moeda Nominal:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtMoedaNominal" runat="server" size="1" CssClass="form-control" MaxLength="3"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbCVM" runat="server" class="col-xs-4 control-label">CVM:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCVM" runat="server" size="1" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbLocalGuard" runat="server" class="col-xs-4 control-label">Local Guard:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtLocalGuard" runat="server" size="1" CssClass="form-control" MaxLength="3"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbSistNegocia" runat="server" class="col-xs-4 control-label">Sist. Negocia. :</asp:Label>
                            <div class="col-xs-2">
                                <asp:DropDownList ID="ddlSistNegocia" CssClass="form-control" runat="server">
                                    <asp:ListItem>N</asp:ListItem>
                                    <asp:ListItem>P</asp:ListItem>
                                    <asp:ListItem>O</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-6">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbBloomberg" runat="server" class="col-xs-4 control-label">Bloomberg:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtBloomberg" runat="server" size="1" CssClass="form-control " MaxLength="12"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbEscalao" runat="server" class="col-xs-4 control-label">Escalão:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtEscalao" runat="server" size="1" CssClass="form-control " MaxLength="1"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbReuters" runat="server" class="col-xs-4 control-label">Reuters:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtReuters" runat="server" size="1" CssClass="form-control " MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCustodia" runat="server" class="col-xs-4 control-label">D. Custódia:</asp:Label>
                            <div class="col-xs-2">
                                <asp:DropDownList ID="ddlCustodia" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbContribuinte" runat="server" class="col-xs-4 control-label">Contribuinte:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtContribuinte" runat="server" CssClass="form-control " MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbPaisEmit" runat="server" class="col-xs-4 control-label">Pais Emit:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtPaisEmit" runat="server" CssClass="form-control " MaxLength="3"></asp:TextBox>
                            </div>
                            <div class="col-xs-5">
                                <asp:TextBox ID="txtPaisEmit2" runat="server" CssClass="form-control " MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbLoteMinimo" runat="server" class="col-xs-4 control-label">Lote minimo:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtLoteMinimo" runat="server" size="1" CssClass="form-control " MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbAgencias" runat="server" class="col-xs-4 control-label">Agencias:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlAgencias" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbPaixsercad" runat="server" class="col-xs-4 control-label">Pais Mercad:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtPaisMercad" runat="server" CssClass="form-control " MaxLength="3"></asp:TextBox>
                            </div>
                            <div class="col-xs-5">
                                <asp:TextBox ID="txtPaisMercad2" runat="server" CssClass="form-control " MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbNET" runat="server" class="col-xs-4 control-label">NET:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlNET" CssClass="form-control" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCredito" runat="server" class="col-xs-4 control-label">% Crédito:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCredito" runat="server" CssClass="form-control " MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbSegCarteira" runat="server" class="col-xs-4 control-label">Seg.Carteir:</asp:Label>
                            <div class="col-xs-3">
                                <asp:TextBox ID="txtSegCarteira" runat="server" CssClass="form-control " MaxLength="3"></asp:TextBox>
                            </div>
                            <div class="col-xs-5">
                                <asp:TextBox ID="txtSegCarteira2" runat="server" CssClass="form-control " MaxLength="40"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbEstado" runat="server" class="col-xs-4 control-label">Estado:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control " MaxLength="8"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
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
                            <asp:Label ID="lbUltActu" runat="server" class="col-xs-4 control-label">Ult.Actu:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtUltActu" runat="server" CssClass="form-control small-input " MaxLength="8"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtlUltActu2" runat="server" CssClass="form-control small-input " MaxLength="5"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbBolsas" runat="server" class="col-xs-4 control-label">Bolsas:</asp:Label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtBolsas1" runat="server" CssClass="form-control " MaxLength="2"></asp:TextBox>
                                <%--<asp:TextBox ID="txtBolsas2" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas3" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtBolsas4" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas5" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas6" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtBolsas7" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas8" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas9" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtBolsas10" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas11" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas12" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtBolsas13" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas14" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtBolsas15" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>--%>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbTipoJuro" runat="server" class="col-xs-4 control-label">Tipo de Juro:</asp:Label>
                            <div class="col-xs-2">
                                <asp:DropDownList ID="ddlTipoJuro" CssClass="form-control" runat="server">
                                    <asp:ListItem>F</asp:ListItem>
                                    <asp:ListItem>I</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbModalidade" runat="server" class="col-xs-4 control-label">Modalidade:</asp:Label>
                            <div class="col-xs-3">
                                <asp:DropDownList ID="ddlModalidade" CssClass="form-control" runat="server">
                                    <asp:ListItem>CAP</asp:ListItem>
                                    <asp:ListItem>DESC</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbTaxaMediaEmissao" runat="server" class="col-xs-4 control-label">Taxa Média Emissão:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtTaxaMediaEmissao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbQTDEmissao" runat="server" class="col-xs-4 control-label">QTD. Emissão:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtQTDEmissao" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbIsensao" runat="server" class="col-xs-4 control-label">% Isensão:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtIsensao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbTaxaEmissao" runat="server" class="col-xs-4 control-label">Taxa de Emissão:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtTaxaEmissao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbIRSIRC" runat="server" class="col-xs-4 control-label">% IRS/IRC:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtIRSIRC" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbPrazoEmissao" runat="server" class="col-xs-4 control-label">Prazo de Emissão:</asp:Label>
                            <div class="col-xs-6 input-group">
                                <asp:TextBox ID="txtPrazoEmissao" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                <asp:Label ID="lbPrazoEmissaoVal" runat="server" class="input-group-addon">Dias</asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbJuroDiario" runat="server" class="col-xs-4 control-label">% Juro Diário:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtJuroDiario" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbBaseCalculo" runat="server" class="col-xs-4 control-label">Base Cálculo:</asp:Label>
                            <div class="col-xs-6 input-group">
                                <asp:TextBox ID="txtBaseCalculo" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                <asp:Label ID="lbBaseCalculoVal" runat="server" class="input-group-addon">Dias</asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbCalculoJuro" runat="server" class="col-xs-4 control-label">Cálculo de Juros:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlCalculoJuro" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="D">Dias de calendário</asp:ListItem>
                                    <asp:ListItem Value="T">Mês</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-4">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbJuroAnterior" runat="server" class="col-xs-4 control-label">% Juro Anterior:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtJuroAnterior" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbMensualizacao" runat="server" class="col-xs-4 control-label">Mensualização:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlMensualizacao" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbTipoAmortizacao" runat="server" class="col-xs-4 control-label">Tipo Amortização:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlTipoAmortizacao" CssClass="form-control" runat="server">
                                    <asp:ListItem>T</asp:ListItem>
                                    <asp:ListItem>O</asp:ListItem>
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>R</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDtEmissao" runat="server" class="col-xs-4 control-label">Data Emissão:</asp:Label>
                            <div class="col-xs-4 input-group date" id="datetimepicker1">
                                <asp:TextBox ID="TXTDtEmissao" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                            <div class="col-xs-6">
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbISINCONBP" runat="server" class="col-xs-4 control-label">ISIN CON. BP:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtISINCONBP" runat="server" CssClass="form-control" MaxLength="12"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDtAmortizacao" runat="server" class="col-xs-4 control-label">Data Amortização:</asp:Label>
                            <div class="col-xs-4 input-group date" id="datetimepicker2">
                                <asp:TextBox ID="txtDtAmortizacao" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbCODADICBP" runat="server" class="col-xs-4 control-label">COD. ADIC. BP:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCODADICBP" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbDtCupao" runat="server" class="col-xs-4 control-label">Data 1º Cupão:</asp:Label>
                            <div class="col-xs-4 input-group date" id="datetimepicker3">
                                <asp:TextBox ID="txtDtCupao" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbDtBP" runat="server" class="col-xs-4 control-label">Data BP:</asp:Label>
                            <div class="col-xs-4 input-group date" id="datetimepicker4">
                                <asp:TextBox ID="txtDtBP" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbCupaoCorrido" runat="server" class="col-xs-4 control-label">Cupão Corrido:</asp:Label>
                            <div class="col-xs-4">
                                <asp:DropDownList ID="ddlCupaoCorrido" CssClass="form-control" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbVenc1" runat="server" class="col-xs-4 control-label">Venc-1 DD/MM:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtVenc1" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbVenc2" runat="server" class="col-xs-4 control-label">Venc-2 DD/MM:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtVenc2" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-4">
                            <asp:Label ID="lbVenc3" runat="server" class="col-xs-4 control-label">Venc-3 DD/MM:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtVenc3" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="lbVenc4" runat="server" class="col-xs-4 control-label">Venc-4 DD/MM:</asp:Label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtVenc4" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse1">Warrants<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoWarrant" runat="server" class="col-xs-4 control-label">Tipo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlTipoWarrant" CssClass="form-control" runat="server">
                                            <asp:ListItem>CALL</asp:ListItem>
                                            <asp:ListItem>PUT</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbEstiloWarrant" runat="server" class="col-xs-4 control-label">Estilo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlEstiloWarrant" CssClass="form-control" runat="server">
                                            <asp:ListItem>EUROPEU</asp:ListItem>
                                            <asp:ListItem>AMERICANO</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoExercicio" runat="server" class="col-xs-4 control-label">Tipo Exercicio:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlTipoExercicio" CssClass="form-control" runat="server">
                                            <asp:ListItem>AUTOMÁTICO</asp:ListItem>
                                            <asp:ListItem>NÃO AUTOMÁTICO</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtAdmissNeg" runat="server" class="col-xs-4 control-label">Dt Admiss. Negoc.</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtAdmissNeg" type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtUltNegoc" runat="server" class="col-xs-4 control-label">Dt Última. Negoc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtUltNegoc" type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtVenc" runat="server" class="col-xs-4 control-label">DT de Vencimento:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDtVenc" type="date" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbParidadeWarrant" runat="server" class="col-xs-4 control-label">Paridade Warrant:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtParidadeWarrant" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbLoteMinPExerc" runat="server" class="col-xs-4 control-label">Lote Min. P/Exerc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtLoteMinPExerc" runat="server" CssClass="form-control" MaxLength="5"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndActivo" runat="server" class="col-xs-4 control-label">Ind. Activo Subj.:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:DropDownList ID="ddlIndActivo" CssClass="form-control" runat="server">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem>I</asp:ListItem>
                                            <asp:ListItem>T</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtIndActivoDesc" runat="server" CssClass="form-control" MaxLength="25"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbMoedaActivo" runat="server" class="col-xs-4 control-label">Moeda Activo Subjacente:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtMoedaActivo" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoLiquidacao" runat="server" class="col-xs-4 control-label">Tipo Liquidação:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlTipoLiquidacao" CssClass="form-control" runat="server">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Value="FIS">FISICA</asp:ListItem>
                                            <asp:ListItem Value="FIN">FINANCEIRA</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrecoExercicio" runat="server" class="col-xs-4 control-label">Preço Exercício:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtPrecoExercicio" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbNomeEmitente" runat="server" class="col-xs-4 control-label">Nome Emitente:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNomeEmitente" runat="server" CssClass="form-control" MaxLength="25"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNominativo" runat="server" class="col-xs-4 control-label">Nominativo:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlNominativo" CssClass="form-control" runat="server">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem Value="N">Não</asp:ListItem>
                                        </asp:DropDownList>
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
                        <a data-toggle="collapse" href="#collapse2">Panel 1<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNovoValorUnit" runat="server" class="col-xs-4 control-label">Novo Valor Unit.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNovoValorUnit" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbNatJuridica" runat="server" class="col-xs-4 control-label">Natureza Juridica:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNatJuridica" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndicePrincipal" runat="server" class="col-xs-4 control-label">Indice Principal:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtIndicePrincipal" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndiceSecundario" runat="server" class="col-xs-4 control-label">Indice Secundário:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtIndiceSecundario" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse3">Panel 2<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRetEstranq" runat="server" class="col-xs-4 control-label">% Ret. Estranq.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtRetEstranq" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label5" runat="server" class="col-xs-4 control-label">Estilo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtEstiloWarrant" runat="server" CssClass="form-control" size="1"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse4">Panel 3<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbExchangeTraded" runat="server" class="col-xs-4 control-label">Exchange Traded Funds:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlExchangeTraded" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem Value="N">Não</asp:ListItem>
                                        </asp:DropDownList>
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
                        <a data-toggle="collapse" href="#collapse5">Papel Comercial<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndexPrazoInf" runat="server" class="col-xs-4 control-label">Index Prazo Inf.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtIndexPrazoInf" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndexPrazoSup" runat="server" class="col-xs-4 control-label">Index Prazo Sup.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDiasIndexInf" runat="server" class="col-xs-4 control-label">Nº Dias Index Inf.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDiasIndexInf" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDiasIndexSup" runat="server" class="col-xs-4 control-label">Nº Dias Index Sup.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDiasIndexSup" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndexante" runat="server" class="col-xs-4 control-label">Indexante:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtIndexante" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSpread" runat="server" class="col-xs-4 control-label">Spread:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtSpread" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbArredondamento" runat="server" class="col-xs-4 control-label">Arredondamento:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtArredondamento" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTaxaRef" runat="server" class="col-xs-4 control-label">Taxa Referência:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTaxaRef" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtCambio" runat="server" class="col-xs-4 control-label">Data de Câmbio:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDtCambio" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse6">Taxa Múltipla<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTaxaMin" runat="server" class="col-xs-4 control-label">Taxa Minima:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTaxaMin" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTaxaMax" runat="server" class="col-xs-4 control-label">Taxa Máxima:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTaxaMax" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse7">Atributos de Investimento<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSubFamilia" runat="server" class="col-xs-4 control-label">SubFamilia:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbLiquidez" runat="server" class="col-xs-4 control-label">Liquidez:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtLiquidez" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbComplexidade" runat="server" class="col-xs-4 control-label">Complexidade:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtComplexidade" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbHorizontalTemporal" runat="server" class="col-xs-4 control-label">Horizontal Temporal:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtHorizontalTemporal" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtHorizontalTemporalDesc" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbZonaGeo" runat="server" class="col-xs-4 control-label">Zona Geográfica:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtZonaGeo" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtZonaGeoDesc" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbOnOffReg" runat="server" class="col-xs-4 control-label">OnOff/Regular:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlOnOffReg" CssClass="form-control" runat="server">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>O</asp:ListItem>
                                            <asp:ListItem>R</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIPad" runat="server" class="col-xs-4 control-label">iPAD:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="ddlIPad" CssClass="form-control" runat="server">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>S</asp:ListItem>
                                            <asp:ListItem>N</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNivelRisco" runat="server" class="col-xs-4 control-label">Nivel Risco:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtNivelRisco" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbVar" runat="server" class="col-xs-4 control-label">VaR:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtVar" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbData" runat="server" class="col-xs-4 control-label">Data:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtData" runat="server" type="date" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCatClassActiv" runat="server" class="col-xs-4 control-label">Cat./Class.Activ.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCatClassActiv" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSoliClassifica" runat="server" class="col-xs-4 control-label">Solicitar Classificação de Risco (S/N):</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtSoliClassifica" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDataActiv" runat="server" class="col-xs-4 control-label">Data de Activação:</asp:Label>
                                    <div class="col-xs-4">
                                        <input id="txtDataActiv" type="date" class="form-control" />
                                    </div>
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
