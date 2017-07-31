<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VC39.aspx.cs" Inherits="ABWebCatalogue.Site.VC39" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
    <script src="../js/util.js"></script>
    <script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="../js/bootstrap.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"></asp:Label>
        </div>
        <div class="container-fluid form-horizontal">
            <div class="row">
                <div class="col-lg-12">
                    <br />
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblCPRODUTO" runat="server" class="col-lg-2 text-right lbl">Produto</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtCPRODUTO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCSUBPROD" runat="server" class="col-lg-2 text-right lbl">Sub Produto</label>
                            <div class="col-lg-4">
                                <asp:TextBox ID="txtCSUBPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div id="pnlVC" runat="server" class="hidden">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="GSUBPROD" runat="server" class="col-lg-2 text-right lbl">Nome</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCTIPOSG" runat="server" class="col-lg-2 text-right lbl">Tipo Produto</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCTIPOSG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCTIPOSG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCMOEDA" runat="server" class="col-lg-2 text-right lbl">Moeda</label>
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
                                <label id="lblCBALCAO1" runat="server" class="col-lg-2 text-right lbl">Conta Produto</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCBALCAO1" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtNUCTA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCAPOANO" runat="server" class="col-lg-2 text-right lbl">CAPOANO</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCAPOANO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblZAPOLICE" runat="server" class="col-lg-2 text-right lbl">ZAPOLICE</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtZAPOLICE" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCCERTIF" runat="server" class="col-lg-2 text-right lbl">CCERTIF</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCERTIF" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCCERANO" runat="server" class="col-lg-2 text-right lbl">CCERANO</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCERANO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCBALSACO" runat="server" class="col-lg-2 text-right lbl">Conta IT'S</label>
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
                                <label id="lblCBANNIB" runat="server" class="col-lg-2 text-right lbl">NIB da Conta GV</label>
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
                                <label id="lblQBASCALC" runat="server" class="col-lg-2 text-right lbl">Base Cálculo</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQBASCALC" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCSEQUEN" runat="server" class="col-lg-2 text-right lbl">Base Cálculo</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCSEQUEN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQDECIUPS" runat="server" class="col-lg-2 text-right lbl">Decimais UP'S</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQDECIUPS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblQALTMOD" runat="server" class="col-lg-2 text-right lbl">Número de Alterações</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQALTMOD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQPROPVAL" runat="server" class="col-lg-2 text-right lbl">Validade Propostas (Dias):</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQPROPVAL" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCTIPODIAS" runat="server" class="col-lg-2 text-right lbl">Dias úteis:</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQANOMIN" runat="server" class="col-lg-2 text-right lbl">Minimo (Anos|Dias):</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQANOMIN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQMINDIA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblQANOMAX" runat="server" class="col-lg-2 text-right lbl">Maximo (Anos|Dias):</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQANOMAX" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtQMAXDIA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">Data De Vencimento:</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblTBONEMP" runat="server" class="col-lg-2 text-right lbl">Tx.Bonific. (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTBONEMP" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblTCOMISS" runat="server" class="col-lg-2 text-right lbl">Tx.Comissão (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTCOMISS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblTPARRESG" runat="server" class="col-lg-2 text-right lbl">Tx.Par.Resg. (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTPARRESG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblTGARANT" runat="server" class="col-lg-2 text-right lbl">Tx.Garant. (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTGARANT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblTPENTRFO" runat="server" class="col-lg-2 text-right lbl">Tx.Pen.Trfo (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTPENTRFO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblMRESGMIN" runat="server" class="col-lg-2 text-right lbl">Vl.Resg.Min. (%):</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCSUBFAM" class="col-lg-2 text-right lbl">SubFamilia:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCSUBFAM" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCLIQUIDPROD" class="col-lg-2 text-right lbl">Liquidez:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCCOMPLEXINV" class="col-lg-2 text-right lbl">Complexidade:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCCOMPLEXINV" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCHORIZON" class="col-lg-2 text-right lbl">Horizonte Temporal:</label>
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
                                <label id="lblCZONGEOG" class="col-lg-2 text-right lbl">Zona Geográfica:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCZONGEOG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCONOFFREGU" class="col-lg-2 text-right lbl">OnOff/Regular:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lbCIPAD" class="col-lg-2 text-right lbl">iPAD:</label>
                                <div class="col-lg-4">
                                    <select id="cmbCIPAD" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCNIVELRISCO" class="col-lg-2 text-right lbl">Nivel Risco:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lbMVAR" class="col-lg-2 text-right lbl">VaR:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtMVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblDVAR" class="col-lg-2 text-right lbl">Data:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtDVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblGOBSRV" class="col-lg-2 text-right lbl">Descrição:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtGOBSRV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCCLAACTI" class="col-lg-2 text-right lbl">Cat./Class.activ.:</label>
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
                                <label id="lblCCLASSRISC" class="col-lg-2 text-right lbl">Solicitar classificação de Risco:</label>
                                <div class="col-lg-4">
                                    <select id="cmbCCLASSRISC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblDTACTIVA" class="col-lg-2 text-right lbl">Data de Activação:</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblPCOMDIS" runat="server" class="col-lg-4 text-right lbl">Comissão de Distribuição:</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQIDADMIN" runat="server" class="col-lg-3 text-right lbl">Idade Minima (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADMIN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblQIDADMAX" runat="server" class="col-lg-3 text-right lbl">Idade Máxima (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADMAX" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQIDADDEF" runat="server" class="col-lg-3 text-right lbl">Idade Default (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADDEF" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblQIDADSUB" runat="server" class="col-lg-3 text-right lbl">Idade Max. Subs. (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQIDADSUB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblNPESSSEG" runat="server" class="col-lg-3 text-right lbl">Nº Pessoas Seguras (%):</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCTRATADO" runat="server" class="col-lg-2 text-right lbl">Cód. Tratado (%):</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblMACTA" runat="server" class="col-lg-2 text-right lbl">Acta (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMACTA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblMCAPOL" runat="server" class="col-lg-2 text-right lbl">Apólice (%):</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-2"></div>
                            <label class="col-lg-1 text-center lbl">PREM</label>
                            <label class="col-lg-1 text-center lbl">RESG.T</label>
                            <label class="col-lg-1 text-center lbl">RESG.P</label>
                            <label class="col-lg-1 text-center lbl">RED.T</label>
                            <label class="col-lg-1 text-center lbl">RED.P</label>
                            <label class="col-lg-1 text-center lbl">SIN</label>
                            <label class="col-lg-1 text-center lbl">TRANSFO</label>
                            <label class="col-lg-1 text-center lbl">TRANSFE</label>
                        </div>
                        <div class="row form-group padding-row">
                            <label id="Label1" runat="server" class="col-lg-2 text-right lbl">CLI:</label>
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
                            <label id="Label2" runat="server" class="col-lg-2 text-right lbl">SOC:</label>
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
                            <label id="lblTPARESG1" runat="server" class="col-lg-2 text-right lbl">Tx.Penalização (%):</label>
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
                            <label id="lblQANORES1" runat="server" class="col-lg-2 text-right lbl">Até (Ano):</label>
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
                            <label id="lblDPRESG1" runat="server" class="col-lg-2 text-right lbl">Data:</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">COPERSG.:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCopersg" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">Prod.c/ PPP:</label>
                                <div class="col-lg-4">
                                    <select id="cmbCopersgppp" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">COPERSG PPP:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtIcobppp" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">SubProduto:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtSubpfund" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">Conta:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCbalfund" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Encargos de Alterção Modalidade">Encargos de Alterção Modalidade</a>
                </div>
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">ENC1 (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod1" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">MONT1 (€):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod1" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">ENC4 (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod4" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">MONT4 (€):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod4" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">ENC2 (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod2" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">MONT2 (€):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod2" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">ENC5 (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod5" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">MONT5 (€):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod5" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">ENC3 (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod3" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">MONT3 (€):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMencmod3" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">ENC6 (%):</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTencmod6" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-3 text-right lbl">MONT6 (€):</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6">
                                <label class="col-lg-2 text-right lbl">Anos:</label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQprorrog" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">Validade de Duração de Contrato:</label>
                                <div class="col-lg-4">
                                    <select id="cmbIvaldur" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label class="col-lg-2 text-right lbl">Base de Cálculo:</label>
                                <div class="col-lg-4">
                                    <select id="cmbIbasecal" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="REVALIDAÇÃO de CAPITAL">REVALIDAÇÃO de CAPITAL</a>
                </div>
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblITIPOREV" runat="server" class="col-lg-2 text-right lbl">TIPO DE REVALORIZAÇÃO DE CAPITAL</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtITIPOREV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCTABREV" runat="server" class="col-lg-2 text-right lbl">COD. TABELA DE REVALORIZAÇÃO :</label>
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
                <div class="row hidden closeAccordion">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblIMETRESG" runat="server" class="col-lg-2 text-right lbl">METDO DE RESGATE:</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtIMETRESG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblICAPTLZ" runat="server" class="col-lg-2 text-right lbl">CAPITALIZACAO :</label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtICAPTLZ" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
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
    <script type="text/javascript">
        $(document).ready(function () {

            JsServerSide();

            AccordionController();
        });

    </script>

</asp:Content>
