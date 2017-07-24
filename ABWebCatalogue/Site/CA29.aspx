<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA29.aspx.cs" Inherits="ABWebCatalogue.Site.CA29" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script src="../JavaScript/jquery-1.8.3.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="title">
        <asp:Label ID="lblTransaction" runat="server" CssClass="titleGrayBold"></asp:Label>
    </div>

    <div class="titleAccordion">
        <asp:Label ID="Label6" runat="server"> CA29 </asp:Label>
    </div>

    <asp:Panel ID="pnlContent" runat="server">
        <table width="100%" cellpadding="0" cellspacing="0" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCISIN" runat="server" class="t-label-1">ISIN:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCISIN" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCMOEDA" runat="server" class="t-label-1">Moeda:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMOEDA" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCESTADO" runat="server" class="t-label-1">Estado do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCESTADO" runat="server" maxlength="2" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPRODUTO" runat="server" class="t-label-1">Produto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPRODUTO" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblanti" runat="server" class="t-label-1">Antigo Produto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtanti" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGSUBPROD" runat="server" class="t-label-1">Nome Curto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGSUBPROD" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbClasseFundo" runat="server" class="t-label-1">Classe do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClasseFundo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSUBPROD" runat="server" class="t-label-1">SubProduto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSUBPROD" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAntigoSubProduto" runat="server" class="t-label-1">Antigo SubProduto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtAntigoSubProduto" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGSUBPR50" runat="server" class="t-label-1">Nome:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGSUBPR50" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNomeLongo" runat="server" class="t-label-1">Nome Longo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomeLongo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


        </table>

        <br />
        <div class="divCollapseLeft">
            <button id="btnCloseAll" class="btnCollapse" runat="server" onserverclick="btnCloseAll_Click">Fechar todos</button>

            <button id="btnOpenAll" class="btnCollapse" runat="server" onserverclick="btnOpenAll_Click">Abrir todos</button>
        </div>
        <br />
        <br />
    </asp:Panel>

    <button id="btnClaBank" class="titleAccordion-plus" runat="server" onserverclick="btnClaBank_Click">Classificação Bankinter</button>
    <asp:Panel ID="pnlClaBankContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCATACT" runat="server" class="t-label-1">Categoria de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCATACT" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCATACT" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label3" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label4" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCLASSACT" runat="server" class="t-label-1">Classes de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCLASSACT" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCLASSACT" runat="server" class="t-field-14"></select>
                </td>
            </tr>

        </table>
    </asp:Panel>


    <br />
    <br />


    <button id="btnClaAllFunds" class="titleAccordion-plus" runat="server" onserverclick="btnClaAllFunds_Click">Classificação All Funds</button>
    <asp:Panel ID="PnlClaAllFunds" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCLASSACTFU" runat="server" class="t-label-1">Classes Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCLASSACTFU" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCLASSACTFU" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCTIPACTIVO" runat="server" class="t-label-1">Tipo de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTIPACTIVO" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCTIPACTIVO" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label7" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCAREAGEOG" runat="server" class="t-label-1">Área Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCAREAGEOG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCAREAGEOG" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCRANGE" runat="server" class="t-label-1">Range:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCRANGE" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCRANGE" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCZONGEOG" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCZONGEOG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCZONGEOG" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCTIPFU" runat="server" class="t-label-1">Tipo de Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTIPFU" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCTIPFU" runat="server" class="t-field-14"></select>
                </td>
            </tr>

        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="btnSociGest" class="titleAccordion-plus" runat="server" onserverclick="btnSociGest_Click">Sociedade Gestora</button>
    <asp:Panel ID="pnlSociGest" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">



            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCIDSOCGEST" runat="server" class="t-label-1">Código Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCIDSOCGEST" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGSGC" runat="server" class="t-label-1">Nome Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGSGC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label8" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPAISSG" runat="server" class="t-label-1">Pais Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPAISSG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPAISISO" runat="server" class="t-label-1">Pais Emissão do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPAISISO" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />



    <button id="btnSicav" class="titleAccordion-plus" runat="server" onserverclick="btnSicav_Click">SICAV</button>
    <asp:Panel ID="pnlSicav" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSICAV" runat="server" class="t-label-1">Código SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPAISICAV" runat="server" class="t-label-1">Pais SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPAISICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSICAVDOM" runat="server" class="t-label-1">Domicilio SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSICAVDOM" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNSICAV" runat="server" class="t-label-1">Nome SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNSICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCNIFEMITE" runat="server" class="t-label-1">NIF Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCNIFEMITE" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="btnKiid" class="titleAccordion-plus" runat="server" onserverclick="btnKiid_Click">KIID</button>
    <asp:Panel ID="pnlKiid" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSRRI" runat="server" class="t-label-1">Risco KIID:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCSRRI" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDKIID" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDKIID" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTOGC" runat="server" class="t-label-1">Ongoing Charge:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTOGC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />


    <button id="btnDivid" class="titleAccordion-plus" runat="server" onserverclick="btnDivid_Click">Dividendos</button>
    <asp:Panel ID="pnlDivid" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIDIVIDEND" runat="server" class="t-label-1">COM Dividendos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIDIVIDEND" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIPRDPGDIV" runat="server" class="t-label-1">Periodicidade Pag. Dividendos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIPRDPGDIV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPRETDIV" runat="server" class="t-label-1">Tipo Retenção Dividendos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPRETDIV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

        </table>
    </asp:Panel>


    <br />
    <br />



    <button id="btnOutrasCaract" class="titleAccordion-plus" runat="server" onserverclick="btnOutrasCaract_Click">Outras características</button>
    <asp:Panel ID="pnlOutrasCaract" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIUCIT" runat="server" class="t-label-1">UCIT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIUCIT" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCMOETRFEES" runat="server" class="t-label-1">Moeda Trailer Fees:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMOETRFEES" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPOPAG" runat="server" class="t-label-1">Tipo Pag. p/Fundos c/ Equalização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPOPAG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIDECMTE" runat="server" class="t-label-1">Decimais Montantes:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIDECMTE" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblINSCOPE" runat="server" class="t-label-1">INISCOPE ESD?:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbINSCOPE" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBLOOM" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBLOOM" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label28" runat="server" class="t-label-1">Decimais Quantidades:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDecQtds" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICUSTODD" runat="server" class="t-label-1">Custódia / Distribuição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICUSTODD" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIMULTCTA" runat="server" class="t-label-1">Multi Contas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIMULTCTA" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCINDSELO" runat="server" class="t-label-1">Ret. Imposto Selo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCINDSELO" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBOPER" runat="server" class="t-label-1">Balcão Oper.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBOPER" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICUSTODGA" runat="server" class="t-label-1">Gestão Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICUSTODGA" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIBENEFIC" runat="server" class="t-label-1">Benef.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIBENEFIC" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCVALORIM" runat="server" class="t-label-1">Tipo Valorização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCVALORIM" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBALADIC" runat="server" class="t-label-1">Balção Adicional:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALADIC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label37" runat="server" class="t-label-1">Informa Banco de Portugal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtInfBancoPortugal" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPPROC" runat="server" class="t-label-1">Tipo processamento.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbITIPPROC" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label40" runat="server" class="t-label-1">Cliente obrigatório:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClienteObrig" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCGRUPEST" runat="server" class="t-label-1">Agrupamento Extrato:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCGRUPEST" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCGRUPEST" runat="server" class="t-field-14"></select>
                </td>
            </tr>

        </table>
    </asp:Panel>


    <br />
    <br />


    <button id="btnComi" class="titleAccordion-plus" runat="server" onserverclick="btnComi_Click">Comissões</button>
    <asp:Panel ID="pnlComi" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPCOMISGEST" runat="server" class="t-label-1">Comissão de gestão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMISGEST" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPOCOMSG" runat="server" class="t-label-1">Tipo comissão Soc. gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPOCOMSG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblComMaxSubs" runat="server" class="t-label-1">Comissão Máx Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPCOMISDIST" runat="server" class="t-label-1">Comissão Distribuição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMISDIST" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQCOMISUGES" runat="server" class="t-label-1">Comissão subscrição Soc. gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQCOMISUGES" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label44" runat="server" class="t-label-1">Comissão Máx Resgate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPCOMISRESG" runat="server" class="t-label-1">Comissão resgate Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMISRESG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label46" runat="server" class="t-label-1">Comissão de Desempenho:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox10" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label47" runat="server" class="t-label-1">Comissão de supervisão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox11" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPCOMISTOT" runat="server" class="t-label-1">Comissão total:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMISTOT" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPOCOMFU" runat="server" class="t-label-1">Tipo comissão do fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPOCOMFU" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label50" runat="server" class="t-label-1">Custos de Auditoria:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox14" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPCOMISDEP" runat="server" class="t-label-1">Comissão de Depósito:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMISDEP" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQCOMISUFUND" runat="server" class="t-label-1">Comissão subscrição de fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQCOMISUFUND" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label53" runat="server" class="t-label-1">Comissão de Gestão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox17" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPCOMISADM" runat="server" class="t-label-1">Comissão de administração:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMISADM" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQCOMIRGFUND" runat="server" class="t-label-1">Comissão resgate do fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQCOMIRGFUND" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

            </tr>

        </table>
    </asp:Panel>


    <br />
    <br />


    <button id="btnCot" class="titleAccordion-plus" runat="server" onserverclick="btnCot_Click">Cotações</button>
    <asp:Panel ID="pnlCot" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPERIODO" runat="server" class="t-label-1">Periodo Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCPERIODO" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOTREDE" runat="server" class="t-label-1">Cotações p/ Agências:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtICOTREDE" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label56" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIDECCOT" runat="server" class="t-label-1">Decimais Cotações:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIDECCOT" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblICOTNET" runat="server" class="t-label-1">Cotações p/ Serviços:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOTNET" runat="server" class="t-field-14"></select>
                </td>
            </tr>

        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="btnNego" class="titleAccordion-plus" runat="server" onserverclick="btnNego_Click">Negociação</button>
    <asp:Panel ID="pnlNego" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblHCUTSUBS" runat="server" class="t-label-1">Cut Off Subscrições:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtHCUTSUBS" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblMPRISUBC" runat="server" class="t-label-1">Mont. mínimo 1º Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMPRISUBC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label59" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblHCUTRESG" runat="server" class="t-label-1">Cut OFF Resgates:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtHCUTRESG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblMMINSUBC" runat="server" class="t-label-1">Mont. mínimo  Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMMINSUBC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTREPCOMS" runat="server" class="t-label-1">% Repartição Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTREPCOMS" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblQMINSUBSGA" runat="server" class="t-label-1">Mínimo Subscrição GA:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQMINSUBSGA" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTREPCOMR" runat="server" class="t-label-1">% Repartição resgate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTREPCOMR" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblQPOSMINC" runat="server" class="t-label-1">Posição mínima:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQPOSMINC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblINSUBSC" runat="server" class="t-label-1">Tipo Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbINSUBSC" runat="server" class="t-field-14"></select>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblQPOSMAXC" runat="server" class="t-label-1">Posição máxima:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQPOSMAXC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCTIPRESGA" runat="server" class="t-label-1">Tipo Resgate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCTIPRESGA" runat="server" class="t-field-14"></select>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label69" runat="server" class="t-label-1">Notificações subscrições:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox31" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPOSETTSUB" runat="server" class="t-label-1">Tipo Settlement p/ Subscrições:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPOSETTSUB" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblQDIASUBSC" runat="server" class="t-label-1">Dias p/ Notificações Subs:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQDIASUBSC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPOSETTRES" runat="server" class="t-label-1">Tipo Settlement p/ Resgates:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITIPOSETTRES" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblIDIASUBSC" runat="server" class="t-label-1">Tipo dias Notificações Subs:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIDIASUBSC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIALLFUND" runat="server" class="t-label-1">Negocia via All Funds?:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIALLFUND" runat="server" class="t-field-14"></select>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lblINRESG" runat="server" class="t-label-1">Notificações Resgates:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtINRESG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQDIARESG" runat="server" class="t-label-1">Dias p/ Notificação Resg:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQDIARESG" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label77" runat="server" class="t-label-1">Tipo dias Notificação Resg:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox39" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnCanalDist" class="titleAccordion-plus" runat="server" onserverclick="btnCanalDist_Click">Canal de Distribuição</button>
    <asp:Panel ID="pnlCanalDist" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label78" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:Label ID="Label103" runat="server" class="t-label-1 martelada2">Resgates  </asp:Label>

                    <asp:Label ID="Label106" runat="server" class="t-label-1 martelada1"> Subscrições </asp:Label>

                </td>

            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES01" runat="server" class="t-label-1">Agências:</asp:Label>
                </td>
                <td class="t-table-col-2">

                    <select id="cmbICOMRES01" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB01" runat="server" class="t-field-14"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES02" runat="server" class="t-label-1">Private:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES02" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB02" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES03" runat="server" class="t-label-1">Gestão de património:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES03" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB03" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES04" runat="server" class="t-label-1">Bankinter Fundos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES04" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB04" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES05" runat="server" class="t-label-1">Bankinter Vida:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES05" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB05" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES06" runat="server" class="t-label-1">Internet:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES06" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB06" runat="server" class="t-field-14"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES07" runat="server" class="t-label-1">NetBanking:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES07" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB07" runat="server" class="t-field-14"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES08" runat="server" class="t-label-1">Banca telefónica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES08" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB08" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES09" runat="server" class="t-label-1">Corporate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES09" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB09" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOMRES10" runat="server" class="t-label-1">Peq./Médias Empresas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOMRES10" runat="server" class="t-field-14"></select>
                    <select id="cmbICOMSUB10" runat="server" class="t-field-14"></select>
                </td>
            </tr>


        </table>
    </asp:Panel>

    <br />
    <br />


    <button id="btnContasDo" class="titleAccordion-plus" runat="server" onserverclick="btnContasDo_Click">Contas D.O.</button>
    <asp:Panel ID="pnlContasDo" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBALJDC" runat="server" class="t-label-1">CTA D.O. do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALJDC" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbNUMCONTA" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBALSACO" runat="server" class="t-label-1">CTA D.O. cliente s/DO:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALSACO" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbNUMCTSACO" runat="server" class="t-field-14"></select>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label92" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBALCOM" runat="server" class="t-label-1">CTA D.O. p/Comissões:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALCOM" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbNUMCTCOM" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBALMOE" runat="server" class="t-label-1">CTA D.O. cliente s/Moeda Estrangeira:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALMOE" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbNUMCTMOE" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGOBSRVMOT" runat="server" class="t-label-1">Observações:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGOBSRVMOT" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label96" runat="server" class="t-label-1">ESTAT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox69" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label97" runat="server" class="t-label-1">T.EXT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox70" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label98" runat="server" class="t-label-1">Ordem:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox71" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label99" runat="server" class="t-label-1">SEGM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox72" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label100" runat="server" class="t-label-1">ROT. COT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox73" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblMNOMIN" runat="server" class="t-label-1">Valor Nominal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMNOMIN" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label102" runat="server" class="t-label-1">PER.EXT.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox75" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

            </tr>

        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnAttInv" class="titleAccordion-plus" runat="server" onserverclick="btnAttInv_Click">Atributos de Investimento</button>
    <asp:Panel ID="pnlAttInvContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSUBFAM" runat="server" class="t-label-1">SubFamilia:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCSUBFAM" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCLIQUIDPROD" runat="server" class="t-label-1">Liquidez:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCOMPLEXINV" runat="server" class="t-label-1">Complexidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCOMPLEXINV" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCHORIZON" runat="server" class="t-label-1">Horizonte Temporal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCHORIZON" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCZONANET" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCZONANET" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCZONANET" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCONOFFREGU" runat="server" class="t-label-1">OnOff/Regular:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCIPAD" runat="server" class="t-label-1">iPAD:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCIPAD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCNIVELRISCO" runat="server" class="t-label-1">Nivel Risco:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCNIVELRISCO" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblMVAR" runat="server" class="t-label-1">VaR:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDVAR" runat="server" class="t-label-1">Data:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGOBSRV" runat="server" class="t-label-1">Descrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGOBSRV" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>



            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCLAACTI" runat="server" class="t-label-1">Cat./Class.activ.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCLAACTI" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCLASSRISC" runat="server" class="t-label-1">Solicitar classificação de Risco:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCLASSRISC" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDTACTIVA" runat="server" class="t-label-1">Data de Activação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="t-field-14"></asp:TextBox>

                </td>
            </tr>

        </table>
    </asp:Panel>

    <br />
    <br />

    <hr class="hr" />
    <br />
    <div class="btnLeft">
        <button id="btnClear" class="t-btn-2" runat="server" onserverclick="btnClear_Click">Limpar</button>
        <button id="btnSave" class="t-btn-2" runat="server" onserverclick="btnSave_Click">Guardar</button>
    </div>
    <br />
    <br />

    <script type="text/javascript">
        $(document).ready(function () {
         

            function CustodiaRulesSS(listener, target){
                $("#"+ listener).change(function () {
                    var aux = $("#"+ listener).val();
                    if (aux === "D" || aux === "C"){
                        $("#"+ target).val("S").change();
                    } else {
                        $("#"+ target).val("N").change();
                    }
                })
            };

            function CustodiaRulesSN(listener, target){
                $("#"+ listener).change(function () {
                    var aux = $("#"+ listener).val();
                    if (aux === "D"){
                        $("#"+ target).val("S").change();
                    } else{
                        $("#"+ target).val("N").change();
                    }
                })
            };

            function CustodiaRulesTwoList(listener1, listener2, target){
                $("#"+ Listener).change(function () {
                    var value1 = $("#"+ listener1).val();
                    var value2 = $("#"+ listener2).val();
                    if ((value1 === "D" || value1 === "C") && value2 ==="S"){
                        $("#"+ target).val("S").change();
                    } else{
                        $("#"+ target).val("N").change();
                    }
                })
            };

            function CustodiaRulesTwoListComplex(listener1, listener2, target){
                $("#"+ Listener).change(function () {
                    var value1 = $("#"+ listener1).val();
                    var value2 = $("#"+ listener2).val();
                    if (value1 === "D" && value2 ==="S"){
                        $("#"+ target).val("S").change();
                    } else{
                        $("#"+ target).val("N").change();
                    }
                })
            };

        });

            changeCombo(".custodia")
            $(".custodia").change(function () {
                var aux = $(".custodia").val();
                if (aux === "C" || aux === "D") {
                    $("#CPH_cmbICOMRES01").val("N").change();
                } else {

                }

            });

            $(".custodia").change(function () {
                var aux = $(".custodia").val();
                if (aux === "C" || aux === "D") {
                    $("#CPH_cmbICOMRES01").val("N").change(function JsInjectCmbLookup() {

                    });
                } else {

                }

            });


        });



    </script>


</asp:Content>
