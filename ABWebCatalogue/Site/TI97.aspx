<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI97.aspx.cs" Inherits="ABWebCatalogue.Site.TI97" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
    <script src="../js/util.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"> </asp:Label>
        </div>
        <div class="container-fluid form-horizontal">
            <br />
            <div class="row">
                <div class="col-lg-12">
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCODVALOR" runat="server" class="col-lg-2 text-right lbl">Espécie:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtCODVALOR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                <select id="cmbNOMBREV" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblSEGCART" runat="server" class="col-lg-2 text-right lbl">Seg. Carteira:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtSEGCART" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                <select id="cmbDSEGCART" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div id="pnlTI" runat="server" class="hidden">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblSITUACA" runat="server" class="col-lg-2 text-right lbl"></asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtSITUACA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbSITUACA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCTIPESC" runat="server" class="col-lg-2 text-right lbl">Escalão Prec.:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCTIPESC" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCODISIN" runat="server" class="col-lg-2 text-right lbl">ISIN:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCODISIN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblNEMONICA" runat="server" class="col-lg-2 text-right lbl">CVM:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtNEMONICA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCCIF_2" runat="server" class="col-lg-2 text-right lbl">Class.I.Fin.:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCCIF_2" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCCIF_6" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBLOOMBG" runat="server" class="col-lg-2 text-right lbl">Bloomberg:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCBLOOMBG" runat="server" size="1" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCREUTERS" runat="server" class="col-lg-2 text-right lbl">Reuters:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCREUTERS" runat="server" size="1" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCPFCCMVM" runat="server" class="col-lg-2 text-right lbl">CMVM PFC:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCPFCCMVM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITITDEF" runat="server" class="col-lg-2 text-right lbl">Default:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbITITDEF" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCODDIVI" runat="server" class="col-lg-2 text-right lbl">Moed+Nomimal:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCODDIVI" runat="server" size="1" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtNOMINN" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblNOMIN" runat="server" class="col-lg-2 text-right lbl">Nominal Ant.:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtNOMIN" runat="server" size="1" CssClass="form-control t-field-t medium-input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblAMORPARC" runat="server" class="col-lg-2 text-right lbl">Amort. Parcial sem Afeta Nom/Quant.:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtAMORPARC" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblNIF" runat="server" class="col-lg-2 text-right lbl">Contribuinte:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtNIF" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblISINBP" runat="server" class="col-lg-2 text-right lbl">ISIN CON. BP:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtISINBP" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblZCLIENTE" runat="server" class="col-lg-2 text-right lbl">CTA Emissão:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtZCLIENTE" runat="server" size="1" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtZSEQ" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCNATJUR" runat="server" class="col-lg-2 text-right lbl">Natureza Juridica:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCNATJUR" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCIDABP" runat="server" class="col-lg-2 text-right lbl">COD. ADIC. BP:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCIDABP" runat="server" CssClass="form-control t-field-t" size="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCCUSTOD" runat="server" class="col-lg-2 text-right lbl">Custodiante:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCCUSTOD" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtDCUSTOD" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCPAISEMI" runat="server" class="col-lg-2 text-right lbl">Pais Emitente:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCPAISEMI" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbCPAISEMI" runat="server" class="form-control t-field-t "></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblLGUARDA" runat="server" class="col-lg-2 text-right lbl">Local Guarda:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtLGUARDA" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtDLGUARDA" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblRETEN" runat="server" class="col-lg-2 text-right lbl">% IRS/IRC:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtRETEN" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPEXENCN" runat="server" class="col-lg-2 text-right lbl">% Isenção IRS:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPEXENCN" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPAGRAVA" runat="server" class="col-lg-2 text-right lbl">% Agrava. IRS:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPAGRAVA" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTISENIE" runat="server" class="col-lg-2 text-right lbl">% I. Estrang.:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTISENIE" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTIRETEST" runat="server" class="col-lg-2 text-right lbl">% Isenção IE:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtTIRETEST" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTAGRAIE" runat="server" class="col-lg-2 text-right lbl">% Agrava. IE:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTAGRAIE" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblICOTADO" runat="server" class="col-lg-2 text-right lbl">Tem Cotação:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbICOTADO" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblMOEDAVAL" runat="server" class="col-lg-2 text-right lbl">Moeda Liq.+Cotação:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtMOEDAVAL" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMCAMED" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblFECHACTU" runat="server" class="col-lg-2 text-right lbl">Data Cot.:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtFECHACTU" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIPERCOTA" runat="server" class="col-lg-2 text-right lbl">Periodicidade Cotação:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtIPERCOTA" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbDPERCOTA" runat="server" class="form-control t-field-t "></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIORIGEMPREC" runat="server" class="col-lg-2 text-right lbl">Origem Preço:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtIORIGEMPREC" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbIORIGEMPREC" runat="server" class="form-control t-field-t "></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblNEGOCIAV" runat="server" class="col-lg-2 text-right lbl">Negociável:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbNEGOCIAV" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBOLSA01" runat="server" class="col-lg-2 text-right lbl">Bolsas:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA01" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA02" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA03" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA04" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA05" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA06" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA07" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA08" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA09" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA10" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA11" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA12" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA13" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA14" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOLSA15" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-6">
                                </div>
                            </div>
                        </div>


                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCODPAIS" runat="server" class="col-lg-2 text-right lbl">Pais Mercad:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCODPAIS" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbCODPAIS" runat="server" class="form-control t-field-t "></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTIPTITUL" runat="server" class="col-lg-2 text-right lbl">Sist. Negocia.:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbTIPTITUL" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITSIZE" runat="server" class="col-lg-2 text-right lbl">Tick Size:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITSIZE" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCINDPRI" runat="server" class="col-lg-2 text-right lbl">Indice Princ:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCINDPRI" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtDINDPRI" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCINDSEC" runat="server" class="col-lg-2 text-right lbl">Indice Secun.:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCINDSEC" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtDINDSEC" runat="server" class="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPISENCAO" runat="server" class="col-lg-2 text-right lbl">% Isenção Tx.Bol:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtPISENCAO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbPISENCAO" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIBANTELE" runat="server" class="col-lg-2 text-right lbl">Net:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbIBANTELE" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITITBAL" runat="server" class="col-lg-2 text-right lbl">Agências:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbITITBAL" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTCREDITO" runat="server" class="col-lg-2 text-right lbl">Elegivel:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTCREDITO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblFEALTCLI" runat="server" class="col-lg-2 text-right lbl">Data Criação:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtFEALTCLI" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblFEULTMOD" runat="server" class="col-lg-2 text-right lbl">Ult. Actual:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtFEULTMOD" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtUSUARIO" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <br />
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
                <a class="accordion" title="Dados Complementares">Dados Complementares: OBRIGAÇÕES/V.M. CONVERTÍVEIS</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="col-lg-12">
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblEMIS" runat="server" class="col-lg-2 text-right lbl">Data Emissão:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtEMIS" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblFPROXA" runat="server" class="col-lg-2 text-right lbl">Dt. Ult. Mort.:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtFPROXA" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDULTAMOR" runat="server" class="col-lg-2 text-right lbl">Dt. Amort. Final:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDULTAMOR" runat="server" CssClass="form-control t-field-t "></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblTIPAMOR" runat="server" class="col-lg-2 text-right lbl">Tipo Amortiz.:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbTIPAMOR" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblTIPINT" runat="server" class="col-lg-2 text-right lbl">Tipo de Juro:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbTIPINT" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblINTERES" runat="server" class="col-lg-2 text-right lbl">% Juro:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtINTERES" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblFPRIMA" runat="server" class="col-lg-2 text-right lbl">Dt Pri Amort:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtFPRIMA" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblTPRICE" runat="server" class="col-lg-2 text-right lbl">Pricing:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbTPRICE" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblINDEXANTE" runat="server" class="col-lg-2 text-right lbl">Index:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtINDEXANTE" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblNDIASINDX" runat="server" class="col-lg-2 text-right lbl">Num Dias Index:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtNDIASINDX" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblTSPREAD" runat="server" class="col-lg-2 text-right lbl">Spread:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtTSPREAD" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCDAYCNT" runat="server" class="col-lg-2 text-right lbl">Conta. Dias:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCDAYCNT" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDDAYCNT" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblQDIASMESCJ" runat="server" class="col-lg-2 text-right lbl">CDias Livre:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQDIASMESCJ" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCBASECJ" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblZJURANO" runat="server" class="col-lg-2 text-right lbl">Nº Juro/Ano:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbZJURANO" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblTJURO7" runat="server" class="col-lg-2 text-right lbl">%Juro Anter:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtTJURO7" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblFPRIMC" runat="server" class="col-lg-2 text-right lbl">Dt Prim Juro:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtFPRIMC" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDTJUROSP" runat="server" class="col-lg-2 text-right lbl">Dt. Prox. Juro:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDTJUROSP" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDTJUROSA" runat="server" class="col-lg-2 text-right lbl">Dt. Utl. Juros:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDTJUROSA" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCUPCORRC" runat="server" class="col-lg-2 text-right lbl">Juros Corrid:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbCUPCORRC" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblJURODLIQ" runat="server" class="col-lg-2 text-right lbl">Juro Diário:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtJURODLIQ" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblPRECOEMI" runat="server" class="col-lg-2 text-right lbl">Preço Emissão:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtPRECOEMI" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDESDE" runat="server" class="col-lg-2 text-right lbl">Qtd. Emitida:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDESDE" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblLOTEMIN" runat="server" class="col-lg-2 text-right lbl">Lote Minimo:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtLOTEMIN" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCODBAN" runat="server" class="col-lg-2 text-right lbl">Banco Lider:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCODBAN" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCRATFITCH" runat="server" class="col-lg-2 text-right lbl">Rating Fitch:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtCRATFITCH" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCRATMOODY" runat="server" class="col-lg-2 text-right lbl">Rating Moody:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtCRATMOODY" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCRATSP" runat="server" class="col-lg-2 text-right lbl">Rating S&P:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtCRATSP" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCSENIOR" runat="server" class="col-lg-2 text-right lbl">Senioridade:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbCSENIOR" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblIALAVANC" runat="server" class="col-lg-2 text-right lbl">Alavancagem:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbIALAVANC" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCTIPMERC" runat="server" class="col-lg-2 text-right lbl">Tipo de Mercado:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbCTIPMERC" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblISUBJACENT" runat="server" class="col-lg-2 text-right lbl">Subjacente:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbISUBJACENT" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCMIC" runat="server" class="col-lg-2 text-right lbl">Mercado de Admissão:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCMIC" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <asp:Label ID="CondReembolso" runat="server" class="text-center lbl"><b>Condições de Reembolso:</b></asp:Label>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblICONDMAT" runat="server" class="col-lg-2 text-right lbl">MAT</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICONDMAT" runat="server" class="form-control t-field-t" maxlength="9"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblICONDCAL" runat="server" class="col-lg-2 text-right lbl">CAL</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICONDCAL" runat="server" class="form-control t-field-t" maxlength="9"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblICONDPUT" runat="server" class="col-lg-2 text-right lbl">PUT</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICONDPUT" runat="server" class="form-control t-field-t" maxlength="9"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblICONDRAA" runat="server" class="col-lg-2 text-right lbl">RAA</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICONDRAA" runat="server" class="form-control t-field-t" maxlength="9"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblICONDOUT" runat="server" class="col-lg-2 text-right lbl">OUT</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICONDOUT" runat="server" class="form-control t-field-t" maxlength="9"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblINDPFC" runat="server" class="col-lg-2 text-right lbl"></asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtINDPFC" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Dados Complementares WARRANTS DESTACADOS / V.M.CONVERTÍVEIS</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDFEADMISS" runat="server" class="col-lg-2 text-right lbl">Dt. ADM Negoc.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDFEADMISS" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDFEULTNEG" runat="server" class="col-lg-2 text-right lbl">Dt. Ult. Negoc:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDFEULTNEG" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDZEXERCANO" runat="server" class="col-lg-2 text-right lbl">Nº Exerc/Ano:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbWDZEXERCANO" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDFEVENCIM" runat="server" class="col-lg-2 text-right lbl">Dt. Prim. Exer.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDFEVENCIM" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDEXERCP" runat="server" class="col-lg-2 text-right lbl">Dt. Pro. Exer.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDEXERCP" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDEXERCA" runat="server" class="col-lg-2 text-right lbl">Dt. Ult. Exer.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDEXERCA" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDZEXERC" runat="server" class="col-lg-2 text-right lbl">Num. Exercic.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDZEXERC" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDPERCENT" runat="server" class="col-lg-2 text-right lbl">Factor Conv.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDPERCENT" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDNOVCODVA" runat="server" class="col-lg-2 text-right lbl">Activo Subja.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDNOVCODVA" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtWDNOMBREV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDSTRIKE" runat="server" class="col-lg-2 text-right lbl">Preço Exerci.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtWDSTRIKE" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblWDARREDOD" runat="server" class="col-lg-2 text-right lbl">Tipo Arredon.:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbWDARREDOD" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Dados Complementares WARRANTS AUTÓNOMOS / WARRANTS ESTRUTURADOS</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblITIPOWAR" runat="server" class="col-lg-2 text-right lbl">Tipo Warrant:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbITIPOWAR" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIESTWAR" runat="server" class="col-lg-2 text-right lbl">Estilo Warrant:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbIESTWAR" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblITIPEXER" runat="server" class="col-lg-2 text-right lbl">Tipo Exercicio:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbITIPEXER" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblFEADMISS" runat="server" class="col-lg-2 text-right lbl">Dt. Adm. Negoc.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtFEADMISS" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblFEULTNEG" runat="server" class="col-lg-2 text-right lbl">Dt. Ultima Negoc.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtFEULTNEG" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblFEVENCIM" runat="server" class="col-lg-2 text-right lbl">Dt de Vencimento:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtFEVENCIM" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblPARIDADE" runat="server" class="col-lg-2 text-right lbl">Paridade War:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtPARIDADE" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQLOTEMIN" runat="server" class="col-lg-2 text-right lbl">Lote Min. Exe.:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtQLOTEMIN" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblNACTSUBJ" runat="server" class="col-lg-2 text-right lbl">Ind. Activo Subj.:</asp:Label>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtNACTSUBJ" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                        <div class="col-lg-1">
                            <select id="cmbIACTSUBJ" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCMOESUBJ" runat="server" class="col-lg-2 text-right lbl">Moeda Activo Subjacente:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCMOESUBJ" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCTIPOLIQ" runat="server" class="col-lg-2 text-right lbl">Tipo Liquida:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCTIPOLIQ" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblSTRIKE" runat="server" class="col-lg-2 text-right lbl">Preço Exerci.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtSTRIKE" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblNEMITEN" runat="server" class="col-lg-2 text-right lbl">Nome do Emitente:</asp:Label>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtNEMITEN" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Dados Complementares DERIVADOS/FUTUROS</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblTFACTOR" runat="server" class="col-lg-4 text-right lbl">Paridade/QTD.:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtTFACTOR" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIACTSUB" runat="server" class="col-lg-4 text-right lbl">Activo Subjacente:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbIACTSUB" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblGTFACTOR" runat="server" class="col-lg-4 text-right lbl">Nome Activo Subjacente:</asp:Label>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtGTFACTOR" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblTEXTOL" runat="server" class="col-lg-4 text-right lbl">Texto Livre:</asp:Label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="txtTEXTOL" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Dados Técnicos espécie</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group">
                </div>
                <div class="row form-group padding-row">

                    <b>
                        <asp:Label ID="lbPrincing" runat="server" class="col-lg-2 text-right lbl">PRINCING:</asp:Label>
                    </b>

                    <div class="col-lg-5">
                        <asp:Label ID="lblPROVIDER" runat="server" class="col-lg-2 text-right lbl">Provider:</asp:Label>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtPROVIDER" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="lblSOURCE" runat="server" class="col-lg-2 text-right lbl">Source:</asp:Label>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtSOURCE" runat="server" CssClass="form-control t-field-t" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Dados Complementares ELEGIBILIDADE</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCELEGIB1" runat="server" class="col-lg-6 text-right lbl">1. Prioridade Elegilidade:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCELEGIB1" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCELEGIB2" runat="server" class="col-lg-6 text-right lbl">2. Prioridade Elegilidade:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCELEGIB2" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCELEGIB3" runat="server" class="col-lg-6 text-right lbl">3. Prioridade Elegilidade:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCELEGIB3" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCELEGIB4" runat="server" class="col-lg-6 text-right lbl">4. Prioridade Elegilidade:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCELEGIB4" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCELEGIB5" runat="server" class="col-lg-6 text-right lbl">5. Prioridade Elegilidade:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCELEGIB5" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Dados Complementares Impostos FTT</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIIMPFTT" runat="server" class="col-lg-2 control-label">Cobrar Imposto:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtIIMPFTT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCODFTT" runat="server" class="col-lg-2 text-right lbl">Referência FIT:</asp:Label>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtCODFTT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Dados Complementares">Atributos de Investimento</a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6">
                        <asp:Label ID="lblCSUBFAM" runat="server" class="col-lg-2 text-right lbl">SubFamilia:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <select id="cmbCSUBFAM" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCLIQUIDPROD" runat="server" class="col-lg-2 text-right lbl">Liquidez:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCOMPLEXINV" runat="server" class="col-lg-2 text-right lbl">Complexidade:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <select id="cmbCCOMPLEXINV" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCHORIZON" runat="server" class="col-lg-2 text-right lbl">Horizonte Temporal:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <select id="cmbCHORIZON" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCZONGEOG" runat="server" class="col-lg-2 text-right lbl">Zona Geográfica:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <select id="cmbCZONGEOG" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCONOFFREGU" runat="server" class="col-lg-2 text-right lbl">OnOff/Regular:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCONOFFREGU" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCIPAD" runat="server" class="col-lg-2 text-right lbl">iPAD:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCIPAD" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCNIVELRISCO" runat="server" class="col-lg-2 text-right lbl">Nivel Risco:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCNIVELRISCO" runat="server" class="form-control t-field-t"></select>
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblMVAR" runat="server" class="col-lg-2 text-right lbl">VaR:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtMVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblDVAR" runat="server" class="col-lg-2 text-right lbl">Data:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtDVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblGOBSRV" runat="server" class="col-lg-2 text-right lbl">Descrição:</asp:Label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="txtGOBSRV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCLAACTI" runat="server" class="col-lg-2 text-right lbl">Cat./Class.activ.:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4">
                            <select id="cmbCCLAACTI" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCLASSRISC" runat="server" class="col-lg-2 text-right lbl">Solicitar classificação de Risco:</asp:Label>
                        <div class="col-lg-1">
                            <select id="cmbCCLASSRISC" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblDTACTIVA" runat="server" class="col-lg-2 text-right lbl">Data de Activação:</asp:Label>
                        <div class="col-lg-2">
                            <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIRECOMEND" runat="server" class="col-lg-2 text-right lbl">Produto recomendado:</asp:Label>
                        <div class="col-lg-1">
                            <asp:TextBox ID="txtIRECOMEND" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
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
    <br />
    <script type="text/javascript">
        $(document).ready(function () {

            JsServerSide();

            AccordionController();
        });
    </script>



</asp:Content>
