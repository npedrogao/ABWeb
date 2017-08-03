<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI96.aspx.cs" Inherits="ABWebCatalogue.Site.TI96" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"></asp:Label>
        </div>
        <div class="container-fluid form-horizontal">
            <div class="row colorbck">
                <div class="col-lg-12 col-xs-12">
                    <br />
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 col-xs-6 ">
                            <asp:Label ID="lbDebito" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Identificação Programa:</asp:Label>
                            <div class="col-lg-2 col-xs-4 ">
                                <asp:TextBox ID="txtCprogramapc" runat="server" CssClass="form-control t-field-t" MaxLength="15"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-xs-6 ">
                            <asp:Label ID="lbNCliente" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nº Cliente:</asp:Label>
                            <div class="col-lg-2 col-xs-4 ">
                                <asp:TextBox ID="txtZcliente" runat="server" CssClass="form-control t-field-t" MaxLength="7"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 col-xs-6 ">
                            <asp:Label ID="lbNEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nº Emissão:</asp:Label>
                            <div class="col-lg-2 col-xs-4 ">
                                <asp:TextBox ID="txtZemissao" runat="server" CssClass="form-control t-field-t" MaxLength="7"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-xs-6 ">
                            <asp:Label ID="lbValNominalEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Valor nominal emissão:</asp:Label>
                            <div class="col-lg-2 col-xs-4 ">
                                <asp:TextBox ID="txtMnomine" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 col-xs-6 ">
                            <asp:Label ID="lbBancoAgente" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Banco agente:</asp:Label>
                            <div class="col-lg-2 col-xs-4 ">
                                <asp:TextBox ID="txtCodban" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 col-xs-4 ">
                                <asp:TextBox ID="txtDcodban" runat="server" CssClass="t-field-2" MaxLength="20"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-xs-6 ">
                            <asp:Label ID="lbEspecie" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Espécie:</asp:Label>
                            <div class="col-lg-2 col-xs-4 ">
                                <asp:TextBox ID="txtCodvalor" runat="server" CssClass="t-field-2" MaxLength="13"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 col-xs-4 ">
                                <asp:TextBox ID="txtNombrev" runat="server" CssClass="t-field-2" MaxLength="27"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div id="pnlTI" runat="server" class="hidden">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbReactivar" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Reactivar:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbReactivar" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID-="lbISIN" runat="server" class="col-lg-4 col-xs-4 text-right lbl">ISIN:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtISIN" runat="server" CssClass="t-field-2" MaxLength="13"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCodSGC" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Código SGC:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCodSGC" runat="server" CssClass="t-field-2" MaxLength="12"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbBolsaSGC" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Bolsa SGC:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtBolsaSGC" runat="server" CssClass="form-control t-field-t" MaxLength="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCustodiante" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Custodiante:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCodisin" runat="server" CssClass="form-control t-field-t" MaxLength="3"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtDcustod" runat="server" CssClass="t-field-2" MaxLength="13"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCotacao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Cotação:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCamed" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbMoedaCL" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Moeda COT/LIQ:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtMoedaval" runat="server" CssClass="form-control t-field-t" MaxLength="3"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDefault" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Default:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbItitdef" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbVLNOMUnit" runat="server" class="col-lg-4 col-xs-4 text-right lbl">VL.NOM.Unitário:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtNomin" runat="server" size="1" CssClass="form-control t-field-t " MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbMoedaNominal" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Moeda Nominal:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCoddivi" runat="server" size="1" CssClass="form-control t-field-t" MaxLength="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCVM" runat="server" class="col-lg-4 col-xs-4 text-right lbl">CVM:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtNemonica" runat="server" size="1" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbLocalGuard" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Local Guard:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtLguarda" runat="server" size="1" CssClass="form-control t-field-t" MaxLength="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbSistNegocia" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Sist. Negocia. :</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbTiptitul" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbBloomberg" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Bloomberg:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCbloombg" runat="server" size="1" CssClass="form-control t-field-t " MaxLength="12"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbEscalao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Escalão:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCtipesc" runat="server" size="1" CssClass="form-control t-field-t " MaxLength="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbReuters" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Reuters:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCreuters" runat="server" size="1" CssClass="form-control t-field-t " MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCustodia" runat="server" class="col-lg-4 col-xs-4 text-right lbl">D. Custódia:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbDercus" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbContribuinte" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Contribuinte:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtNif" runat="server" CssClass="form-control t-field-t " MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbPaisEmit" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Pais Emit:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCpaisemi" runat="server" CssClass="form-control t-field-t " MaxLength="3"></asp:TextBox>
                                </div>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtDpaisemi" runat="server" CssClass="t-field-2 " MaxLength="11"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbLoteMinimo" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Lote minimo:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtLotemin" runat="server" size="1" CssClass="form-control t-field-t " MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbAgencias" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Agencias:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbItitbal" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbPaixsercad" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Pais Mercad:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCodpais" runat="server" CssClass="form-control t-field-t " MaxLength="3"></asp:TextBox>
                                </div>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtDpais" runat="server" CssClass="form-control t-field-t " MaxLength="11"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNET" runat="server" class="col-lg-4 col-xs-4 text-right lbl">NET:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbIbantele" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCredito" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% Crédito:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtTcredito" runat="server" CssClass="form-control t-field-t " MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbSegCarteira" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Seg.Carteir:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtSegcart" runat="server" CssClass="form-control t-field-t " MaxLength="3"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtDsegcart" runat="server" CssClass="form-control t-field-t" MaxLength="40"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbEstado" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Estado:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtSituaca" runat="server" CssClass="form-control t-field-t " MaxLength="8"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNegociavel" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Negociável:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbNegociav" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbUltActu" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Ult.Actu:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtFechactu" runat="server" CssClass="form-control t-field-t small-input " MaxLength="8"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control t-field-t small-input " MaxLength="5"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <%--                    <div class="row form-group padding-row">
                        <div class="col-lg-6 col-xs-6 ">
    <asp:Label ID="lbBolsas" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Bolsas:</asp:Label>

            <asp:TextBox ID="txtCbolsa01" runat="server" CssClass="form-control t-field-t " MaxLength="2"></asp:TextBox>
            <asp:TextBox ID="txtCbolsa02" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa03" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa04" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa05" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa06" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa07" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa08" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa09" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa010" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa011" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa012" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa013" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa014" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa015" runat="server" CssClass="form-control t-field-t small-input " MaxLength="2"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 col-xs-6 ">
                        </div>
                    </div>--%>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTipoJuro" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Tipo de Juro:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbTipint" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbModalidade" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Modalidade:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbItipemiss" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTaxaMediaEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Taxa Média Emissão:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtInteres" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbQTDEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">QTD. Emissão:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtDesde" runat="server" CssClass="form-control t-field-t" MaxLength="11"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIsensao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% Isensão:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtExenc" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTaxaEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Taxa de Emissão:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtTxprog" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIRSIRC" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% IRS/IRC:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtReten" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbPrazoEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Prazo de Emissão (Dias):</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtPrzdprog" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lb1" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% Juro Diário:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtJurodliq" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbBaseCalculo" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Base Cálculo (Dias):</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtBasecalc" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCalculoJuro" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Cálculo de Juros ((D) Dias de calendário/(T) Mês):</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <select id="cmbIcalcjur" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbJuroAnterior" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% Juro Anterior:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtTjuro7" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbMensualizacao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Mensualização:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <select id="cmbImensual" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTipoAmortizacao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Tipo Amortização:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <select id="cmbTipamor" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtEmissao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data Emissão:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtEmis" runat="server" CssClass="form-control t-field-t" MaxLength="10"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbISINCONBP" runat="server" class="col-lg-4 col-xs-4 text-right lbl">ISIN CON. BP:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtIsinbp" runat="server" CssClass="form-control t-field-t" MaxLength="12"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtAmortizacao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data Amortização:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtFproxa" runat="server" MaxLength="10" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCODADICBP" runat="server" class="col-lg-4 col-xs-4 text-right lbl">COD. ADIC. BP:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtCidabp" runat="server" CssClass="form-control t-field-t" MaxLength="10"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtCupao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data 1º Cupão:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtFprimc" runat="server" MaxLength="10" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtBP" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data BP:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtFbancopt" runat="server" MaxLength="10" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCupaoCorrido" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Cupão Corrido:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <select id="cmbCupcorrc" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbVenc1" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Venc-1 DD/MM:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtVenc1" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbVenc2" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Venc-2 DD/MM:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtVenc2" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbVenc3" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Venc-3 DD/MM:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtVenc3" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbVenc4" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Venc-4 DD/MM:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtVenc4" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div id="pnlBtnSearch" class="divCollapseLeft" runat="server">
                    <a id="btnClearKeys" class="btns btns-alt" runat="server">Limpar</a>
                    <button id="searchKeys" class="btns" runat="server">Search</button>
                </div>
                <div id="pnlBtn" class="divCollapseLeft hidden" runat="server">
                    <a id="btnCloseAll" class="btns" runat="server">Fechar</a>
                    <a id="btnOpenAll" class="btns" runat="server">Abrir</a>
                </div>
                <br />
                <br />
            </div>
            <div id="pnlSearchContent" runat="server" class="hidden">
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Warrants">Warrants</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTipoWarrant" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Tipo Warrant:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <select id="cmbItipowar" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbEstiloWarrant" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Estilo Warrant:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <select id="cmbIestwar" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTipoExercicio" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Tipo Exercicio:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <select id="cmbItipexer" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtAdmissNeg" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Dt Admiss. Negoc.</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtFeadmiss" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtUltNegoc" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Dt Última. Negoc.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtFeultneg" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtVenc" runat="server" class="col-lg-4 col-xs-4 text-right lbl">DT de Vencimento:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtFevencim" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbParidadeWarrant" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Paridade Warrant:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtParidade" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbLoteMinPExerc" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Lote Min. P/Exerc.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtQlotemin" runat="server" CssClass="form-control t-field-t" MaxLength="5"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIndActivo" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Ind. Activo Subj.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <select id="cmbIactsubj" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbMoedaActivo" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Moeda Activo Subjacente:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtCmoesubj" runat="server" CssClass="form-control t-field-t" MaxLength="3"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTipoLiquidacao" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Tipo Liquidação:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <select id="cmbCtipoliq" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbPrecoExercicio" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Preço Exercício:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtStrike" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNomeEmitente" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nome Emitente:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtNemiten" runat="server" CssClass="form-control t-field-t" MaxLength="25"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNominativo" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nominativo:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <select id="cmbInominat" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Panel1">Panel1</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNovoValorUnit" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Novo Valor Unit.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtNovoValorUnit" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNatJuridica" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Natureza Juridica:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtNatJuridica" runat="server" CssClass="form-control t-field-t" MaxLength="6"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIndicePrincipal" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Indice Principal:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtIndicePrincipal" runat="server" CssClass="form-control t-field-t" MaxLength="2"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIndiceSecundario" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Indice Secundário:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtIndiceSecundario" runat="server" CssClass="form-control t-field-t" MaxLength="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Panel2">Panel2</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbRetEstranq" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% Ret. Estranq.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtRetEstranq" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="Label5" runat="server" class="col-lg-4 col-xs-4 text-right lbl">% Agrav. IRS:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtEstiloWarrant" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Panel3">Panel3</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbExchangeTraded" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Exchange Traded Funds:</asp:Label>
                                <div class="col-lg-4 col-xs-6 ">
                                    <select id="ddlExchangeTraded" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Papel Comercial">Papel Comercial</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIndexPrazoInf" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Index Prazo Inf.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTprzinf" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIndexPrazoSup" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Index Prazo Sup.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTprzsup" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDiasIndexInf" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nº Dias Index Inf.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtQprzinf" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDiasIndexSup" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nº Dias Index Sup.:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtQprzsup" runat="server" CssClass="form-control t-field-t" MaxLength="4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIndexante" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Indexante:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTindexante" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbSpread" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Spread:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTspreadpc" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbArredondamento" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Arredondamento:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTarredond" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTaxaRef" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Taxa Referência:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTcambio" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDtCambio" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data de Câmbio:</asp:Label>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtDcambio" runat="server" CssClass="form-control t-field-t" MaxLength="10"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Taxa Múltipla">Taxa Múltipla</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTaxaMin" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Taxa Minima:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTxmin" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbTaxaMax" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Taxa Máxima:</asp:Label>
                                <div class="col-lg-4 col-xs-4">
                                    <asp:TextBox ID="txtTxmax" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 col-xs-12 titleAccordion">
                    <a class="accordion" title="Atributos de Investimento">Atributos de Investimento</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12 col-xs-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbSubFamilia" runat="server" class="col-lg-4 col-xs-4 text-right lbl">SubFamilia:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCsubfam" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtDsubfam" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbLiquidez" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Liquidez:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCliquidprod" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbComplexidade" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Complexidade:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCcomplexinv" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtDcomplexinv" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbHorizontalTemporal" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Horizontal Temporal:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtChorizon" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtDhorizon" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbZonaGeo" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Zona Geográfica:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCzongeog" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-xs-4 ">
                                    <asp:TextBox ID="txtDzongeog" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbOnOffReg" runat="server" class="col-lg-4 col-xs-4 text-right lbl">OnOff/Regular:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbConoffregu" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbIPad" runat="server" class="col-lg-4 col-xs-4 text-right lbl">iPAD:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <select id="cmbCipad" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbNivelRisco" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Nivel Risco:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCnivelrisco" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbVar" runat="server" class="col-lg-4 col-xs-4 text-right lbl">VaR:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtMvar" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbData" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtDvar" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="txtDesc" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Descrição:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtGobsrv" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbCatClassActiv" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Cat./Class.Activ.:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCclaacti" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbSoliClassifica" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Solicitar Classificação de Risco (S/N):</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtCclassrisc" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-6 ">
                                <asp:Label ID="lbDataActiv" runat="server" class="col-lg-4 col-xs-4 text-right lbl">Data de Activação:</asp:Label>
                                <div class="col-lg-2 col-xs-4 ">
                                    <asp:TextBox ID="txtDtactiva" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="hr" />
                <br />
                <div class="divCollapseLeft">
                    <button id="btnClear" class="btns" runat="server" onserverclick="btnClear_Click">Limpar</button>
                    <button id="btnSave" class="btns" runat="server" onserverclick="btnSave_Click">Guardar</button>
                </div>
            </div>
    </div>
    </div>
</asp:Content>
