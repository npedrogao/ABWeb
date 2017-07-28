<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VC39.aspx.cs" Inherits="ABWebCatalogue.Site.VC39" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
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
                            <label id="lblCPRODUTO" runat="server" class="t-label-1">Produto</label>
                            <asp:TextBox ID="txtCPRODUTO" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCSUBPROD" runat="server" class="t-label-1">Sub Produto</label>
                            <asp:TextBox ID="txtCSUBPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="GSUBPROD" runat="server" class="t-label-1">Nome</label>
                            <asp:TextBox ID="txtGSUBPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 ">
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
                                <label id="lblCTIPOSG" runat="server" class="t-label-1">Tipo Produto</label>
                                <asp:TextBox ID="txtCTIPOSG" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <select id="cmbCTIPOSG" runat="server" class="t-field-14"></select>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCMOEDA" runat="server" class="t-label-1">Moeda</label>
                                <asp:TextBox ID="txtCMOEDA" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <select id="cmbCMOEDA" runat="server" class="t-field-14"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCBALCAO1" runat="server" class="t-label-1">Conta Produto</label>
                                <asp:TextBox ID="txtCBALCAO1" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <asp:TextBox ID="txtNUCTA" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCAPOANO" runat="server" class="t-label-1">CAPOANO</label>
                                <asp:TextBox ID="txtCAPOANO" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblZAPOLICE" runat="server" class="t-label-1">ZAPOLICE</label>
                                <asp:TextBox ID="txtZAPOLICE" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCCERTIF" runat="server" class="t-label-1">CCERTIF</label>
                                <asp:TextBox ID="txtCCERTIF" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCCERANO" runat="server" class="t-label-1">CCERANO</label>
                                <asp:TextBox ID="txtCCERANO" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCBALSACO" runat="server" class="t-label-1">Conta IT'S</label>
                                <asp:TextBox ID="txtCBALSACO" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <asp:TextBox ID="txtCCTASACO" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblCBANNIB" runat="server" class="t-label-1">NIB da Conta GV</label>
                                <asp:TextBox ID="txtCBANNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <asp:TextBox ID="txtCBALNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <asp:TextBox ID="txtCNUMNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                                <asp:TextBox ID="txtCDIGNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQBASCALC" runat="server" class="t-label-1">Base Cálculo</label>
                                <asp:TextBox ID="txtQBASCALC" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCSEQUEN" runat="server" class="t-label-1">Base Cálculo</label>
                                <asp:TextBox ID="txtCSEQUEN" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQDECIUPS" runat="server" class="t-label-1">Decimais UP'S</label>
                                <asp:TextBox ID="txtQDECIUPS" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblQALTMOD" runat="server" class="t-label-1">Número de Alterações</label>
                                <asp:TextBox ID="txtQALTMOD" runat="server" CssClass="t-field-14"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <label id="lblQPROPVAL" runat="server" class="t-label-1">Validade Propostas:</label>
                                <asp:TextBox ID="txtQPROPVAL" runat="server" CssClass="t-field-14"></asp:TextBox>Dias
                            </div>
                            <div class="col-lg-6 ">
                                <label id="lblCTIPODIAS" runat="server" class="t-label-1">Dias úteis:</label>
                                <select id="cmbCTIPODIAS" runat="server" class="t-field-14"></select>
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
                            <label id="lblQANOMIN" runat="server" class="t-label-1">Minimo:</label>
                            <asp:TextBox ID="txtQANOMIN" runat="server" CssClass="t-field-14"></asp:TextBox>Anos
                    <asp:TextBox ID="txtQMINDIA" runat="server" CssClass="t-field-14"></asp:TextBox>Dias
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblQANOMAX" runat="server" class="t-label-1">Maximo:</label>
                            <asp:TextBox ID="txtQANOMAX" runat="server" CssClass="t-field-14"></asp:TextBox>Anos
                    <asp:TextBox ID="txtQMAXDIA" runat="server" CssClass="t-field-14"></asp:TextBox>Dias
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label class="col-xs-6 control-label">Data De Vencimento:</label>
                            <asp:TextBox ID="txtDVENCIM" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                            <label id="lblTBONEMP" runat="server" class="t-label-1">Tx.Bonific.:</label>
                            <asp:TextBox ID="txtTBONEMP" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblTCOMISS" runat="server" class="t-label-1">Tx.Comissão:</label>
                            <asp:TextBox ID="txtTCOMISS" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblTPARRESG" runat="server" class="t-label-1">Tx.Par.Resg.:</label>
                            <asp:TextBox ID="txtTPARRESG" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblTGARANT" runat="server" class="t-label-1">Tx.Garant.:</label>
                            <asp:TextBox ID="txtTGARANT" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblTPENTRFO" runat="server" class="t-label-1">Tx.Pen.Trfo:</label>
                            <asp:TextBox ID="txtTPENTRFO" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblMRESGMIN" runat="server" class="t-label-1">Vl.Resg.Min.:</label>
                            <asp:TextBox ID="txtMRESGMIN" runat="server" CssClass="t-field-14"></asp:TextBox>%
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
                            <label id="lblCSUBFAM" class="t-label-1">SubFamilia:</label>
                            <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="t-field-14"></asp:TextBox>
                            <select id="cmbCSUBFAM" runat="server" class="t-field-15"></select>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCLIQUIDPROD" class="t-label-1">Liquidez:</label>
                            <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblCCOMPLEXINV" class="t-label-1">Complexidade:</label>
                            <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="t-field-14"></asp:TextBox>
                            <select id="cmbCCOMPLEXINV" runat="server" class="t-field-15"></select>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCHORIZON" class="t-label-1">Horizonte Temporal:</label>
                            <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="t-field-14"></asp:TextBox>
                            <select id="cmbCHORIZON" runat="server" class="t-field-15"></select>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblCZONGEOG" class="t-label-1">Zona Geográfica:</label>
                            <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="t-field-14"></asp:TextBox>
                            <select id="cmbCZONGEOG" runat="server" class="t-field-15"></select>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCONOFFREGU" class="t-label-1">OnOff/Regular:</label>
                            <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lbCIPAD" class="t-label-1">iPAD:</label>
                            <select id="cmbCIPAD" runat="server" class="t-field-14"></select>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCNIVELRISCO" class="t-label-1">Nivel Risco:</label>
                            <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lbMVAR" class="t-label-1">VaR:</label>
                            <asp:TextBox ID="txtMVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblDVAR" class="t-label-1">Data:</label>
                            <asp:TextBox ID="txtDVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblGOBSRV" class="t-label-1">Descrição:</label>
                            <asp:TextBox ID="txtGOBSRV" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblCCLAACTI" class="t-label-1">Cat./Class.activ.:</label>
                            <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="t-field-14"></asp:TextBox>
                            <select id="cmbCCLAACTI" runat="server" class="t-field-14"></select>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblCCLASSRISC" class="col-xs-8 control-label">Solicitar classificação de Risco:</label>
                            <select id="cmbCCLASSRISC" runat="server" class="t-field-14"></select>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblDTACTIVA" class="col-xs-6 control-label">Data de Activação:</label>
                            <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                            <label id="lblPCOMDIS" runat="server" class="col-xs-6 control-label">Comissão de Distribuição:</label>
                            <asp:TextBox ID="txtPCOMDIS" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                            <label id="lblQIDADMIN" runat="server" class="t-label-1">Idade Minima:</label>
                            <asp:TextBox ID="txtQIDADMIN" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblQIDADMAX" class="t-label-1">Idade Máxima:</label>
                            <asp:TextBox ID="txtQIDADMAX" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblQIDADDEF" runat="server" class="t-label-1">Idade Default:</label>
                            <asp:TextBox ID="txtQIDADDEF" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblQIDADSUB" runat="server" class="t-label-1">Idade Max. Subs.:</label>
                            <asp:TextBox ID="txtQIDADSUB" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="lblNPESSSEG" runat="server" class="t-label-1">Nº Pessoas Seguras:</label>
                            <asp:TextBox ID="txtNPESSSEG" runat="server" CssClass="t-field-14"></asp:TextBox>%
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
                            <label id="lblCTRATADO" runat="server">Cód. Tratado:</label>
                            <asp:TextBox ID="txtCTRATADO" runat="server" CssClass="t-field-14"></asp:TextBox>%
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
                            <label id="lblMACTA" runat="server">Acta:</label>
                            <asp:TextBox ID="txtMACTA" runat="server" CssClass="t-field-t"></asp:TextBox>
                            <span class="span">%</span>
                        </div>
                        <div class="col-lg-6 ">
                            <label id="lblMCAPOL" runat="server">Apólice:</label>
                            <asp:TextBox ID="txtMCAPOL" runat="server" CssClass="t-field-t"></asp:TextBox>
                            <span class="span">%</span>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                        </div>
                        <div class="col-lg-6 ">
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

                        <label>PREM</label>

                        <label>RESG.T</label>

                        <label>RESG.P</label>

                        <label>RED.T</label>

                        <label>RED.P</label>

                        <label>SIN</label>

                        <label>TRANSFO</label>

                        <label>TRANSFE</label>

                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="Label1" runat="server">CLI:</label>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:TextBox ID="txtCPREMCLI" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCRESGTCL" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCRESGPCL" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCREDTCL" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCREDPCL" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCSINCLI" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCTRFODEB" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCTRFECLI" runat="server" class="t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label id="Label2" runat="server">SOC:</label>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:TextBox ID="txtCPREMSOC" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCRESTSOC" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCRESPSOC" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCREDTSOC" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCREDPSOC" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCSINSOC" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCTRFOCRE" runat="server" class="t-field-t"></asp:TextBox>
                            <asp:TextBox ID="txtCTRFESOC" runat="server" class="t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title=""></a>
            </div>
            <div class="row hidden closeAccordion">
                <br />
                <div class="col-lg-12">
                    <div class="row form-group padding-row">
                        <label id="lblTPARESG1" runat="server">Tx.Penalização:</label>
                        <asp:TextBox ID="txtTPARESG1" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">%</span>


                        <asp:TextBox ID="txtTPARESG2" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">%</span>


                        <asp:TextBox ID="txtTPARESG3" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">%</span>


                        <asp:TextBox ID="txtTPARESG4" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">%</span>


                        <asp:TextBox ID="txtTPARESG5" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">%</span>


                        <asp:TextBox ID="txtTPARESG6" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">%</span>
                    </div>
                    <div class="row form-group padding-row">
                        <label id="lblQANORES1" runat="server">Até:</label>
                        <asp:TextBox ID="txtQANORES1" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">ºAno</span>

                        <asp:TextBox ID="txtQANORES2" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">ºAno</span>

                        <asp:TextBox ID="txtQANORES3" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">ºAno</span>

                        <asp:TextBox ID="txtQANORES4" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">ºAno</span>

                        <asp:TextBox ID="txtQANORES5" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">ºAno</span>

                        <asp:TextBox ID="txtQANORES6" runat="server" class="t-field-t"></asp:TextBox>
                        <span class="span">ºAno</span>
                    </div>
                    <div class="row form-group padding-row">
                        <label id="lblDPRESG1" runat="server">Data:</label>

                        <asp:TextBox ID="txtDPRESG1" runat="server" class="t-field-t"></asp:TextBox>

                        <asp:TextBox ID="txtDPRESG2" runat="server" class="t-field-t"></asp:TextBox>

                        <asp:TextBox ID="txtDPRESG3" runat="server" class="t-field-t"></asp:TextBox>
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
                            <label class="t-label-1">COPERSG.:</label>
                            <asp:TextBox ID="txtCopersg" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                        <div class="col-lg-6 ">
                            <label class="t-label-1">Prod.c/ PPP:</label>
                            <select id="cmbCopersgppp" runat="server" class="t-field-14"></select>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <label class="t-label-1">COPERSG PPP:</label>
                            <asp:TextBox ID="txtIcobppp" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                            <label class="t-label-1">SubProduto:</label>
                            <asp:TextBox ID="txtSubpfund" runat="server" CssClass="t-field-14"></asp:TextBox>

                        </div>
                        <div class="col-lg-6 ">
                            <label class="t-label-1">Conta:</label>
                            <asp:TextBox ID="txtCbalfund" runat="server" CssClass="t-field-14"></asp:TextBox>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>






    <br />
    <br />
    <button id="btnEncargosAltModal" class="titleAccordion-plus" runat="server" onserverclick="btnEncargosAltModal_Click">Encargos de Alterção Modalidade</button>
    <asp:Panel ID="pnlEncargosAltModal" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">ENC1:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtTencmod1" runat="server" CssClass="t-field-15"></asp:TextBox>
                    %
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">MONT1:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtMencmod1" runat="server" CssClass="t-field-15"></asp:TextBox>
                    €
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">ENC4:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtTencmod4" runat="server" CssClass="t-field-15"></asp:TextBox>
                    %
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">MONT4:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtMencmod4" runat="server" CssClass="t-field-15"></asp:TextBox>
                    €
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">ENC2:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtTencmod2" runat="server" CssClass="t-field-15"></asp:TextBox>
                    %
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">MONT2:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtMencmod2" runat="server" CssClass="t-field-15"></asp:TextBox>
                    €
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">ENC5:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtTencmod5" runat="server" CssClass="t-field-15"></asp:TextBox>
                    %
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">MONT5:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtMencmod5" runat="server" CssClass="t-field-15"></asp:TextBox>
                    €
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">ENC3:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtTencmod3" runat="server" CssClass="t-field-15"></asp:TextBox>
                    %
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">MONT3:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtMencmod3" runat="server" CssClass="t-field-15"></asp:TextBox>
                    €
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">ENC6:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtTencmod6" runat="server" CssClass="t-field-15"></asp:TextBox>
                    %
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">MONT6:</label>
                </td>
                <td class="t-table-col-1">
                    <asp:TextBox ID="txtMencmod6" runat="server" CssClass="t-field-15"></asp:TextBox>
                    €
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnPRORROGAMENTO" class="titleAccordion-plus" runat="server" onserverclick="btnPRORROGAMENTO_Click">PRORROGAMENTO</button>
    <asp:Panel ID="pnlPRORROGAMENTO" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">Anos:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQprorrog" runat="server" CssClass="t-field-14"></asp:TextBox>
                    %
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <button id="btnValidacoes" class="titleAccordion-plus" runat="server" onserverclick="btnValidacoes_Click">VALIDAÇÕES (vida risco)</button>
    <asp:Panel ID="pnlValidacoes" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">Validade de Duração de Contrato:</label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIvaldur" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">Base de Cálculo:</label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIbasecal" runat="server" class="t-field-14"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <button id="btnRevalidacaoCapital" class="titleAccordion-plus" runat="server" onserverclick="btnRevalidacaoCapital_Click">REVALIDAÇÃO de CAPITAL</button>
    <asp:Panel ID="pnlRevalidacaoCapital" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblITIPOREV" runat="server" class="t-label-1">TIPO DE REVALORIZAÇÃO DE CAPITAL</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPOREV" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCTABREV" runat="server" class="t-label-1">COD. TABELA DE REVALORIZAÇÃO :</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTABREV" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <button id="btnINDICADORES" class="titleAccordion-plus" runat="server" onserverclick="btnINDICADORES_Click">INDICADORES</button>
    <asp:Panel ID="pnlINDICADORES" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblIMETRESG" runat="server" class="t-label-1">METDO DE RESGATE:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIMETRESG" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblICAPTLZ" runat="server" class="t-label-1">CAPITALIZACAO :</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtICAPTLZ" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <hr class="hr" />
    <br />
    <div class="btnLeft">
        <button id="btnClear" class="t-btn-2" runat="server" onserverclick="btnClear_Click">Limpar</button>
        <button id="btnSave" class="t-btn-2" runat="server" onserverclick="btnSave_Click">Guardar</button>
    </div>
</asp:Content>
