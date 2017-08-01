<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA29.aspx.cs" Inherits="ABWebCatalogue.Site.CA29" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/js/ca29.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"> </asp:Label>
        </div>
        <div class="container-fluid form-horizontal">
            <div class="row colorbck">
                <div class="col-lg-12">
                    <br />
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCPRODUTO" runat="server" class="col-lg-2 text-right lbl">Produto:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCPRODUTO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCSUBPROD" runat="server" class="col-lg-2 text-right lbl">SubProduto:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtCSUBPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCISIN" runat="server" class="col-lg-2 text-right lbl">ISIN:</asp:Label>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtCISIN" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                        </div>
                    </div>

                    <div id="pnlCA" runat="server" class="hidden">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCMOEDA" runat="server" class="col-lg-2 text-right lbl">Moeda:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCMOEDA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCESTADO" runat="server" class="col-lg-2 text-right lbl">Estado do Fundo:</asp:Label>
                                <div class="col-lg-2">
                                    <select id="cmbCESTADO" runat="server"  class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblanti" runat="server" class="col-lg-2 text-right lbl">Antigo Produto:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtanti" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lbAntigoSubProduto" runat="server" class="col-lg-2 text-right lbl">Antigo SubProduto:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtAntigoSubProduto" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lbClasseFundo" runat="server" class="col-lg-2 text-right lbl">Classe do Fundo:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtClasseFundo" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblGSUBPR50" runat="server" class="col-lg-2 text-right lbl">Nome:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtGSUBPR50" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblGSUBPROD" runat="server" class="col-lg-2 text-right lbl">Nome Curto:</asp:Label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtGSUBPROD" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblNomeLongo" runat="server" class="col-lg-2 text-right lbl">Nome Longo:</asp:Label>
                                <div class="col-lg-4    ">
                                    <asp:TextBox ID="txtNomeLongo" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
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
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Classificação Bankinter">Classificação Bankinter</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCCATACT" runat="server" class="col-lg-2 text-right lbl">Categoria de Ativos:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCATACT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-3">
                                    <select id="cmbCCATACT" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCCLASSACT" runat="server" class="col-lg-2 text-right lbl">Classes de Ativos:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCLASSACT" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-3">
                                    <select id="cmbCCLASSACT" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Classificação All Funds">Classificação All Funds</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCCLASSACTFU" runat="server" class="col-lg-2 text-right lbl">Classes Ativos:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCCLASSACTFU" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCCLASSACTFU" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCTIPACTIVO" runat="server" class="col-lg-2 text-right lbl">Tipo de Ativos:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCTIPACTIVO" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCTIPACTIVO" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCAREAGEOG" runat="server" class="col-lg-2 text-right lbl">Área Geográfica:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCAREAGEOG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCAREAGEOG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCRANGE" runat="server" class="col-lg-2 text-right lbl">Range:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCRANGE" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCRANGE" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCZONGEOG" runat="server" class="col-lg-2 text-right lbl">Zona Geográfica:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCZONGEOG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-1">
                                    <select id="cmbCZONGEOG" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCTIPFU" runat="server" class="col-lg-2 text-right lbl">Tipo de Fundo:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCTIPFU" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-4">
                                    <select id="cmbCTIPFU" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Sociedade Gestora">Sociedade Gestora</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCIDSOCGEST" runat="server" class="col-lg-2 text-right lbl">Código Soc. Gestora:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCIDSOCGEST" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblGSGC" runat="server" class="col-lg-2 text-right lbl">Nome Soc. Gestora:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtGSGC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCPAISSG" runat="server" class="col-lg-2 text-right lbl">Pais Soc. Gestora:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCPAISSG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCPAISISO" runat="server" class="col-lg-2 text-right lbl">Pais Emissão do Fundo:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCPAISISO" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="SICAV">SICAV</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCSICAV" runat="server" class="col-lg-2 text-right lbl">Código SICAV:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCSICAV" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCPAISICAV" runat="server" class="col-lg-2 text-right lbl">Pais SICAV:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCPAISICAV" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCSICAVDOM" runat="server" class="col-lg-2 text-right lbl">Domicilio SICAV:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCSICAVDOM" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblNSICAV" runat="server" class="col-lg-2 text-right lbl">Nome SICAV:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtNSICAV" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCNIFEMITE" runat="server" class="col-lg-2 text-right lbl">NIF Emitente:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCNIFEMITE" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="KIID">KIID</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCSRRI" runat="server" class="col-lg-2 text-right lbl">Risco KIID:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbCSRRI" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblDKIID" runat="server" class="col-lg-2 text-right lbl"></asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtDKIID" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTOGC" runat="server" class="col-lg-2 text-right lbl">Ongoing Charge:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbTOGC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Dividendos">Dividendos</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIDIVIDEND" runat="server" class="col-lg-2 text-right lbl">COM Dividendos:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbIDIVIDEND" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIPRDPGDIV" runat="server" class="col-lg-2 text-right lbl">Periodicidade Pag. Dividendos:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtIPRDPGDIV" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPRETDIV" runat="server" class="col-lg-2 text-right lbl">Tipo Retenção Dividendos:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITIPRETDIV" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Outras características">Outras características</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIUCIT" runat="server" class="col-lg-2 text-right lbl">UCIT:</asp:Label>
                                <div class="col-lg-2">
                                    <select id="cmbIUCIT" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCMOETRFEES" runat="server" class="col-lg-2 text-right lbl">Moeda Trailer Fees:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCMOETRFEES" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPOPAG" runat="server" class="col-lg-2 text-right lbl">Tipo Pag. p/Fundos c/ Equalização:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITIPOPAG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIDECMTE" runat="server" class="col-lg-2 text-right lbl">Decimais Montantes:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtIDECMTE" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblINSCOPE" runat="server" class="col-lg-2 text-right lbl">INISCOPE ESD?:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbINSCOPE" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBLOOM" runat="server" class="col-lg-2 text-right lbl"></asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtCBLOOM" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblDecQtds" runat="server" class="col-lg-2 text-right lbl">Decimais Quantidades:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtDecQtds" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblICUSTODD" runat="server" class="col-lg-2 text-right lbl">Custódia / Distribuição:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbICUSTODD" runat="server" class="form-control t-field-t custodia"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIMULTCTA" runat="server" class="col-lg-2 text-right lbl">Multi Contas:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbIMULTCTA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCINDSELO" runat="server" class="col-lg-2 text-right lbl">Ret. Imposto Selo:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCINDSELO" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBOPER" runat="server" class="col-lg-2 text-right lbl">Balcão Oper.:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBOPER" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblICUSTODGA" runat="server" class="col-lg-2 text-right lbl">Gestão Ativos:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbICUSTODGA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIBENEFIC" runat="server" class="col-lg-2 text-right lbl">Benef.:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbIBENEFIC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCVALORIM" runat="server" class="col-lg-2 text-right lbl">Tipo Valorização:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbCVALORIM" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBALADIC" runat="server" class="col-lg-2 text-right lbl">Balção Adicional:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBALADIC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label37" runat="server" class="col-lg-2 text-right lbl">Informa Banco de Portugal:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtInfBancoPortugal" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPPROC" runat="server" class="col-lg-2 text-right lbl">Tipo processamento.:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbITIPPROC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblClienteObrig" runat="server" class="col-lg-2 text-right lbl">Cliente obrigatório:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtClienteObrig" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCGRUPEST" runat="server" class="col-lg-2 text-right lbl">Agrupamento Extrato:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCGRUPEST" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbCGRUPEST" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Comissões">Comissões</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPCOMISGEST" runat="server" class="col-lg-2 text-right lbl">Comissão de gestão:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPCOMISGEST" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPOCOMSG" runat="server" class="col-lg-2 text-right lbl">Tipo comissão Soc. gestora:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITIPOCOMSG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblComMaxSubs" runat="server" class="col-lg-2 text-right lbl">Comissão Máx Subscrição:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="TextBox5" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPCOMISDIST" runat="server" class="col-lg-2 text-right lbl">Comissão Distribuição:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPCOMISDIST" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQCOMISUGES" runat="server" class="col-lg-2 text-right lbl">Comissão subscrição Soc. gestora:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQCOMISUGES" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label44" runat="server" class="col-lg-2 text-right lbl">Comissão Máx Resgate:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox8" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPCOMISRESG" runat="server" class="col-lg-2 text-right lbl">Comissão resgate Soc. Gestora:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPCOMISRESG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label46" runat="server" class="col-lg-2 text-right lbl">Comissão de Desempenho:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox10" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label47" runat="server" class="col-lg-2 text-right lbl">Comissão de supervisão:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox11" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPCOMISTOT" runat="server" class="col-lg-2 text-right lbl">Comissão total:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPCOMISTOT" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPOCOMFU" runat="server" class="col-lg-2 text-right lbl">Tipo comissão do fundo:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITIPOCOMFU" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label50" runat="server" class="col-lg-2 text-right lbl">Custos de Auditoria:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox14" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPCOMISDEP" runat="server" class="col-lg-2 text-right lbl">Comissão de Depósito:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPCOMISDEP" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQCOMISUFUND" runat="server" class="col-lg-2 text-right lbl">Comissão subscrição de fundo:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQCOMISUFUND" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label53" runat="server" class="col-lg-2 text-right lbl">Comissão de Gestão:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox17" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblPCOMISADM" runat="server" class="col-lg-2 text-right lbl">Comissão de administração:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtPCOMISADM" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQCOMIRGFUND" runat="server" class="col-lg-2 text-right lbl">Comissão resgate do fundo:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQCOMIRGFUND" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Cotações">Cotações</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCPERIODO" runat="server" class="col-lg-2 text-right lbl">Periodo Cotação:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbCPERIODO" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblICOTREDE" runat="server" class="col-lg-2 text-right lbl">Cotações p/ Agências:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtICOTREDE" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIDECCOT" runat="server" class="col-lg-2 text-right lbl">Decimais Cotações:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtIDECCOT" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblICOTNET" runat="server" class="col-lg-2 text-right lbl">Cotações p/ Serviços:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbICOTNET" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Negociação">Negociação</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblHCUTSUBS" runat="server" class="col-lg-2 text-right lbl">Cut Off Subscrições:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtHCUTSUBS" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblMPRISUBC" runat="server" class="col-lg-2 text-right lbl">Mont. mínimo 1º Subscrição:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMPRISUBC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblHCUTRESG" runat="server" class="col-lg-2 text-right lbl">Cut OFF Resgates:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtHCUTRESG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblMMINSUBC" runat="server" class="col-lg-2 text-right lbl">Mont. mínimo  Subscrição:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMMINSUBC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTREPCOMS" runat="server" class="col-lg-2 text-right lbl">% Repartição Subscrição:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTREPCOMS" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQMINSUBSGA" runat="server" class="col-lg-2 text-right lbl">Mínimo Subscrição GA:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQMINSUBSGA" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblTREPCOMR" runat="server" class="col-lg-2 text-right lbl">% Repartição resgate:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtTREPCOMR" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQPOSMINC" runat="server" class="col-lg-2 text-right lbl">Posição mínima:</asp:Label>
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtQPOSMINC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblINSUBSC" runat="server" class="col-lg-2 text-right lbl">Tipo Subscrição:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbINSUBSC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQPOSMAXC" runat="server" class="col-lg-2 text-right lbl">Posição máxima:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtQPOSMAXC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCTIPRESGA" runat="server" class="col-lg-2 text-right lbl">Tipo Resgate:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbCTIPRESGA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label69" runat="server" class="col-lg-2 text-right lbl">Notificações subscrições:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox31" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPOSETTSUB" runat="server" class="col-lg-2 text-right lbl">Tipo Settlement p/ Subscrições:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITIPOSETTSUB" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQDIASUBSC" runat="server" class="col-lg-2 text-right lbl">Dias p/ Notificações Subs:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtQDIASUBSC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblITIPOSETTRES" runat="server" class="col-lg-2 text-right lbl">Tipo Settlement p/ Resgates:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtITIPOSETTRES" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIDIASUBSC" runat="server" class="col-lg-2 text-right lbl">Tipo dias Notificações Subs:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtIDIASUBSC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblIALLFUND" runat="server" class="col-lg-2 text-right lbl">Negocia via All Funds?:</asp:Label>
                                <div class="col-lg-1">
                                    <select id="cmbIALLFUND" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblINRESG" runat="server" class="col-lg-2 text-right lbl">Notificações Resgates:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtINRESG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblQDIARESG" runat="server" class="col-lg-2 text-right lbl">Dias p/ Notificação Resg:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtQDIARESG" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 ">
                                    <asp:Label ID="Label77" runat="server" class="col-lg-2 text-right lbl">Tipo dias Notificação Resg:</asp:Label>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="TextBox39" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Canal de Distribuição">Canal de Distribuição</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <%--tabela--%>
                        <div class="row form-group padding-row">
                            <div class="col-lg-2">
                            </div>
                            <asp:Label ID="Label103" runat="server" class="col-lg-1 text-center lbl martelada2">Resgates  </asp:Label>
                            <asp:Label ID="Label106" runat="server" class="col-lg-1 text-center lbl martelada1"> Subscrições </asp:Label>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES01" runat="server" class="col-lg-2 text-right lbl">Agências:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES01" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB01" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES02" runat="server" class="col-lg-2 text-right lbl">Private:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES02" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB02" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES03" runat="server" class="col-lg-2 text-right lbl">Gestão de património:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES03" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB03" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES04" runat="server" class="col-lg-2 text-right lbl">Bankinter Fundos:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES04" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB04" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES05" runat="server" class="col-lg-2 text-right lbl">Bankinter Vida:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES05" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB05" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES06" runat="server" class="col-lg-2 text-right lbl">Internet:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES06" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB06" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES07" runat="server" class="col-lg-2 text-right lbl">NetBanking:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES07" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB07" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES08" runat="server" class="col-lg-2 text-right lbl">Banca telefónica:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES08" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB08" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES09" runat="server" class="col-lg-2 text-right lbl">Corporate:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES09" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB09" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <asp:Label ID="lblICOMRES10" runat="server" class="col-lg-2 text-right lbl">Peq./Médias Empresas:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbICOMRES10" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-1">
                                <select id="cmbICOMSUB10" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-lg-12 titleAccordion">
                    <a class="accordion" title="Contas D.O.">Contas D.O.</a>
                </div>
                <div class="row hidden closeAccordion colorbck">
                    <br />
                    <div class="col-lg-12">
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBALJDC" runat="server" class="col-lg-2 text-right lbl">CTA D.O. do Fundo:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBALJDC" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbNUMCONTA" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBALSACO" runat="server" class="col-lg-2 text-right lbl">CTA D.O. cliente s/DO:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBALSACO" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbNUMCTSACO" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBALCOM" runat="server" class="col-lg-2 text-right lbl">CTA D.O. p/Comissões:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBALCOM" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-3">
                                    <select id="cmbNUMCTCOM" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCBALMOE" runat="server" class="col-lg-2 text-right lbl">CTA D.O. cliente s/Moeda Estrangeira:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCBALMOE" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbNUMCTMOE" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblGOBSRVMOT" runat="server" class="col-lg-2 text-right lbl">Observações:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtGOBSRVMOT" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label96" runat="server" class="col-lg-2 text-right lbl">ESTAT:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox69" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label97" runat="server" class="col-lg-2 text-right lbl">T.EXT:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox70" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label98" runat="server" class="col-lg-2 text-right lbl">Ordem:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox71" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label99" runat="server" class="col-lg-2 text-right lbl">SEGM:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox72" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label100" runat="server" class="col-lg-2 text-right lbl">ROT. COT:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox73" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblMNOMIN" runat="server" class="col-lg-2 text-right lbl">Valor Nominal:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtMNOMIN" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="Label102" runat="server" class="col-lg-2 text-right lbl">PER.EXT.:</asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="TextBox75" runat="server"  CssClass="form-control t-field-t"></asp:TextBox>
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
                                <div class="col-lg-2">
                                    <select id="cmbCCOMPLEXINV" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCHORIZON" runat="server" class="col-lg-2 text-right lbl">Horizonte Temporal:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbCHORIZON" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCZONANET" runat="server" class="col-lg-2 text-right lbl">Zona Geográfica:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCZONANET" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-3">
                                    <select id="cmbCZONANET" runat="server" class="form-control t-field-t"></select>
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
                                <div class="col-lg-3">
                                    <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbCNIVELRISCO" runat="server" class="form-control t-field-t"></select>
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
                                <asp:Label ID="lblCCLAACTI" runat="server" class="col-lg-2 text-right lbl">Cat./Class.activ.:</asp:Label>
                                <div class="col-lg-1">
                                    <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <select id="cmbCCLAACTI" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group padding-row">
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblCCLASSRISC" runat="server" class="col-lg-2 text-right lbl">Solicitar classificação de Risco:</asp:Label>
                                <div class="col-lg-4">
                                    <select id="cmbCCLASSRISC" runat="server" class="form-control t-field-t"></select>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <asp:Label ID="lblDTACTIVA" runat="server" class="col-lg-2 text-right lbl">Data de Activação:</asp:Label>
                                <div class="col-lg-2">
                                    <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <br />
                <hr class="hr" />
                <br />
                <div class="divCollapseLeft">
                    <button id="btnClear" class="btns btns-alt" runat="server" onserverclick="btnClear_Click">Limpar</button>
                    <button id="btnSave" class="btns" runat="server" onserverclick="btnSave_Click">Guardar</button>
                </div>
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
