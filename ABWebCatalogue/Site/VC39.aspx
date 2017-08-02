<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VC39.aspx.cs" Inherits="ABWebCatalogue.Site.VC39" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"></asp:Label>
        </div>
        <div class="container-fluid form-horizontal">
            <div class="row colorbck">
                <div class="col-lg-12">
                    <br />
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label id="lblCPRODUTO" runat="server" class="col-lg-2 text-right lbl">Produto</asp:Label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtCPRODUTO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label id="lblCSUBPROD" runat="server" class="col-lg-2 text-right lbl">Sub Produto</asp:Label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtCSUBPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div id="pnlVC" runat="server" class="hidden">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblGSUBPROD" runat="server" class="col-lg-2 text-right lbl">Nome</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtGSUBPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
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
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Parametros Gerais">Parametros Gerais</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCTIPOSG" runat="server" class="col-lg-2 text-right lbl">Tipo Produto</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCTIPOSG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCTIPOSG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCMOEDA" runat="server" class="col-lg-2 text-right lbl">Moeda</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCMOEDA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCMOEDA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCBALCAO1" runat="server" class="col-lg-2 text-right lbl">Conta Produto</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCBALCAO1" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtNUCTA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCAPOANO" runat="server" class="col-lg-2 text-right lbl">CAPOANO</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCAPOANO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblZAPOLICE" runat="server" class="col-lg-2 text-right lbl">ZAPOLICE</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtZAPOLICE" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCCERTIF" runat="server" class="col-lg-2 text-right lbl">CCERTIF</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCERTIF" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCCERANO" runat="server" class="col-lg-2 text-right lbl">CCERANO</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCERANO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCBALSACO" runat="server" class="col-lg-2 text-right lbl">Conta IT'S</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCBALSACO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCTASACO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCBANNIB" runat="server" class="col-lg-2 text-right lbl">NIB da Conta GV</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCBANNIB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCBALNIB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCNUMNIB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCDIGNIB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                        ´<br />
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQBASCALC" runat="server" class="col-lg-2 text-right lbl">Base Cálculo</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQBASCALC" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCSEQUEN" runat="server" class="col-lg-2 text-right lbl">Base Cálculo</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCSEQUEN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQDECIUPS" runat="server" class="col-lg-2 text-right lbl">Decimais UP'S</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQDECIUPS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQALTMOD" runat="server" class="col-lg-2 text-right lbl">Número de Alterações</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQALTMOD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQPROPVAL" runat="server" class="col-lg-2 text-right lbl">Validade Propostas (Dias):</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQPROPVAL" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCTIPODIAS" runat="server" class="col-lg-2 text-right lbl">Dias úteis:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbCTIPODIAS" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Durações">Durações</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQANOMIN" runat="server" class="col-lg-2 text-right lbl">Minimo (Anos|Dias):</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQANOMIN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbQMINDIA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQANOMAX" runat="server" class="col-lg-2 text-right lbl">Maximo (Anos|Dias):</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQANOMAX" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbQMAXDIA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblDVENCIM" runat="server" CssClass="col-lg-2 text-right lbl">Data De Vencimento:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtDVENCIM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Taxas e Encargos">Taxas e Encargos</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblTBONEMP" runat="server" class="col-lg-2 text-right lbl">Tx.Bonific. (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTBONEMP" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblTCOMISS" runat="server" class="col-lg-2 text-right lbl">Tx.Comissão (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTCOMISS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblTPARRESG" runat="server" class="col-lg-2 text-right lbl">Tx.Par.Resg. (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTPARRESG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblTGARANT" runat="server" class="col-lg-2 text-right lbl">Tx.Garant. (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTGARANT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblTPENTRFO" runat="server" class="col-lg-2 text-right lbl">Tx.Pen.Trfo (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTPENTRFO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblMRESGMIN" runat="server" class="col-lg-2 text-right lbl">Vl.Resg.Min. (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMRESGMIN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Atributos de Investimento">Atributos de Investimento</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCSUBFAM" class="col-lg-2 text-right lbl">SubFamilia:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCSUBFAM" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCLIQUIDPROD" class="col-lg-2 text-right lbl">Liquidez:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCCOMPLEXINV" class="col-lg-2 text-right lbl">Complexidade:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCCOMPLEXINV" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCHORIZON" class="col-lg-2 text-right lbl">Horizonte Temporal:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCHORIZON" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCZONGEOG" class="col-lg-2 text-right lbl">Zona Geográfica:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCZONGEOG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCONOFFREGU" class="col-lg-2 text-right lbl">OnOff/Regular:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lbCIPAD" class="col-lg-2 text-right lbl">iPAD:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbCIPAD" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCNIVELRISCO" class="col-lg-2 text-right lbl">Nivel Risco:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lbMVAR" class="col-lg-2 text-right lbl">VaR:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtMVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblDVAR" class="col-lg-2 text-right lbl">Data:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtDVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblGOBSRV" class="col-lg-2 text-right lbl">Descrição:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtGOBSRV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCCLAACTI" class="col-lg-2 text-right lbl">Cat./Class.activ.:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCCLAACTI" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCCLASSRISC" class="col-lg-2 text-right lbl">Solicitar classificação de Risco:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbCCLASSRISC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblDTACTIVA" class="col-lg-2 text-right lbl">Data de Activação:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Incentivos">Incentivos</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblPCOMDIS" runat="server" class="col-lg-4 text-right lbl">Comissão de Distribuição:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtPCOMDIS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Tomador e Pessoas Seguras">Tomador e Pessoas Seguras</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQIDADMIN" runat="server" class="col-lg-3 text-right lbl">Idade Minima (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADMIN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQIDADMAX" runat="server" class="col-lg-3 text-right lbl">Idade Máxima (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADMAX" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQIDADDEF" runat="server" class="col-lg-3 text-right lbl">Idade Default (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADDEF" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblQIDADSUB" runat="server" class="col-lg-3 text-right lbl">Idade Max. Subs. (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADSUB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblNPESSSEG" runat="server" class="col-lg-3 text-right lbl">Nº Pessoas Seguras (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtNPESSSEG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Resseguro">Resseguro</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCTRATADO" runat="server" class="col-lg-2 text-right lbl">Cód. Tratado (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCTRATADO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Custos">Custos</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblMCACTA" runat="server" class="col-lg-2 text-right lbl">Acta (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMCACTA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblMCAPOL" runat="server" class="col-lg-2 text-right lbl">Apólice (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMCAPOL" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Coperacs">Coperacs</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-2"></div>
                            <asp:Label class="col-lg-1 text-center lbl">PREM</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">RESG.T</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">RESG.P</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">RED.T</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">RED.P</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">SIN</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">TRANSFO</asp:Label>
                            <asp:Label class="col-lg-1 text-center lbl">TRANSFE</asp:Label>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label id="Label1" runat="server" class="col-lg-2 text-right lbl">CLI:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCPREMCLI" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCRESGTCL" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCRESGPCL" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCREDTCL" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCREDPCL" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCSINCLI" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCTRFODEB" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCTRFECLI" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label id="Label2" runat="server" class="col-lg-2 text-right lbl">SOC:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCPREMSOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCRESTSOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCRESPSOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCREDTSOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCREDPSOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCSINSOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCTRFOCRE" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCTRFESOC" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row form-group padding-row">
                            <asp:Label id="lblTPARESG1" runat="server" class="col-lg-2 text-right lbl">Tx.Penalização (%):</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtTPARESG1" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtTPARESG2" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtTPARESG3" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtTPARESG4" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtTPARESG5" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtTPARESG6" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label id="lblQANORES1" runat="server" class="col-lg-2 text-right lbl">Até (Ano):</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQANORES1" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQANORES2" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQANORES3" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQANORES4" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQANORES5" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQANORES6" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label id="lblDPRESG1" runat="server" class="col-lg-2 text-right lbl">Data:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtDPRESG1" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtDPRESG2" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtDPRESG3" runat="server" class="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Contabilidade">Contabilidade</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCOPERSG" runat="server" class="col-lg-2 text-right lbl">COPERSG.:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCOPERSG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblICOBPPP" runat="server" CssClass="col-lg-2 text-right lbl">Prod.c/ PPP:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbICOBPPP" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCOPERSGPPP" runat="server" CssClass="col-lg-2 text-right lbl">COPERSG PPP:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCOPERSGPPP" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Fundo Associado">Fundo Associado</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblSUBPFUND" runat="server" CssClass="col-lg-2 text-right lbl">SubProduto:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtSubpfund" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBALFUND" runat="server" CssClass="col-lg-2 text-right lbl">Conta:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCBALFUND" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                                  <div class="col-lg-2">
                                    <asp:TextBox ID="txtCTAFUNDO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Encargos de Alterção Modalidade">Encargos de Alterção Modalidade</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">ENC1 (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod1" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">MONT1 (€):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod1" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">ENC4 (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod4" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">MONT4 (€):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod4" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">ENC2 (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod2" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">MONT2 (€):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod2" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">ENC5 (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod5" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">MONT5 (€):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod5" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">ENC3 (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod3" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">MONT3 (€):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod3" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">ENC6 (%):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod6" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <asp:Label runat="server" CssClass="col-lg-3 text-right lbl">MONT6 (€):</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod6" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="PRORROGAMENTO">PRORROGAMENTO</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6">
                                <asp:Label ID="lblQPRORROG" runat="server" CssClass="col-lg-2 text-right lbl">Anos:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQPRORROG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="VALIDAÇÕES">VALIDAÇÕES (vida risco)</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label  runat="server" CssClass="col-lg-2 text-right lbl">Validade de Duração de Contrato:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbIvaldur" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIBASECAL" runat="server" CssClass="col-lg-2 text-right lbl">Base de Cálculo:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbIBASECAL" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="REVALIDAÇÃO de CAPITAL">REVALIDAÇÃO de CAPITAL</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblITIPOREV" runat="server" class="col-lg-2 text-right lbl">TIPO DE REVALORIZAÇÃO DE CAPITAL</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbITIPOREV" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblCTABREV" runat="server" class="col-lg-2 text-right lbl">COD. TABELA DE REVALORIZAÇÃO :</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCTABREV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="INDICADORES">INDICADORES</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label id="lblIMETRESG" runat="server" class="col-lg-2 text-right lbl">METDO DE RESGATE:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbIMETRESG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label id="lblICAPTLZ" runat="server" class="col-lg-2 text-right lbl">CAPITALIZACAO :</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbICAPTLZ" runat="server" class="form-control t-field-t"></select>
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
