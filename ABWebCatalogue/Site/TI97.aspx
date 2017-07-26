<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI97.aspx.cs" Inherits="ABWebCatalogue.Site.TI97" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap-datepicker.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-store" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="title">
        <asp:Label ID="lblTransaction" runat="server" CssClass="titleGrayBold"></asp:Label>
    </div>

    <div class="titleAccordion">
        <asp:Label ID="Label6" runat="server"> TI97 </asp:Label>
    </div>

    <asp:Panel ID="pnlContent" runat="server">
        <table width="100%" cellpadding="0" cellspacing="0" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCODVALOR" runat="server" class="t-label-1">Espécie:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCODVALOR" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbNOMBREV" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblSITUACA" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSITUACA" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbSITUACA" runat="server" class="t-field-14"></select>

                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label2" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblSEGCART" runat="server" class="t-label-1">Seg. Carteira:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSEGCART" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbDSEGCART" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCTIPESC" runat="server" class="t-label-1">Escalão Prec.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTIPESC" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCODISIN" runat="server" class="t-label-1">ISIN:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCODISIN" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNEMONICA" runat="server" class="t-label-1">CVM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNEMONICA" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCIF_2" runat="server" class="t-label-1">Class.I.Fin.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCIF_2" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCCIF_6" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBLOOMBG" runat="server" class="t-label-1">Bloomberg:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBLOOMBG" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCREUTERS" runat="server" class="t-label-1">Reuters:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCREUTERS" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPFCCMVM" runat="server" class="t-label-1">CMVM PFC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPFCCMVM" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITITDEF" runat="server" class="t-label-1">Default:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbITITDEF" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCODDIVI" runat="server" class="t-label-1">Moed+Nomimal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCODDIVI" runat="server" size="1" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtNOMINN" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNOMIN" runat="server" class="t-label-1">Nominal Ant.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNOMIN" runat="server" size="1" CssClass="t-field-14 medium-input"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAmortParcial" runat="server" class="t-label-1">Amort. Parcial sem Afeta Nom/Quant.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlAmortParcial" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNIF" runat="server" class="t-label-1">Contribuinte:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNIF" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblISINBP" runat="server" class="t-label-1">ISIN CON. BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtISINBP" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblZCLIENTE" runat="server" class="t-label-1">CTA Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtZCLIENTE" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtZSEQ" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCNATJUR" runat="server" class="t-label-1">Natureza Juridica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCNATJUR" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCIDABP" runat="server" class="t-label-1">COD. ADIC. BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCIDABP" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCUSTOD" runat="server" class="t-label-1">Custodiante:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCUSTOD" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtDCUSTOD" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCRISCOPRD" runat="server" class="t-label-1">Risco Produto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCRISCOPRD" runat="server" class="t-field-14"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPAISEMI" runat="server" class="t-label-1">Pais Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPAISEMI" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <select id="cmbCPAISEMI" runat="server" class="t-field-14 "></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblLGUARDA" runat="server" class="t-label-1">Local Guarda:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLGUARDA" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtDLGUARDA" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblRETEN" runat="server" class="t-label-1">% IRS/IRC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRETEN" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPEXENCN" runat="server" class="t-label-1">% Isenção IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPEXENCN" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPAGRAVA" runat="server" class="t-label-1">% Agrava. IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPAGRAVA" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTISENIE" runat="server" class="t-label-1">% I. Estrang.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTISENIE" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTIRETEST" runat="server" class="t-label-1">% Isenção IE:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTIRETEST" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTAGRAIE" runat="server" class="t-label-1">% Agrava. IE:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTAGRAIE" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICOTADO" runat="server" class="t-label-1">Tem Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICOTADO" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblMOEDAVAL" runat="server" class="t-label-1">Moeda Liq.+Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMOEDAVAL" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtMCAMED" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFECHACTU" runat="server" class="t-label-1">Data Cot.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFECHACTU" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIPERCOTA" runat="server" class="t-label-1">Periodicidade Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIPERCOTA" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <select id="cmbDPERCOTA" runat="server" cssclass="t-field-14 "></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIORIGEMPREC" runat="server" class="t-label-1">Origem Preço:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIORIGEMPREC" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <select id="cmbIORIGEMPREC" runat="server" class="t-field-14 "></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNEGOCIAV" runat="server" class="t-label-1">Negociável:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbNEGOCIAV" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCBOLSA01" runat="server" class="t-label-1">Bolsas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBOLSA01" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA02" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA03" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA04" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA05" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA06" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA07" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA08" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA09" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA10" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA11" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA12" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA13" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA14" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCBOLSA15" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCODPAIS" runat="server" class="t-label-1">Pais Mercad:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCODPAIS" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <select id="cmbCODPAIS" runat="server" class="t-field-14 "></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTIPTITUL" runat="server" class="t-label-1">Sist. Negocia.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTIPTITUL" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITSIZE" runat="server" class="t-label-1">Tick Size:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITSIZE" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCINDPRI" runat="server" class="t-label-1">Indice Princ:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCINDPRI" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtDINDPRI" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCINDSEC" runat="server" class="t-label-1">Indice Secun.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCINDSEC" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtDINDSEC" runat="server" class="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPISENCAO" runat="server" class="t-label-1">% Isenção Tx.Bol:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPISENCAO" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbPISENCAO" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIBANTELE" runat="server" class="t-label-1">Net:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIBANTELE" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITITBAL" runat="server" class="t-label-1">Agências:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbITITBAL" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTCREDITO" runat="server" class="t-label-1">Elegivel:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTCREDITO" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFEALTCLI" runat="server" class="t-label-1">Data Criação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFEALTCLI" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFEULTMOD" runat="server" class="t-label-1">Ult. Actual:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFEULTMOD" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtUSUARIO" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


        </table>

        <br />
        <br />
        <div class="divCollapseLeft">
            <button id="btnCloseAll" class="btnCollapse" runat="server" onserverclick="btnCloseAll_Click">Fechar todos</button>

            <button id="btnOpenAll" class="btnCollapse" runat="server" onserverclick="btnOpenAll_Click">Abrir todos</button>
        </div>
    </asp:Panel>

    <br />
    <br />


    <button id="btnDadComp" class="titleAccordion-plus" runat="server" onserverclick="btnDadComp_Click">Dados Complementares: OBRIGAÇÕES/V.M. CONVERTÍVEIS</button>
    <asp:Panel ID="pnlDadCompContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblEMIS" runat="server" class="t-label-1">Data Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtEMIS" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFPROXA" runat="server" class="t-label-1">Dt. Ult. Mort.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFPROXA" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDULTAMOR" runat="server" class="t-label-1">Dt. Amort. Final:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDULTAMOR" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTIPAMOR" runat="server" class="t-label-1">Tipo Amortiz.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTIPAMOR" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTIPINT" runat="server" class="t-label-1">Tipo de Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTIPINT" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblINTERES" runat="server" class="t-label-1">% Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtINTERES" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">

                    <asp:Label ID="lblFPRIMA" runat="server" class="t-label-1">Dt Pri Amort:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFPRIMA" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTPRICE" runat="server" class="t-label-1">Pricing:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTPRICE" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblINDEXANTE" runat="server" class="t-label-1">Index:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtINDEXANTE" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNDIASINDX" runat="server" class="t-label-1">Num Dias Index:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNDIASINDX" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTSPREAD" runat="server" class="t-label-1">Spread:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTSPREAD" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCDAYCNT" runat="server" class="t-label-1">Conta. Dias:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCDAYCNT" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:TextBox ID="txtDDAYCNT" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQDIASMESCJ" runat="server" class="t-label-1">CDias Livre:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQDIASMESCJ" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:TextBox ID="txtCBASECJ" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblZJURANO" runat="server" class="t-label-1">Nº Juro/Ano:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbZJURANO" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTJURO7" runat="server" class="t-label-1">%Juro Anter:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTJURO7" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFPRIMC" runat="server" class="t-label-1">Dt Prim Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFPRIMC" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDTJUROSP" runat="server" class="t-label-1">Dt. Prox. Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDTJUROSP" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDTJUROSA" runat="server" class="t-label-1">Dt. Utl. Juros:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDTJUROSA" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCUPCORRC" runat="server" class="t-label-1">Juros Corrid:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCUPCORRC" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblJURODLIQ" runat="server" class="t-label-1">Juro Diário:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtJURODLIQ" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPRECOEMI" runat="server" class="t-label-1">Preço Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPRECOEMI" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDESDE" runat="server" class="t-label-1">Qtd. Emitida:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDESDE" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblLOTEMIN" runat="server" class="t-label-1">Lote Minimo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLOTEMIN" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCODBAN" runat="server" class="t-label-1">Banco Lider:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCODBAN" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCRATFITCH" runat="server" class="t-label-1">Rating Fitch:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCRATFITCH" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCRATMOODY" runat="server" class="t-label-1">Rating Moody:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCRATMOODY" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCRATSP" runat="server" class="t-label-1">Rating S&P:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCRATSP" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSENIOR" runat="server" class="t-label-1">Senioridade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCSENIOR" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIALAVANC" runat="server" class="t-label-1">Alavancagem:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIALAVANC" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCTIPMERC" runat="server" class="t-label-1">Tipo de Mercado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCTIPMERC" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblISUBJACENT" runat="server" class="t-label-1">Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbISUBJACENT" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCMIC" runat="server" class="t-label-1">Mercado de Admissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMIC" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <%--REVER ESTE BLOCO --%>
            <%-- TODO --%>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="CondReembolso" runat="server" class="t-label-1">Condições de Reembolso:</asp:Label>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICONDMAT" runat="server" class="t-label-1">MAT</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICONDMAT" runat="server" class="t-field-14" maxlength="9"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICONDCAL" runat="server" class="t-label-1">CAL</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICONDCAL" runat="server" class="t-field-14" maxlength="9"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICONDPUT" runat="server" class="t-label-1">PUT</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICONDPUT" runat="server" class="t-field-14" maxlength="9"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICONDRAA" runat="server" class="t-label-1">RAA</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICONDRAA" runat="server" class="t-field-14" maxlength="9"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblICONDOUT" runat="server" class="t-label-1">OUT</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbICONDOUT" runat="server" class="t-field-14" maxlength="9"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label1" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtINDPFC" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="btnDadsCOmpWarra" class="titleAccordion-plus" runat="server" onserverclick="btnDadsCOmpWarra_Click">Dados Complementares WARRANTS DESTACADOS / V.M.CONVERTÍVEIS</button>
    <asp:Panel ID="pnlDadsCOmpWarraContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDFEADMISS" runat="server" class="t-label-1">Dt. ADM Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDFEADMISS" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDFEULTNEG" runat="server" class="t-label-1">Dt. Ult. Negoc:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDFEULTNEG" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDZEXERCANO" runat="server" class="t-label-1">Nº Exerc/Ano:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbWDZEXERCANO" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDFEVENCIM" runat="server" class="t-label-1">Dt. Prim. Exer.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDFEVENCIM" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDEXERCP" runat="server" class="t-label-1">Dt. Pro. Exer.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDEXERCP" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDEXERCA" runat="server" class="t-label-1">Dt. Ult. Exer.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDEXERCA" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDZEXERC" runat="server" class="t-label-1">Num. Exercic.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDZEXERC" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDPERCENT" runat="server" class="t-label-1">Factor Conv.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDPERCENT" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDNOVCODVA" runat="server" class="t-label-1">Activo Subja.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDNOVCODVA" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:TextBox ID="txtWDNOMBREV" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDSTRIKE" runat="server" class="t-label-1">Preço Exerci.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtWDSTRIKE" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblWDARREDOD" runat="server" class="t-label-1">Tipo Arredon.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbWDARREDOD" runat="server" class="t-field-14"></select>
                </td>
            </tr>


        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="btnDadsCompWarrAuto" class="titleAccordion-plus" runat="server" onserverclick="btnDadsCompWarrAUto_Click">Dados Complementares WARRANTS AUTÓNOMOS / WARRANTS ESTRUTURADOS</button>
    <asp:Panel ID="pnlDadsCompWarrAUtoContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPOWAR" runat="server" class="t-label-1">Tipo Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbITIPOWAR" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIESTWAR" runat="server" class="t-label-1">Estilo Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIESTWAR" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label3" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITIPEXER" runat="server" class="t-label-1">Tipo Exercicio:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbITIPEXER" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFEADMISS" runat="server" class="t-label-1">Dt. Adm. Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFEADMISS" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFEULTNEG" runat="server" class="t-label-1">Dt. Ultima Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFEULTNEG" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblFEVENCIM" runat="server" class="t-label-1">Dt de Vencimento:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFEVENCIM" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPARIDADE" runat="server" class="t-label-1">Paridade War:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPARIDADE" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQLOTEMIN" runat="server" class="t-label-1">Lote Min. Exe.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQLOTEMIN" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNACTSUBJ" runat="server" class="t-label-1">Ind. Activo Subj.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNACTSUBJ" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <select id="cmbIACTSUBJ" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">

                    <asp:Label ID="lblCMOESUBJ" runat="server" class="t-label-1">Moeda Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMOESUBJ" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCTIPOLIQ" runat="server" class="t-label-1">Tipo Liquida:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCTIPOLIQ" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblSTRIKE" runat="server" class="t-label-1">Preço Exerci.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSTRIKE" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNEMITEN" runat="server" class="t-label-1">Nome do Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNEMITEN" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />



    <button id="btnDadsComp" class="titleAccordion-plus" runat="server" onserverclick="btnDadsComp_Click">Dados Complementares DERIVADOS/FUTUROS</button>
    <asp:Panel ID="pnlDadsCompContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTFACTOR" runat="server" class="t-label-1">Paridade/QTD.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTFACTOR" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIACTSUB" runat="server" class="t-label-1">Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIACTSUB" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGTFACTOR" runat="server" class="t-label-1">Nome Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGTFACTOR" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTEXTOL" runat="server" class="t-label-1">Texto Livre:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTEXTOL" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>
    <br />
    <br />


    <button id="btnDadosTec" class="titleAccordion-plus" runat="server" onserverclick="btnDadosTec_Click">Dados Técnicos espécie</button>
    <asp:Panel ID="pnlDadosTecContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrincing" runat="server" class="t-label-1">Princing:</asp:Label>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPROVIDER" runat="server" class="t-label-1">Provider:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPROVIDER" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblSOURCE" runat="server" class="t-label-1">Source:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSOURCE" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>



    <br />
    <br />

    <button id="btnDadsCompEle" class="titleAccordion-plus" runat="server" onserverclick="btnDadsCompEle_Click">Dados Complementares ELEGIBILIDADE</button>
    <asp:Panel ID="pnlDadsCompEleContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCELEGIB1" runat="server" class="t-field-14">1. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCELEGIB1" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label4" runat="server" class="t-field-14"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label5" runat="server" class="t-field-14"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCELEGIB2" runat="server" class="t-field-14">2. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCELEGIB2" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCELEGIB3" runat="server" class="t-field-14">3. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCELEGIB3" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCELEGIB4" runat="server" class="t-field-14">4. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCELEGIB4" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCELEGIB5" runat="server" class="t-field-14">5. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCELEGIB5" runat="server" class="t-field-14"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="btnDadosCompImp" class="titleAccordion-plus" runat="server" onserverclick="btnDadosCompImp_Click">Dados Complementares Impostos FTT</button>
    <asp:Panel ID="pnlDadosCompImpContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIIMPFTT" runat="server" class="col-xs-6 control-label">Cobrar Imposto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIIMPFTT" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCODFTT" runat="server" class="t-label-1">Referência FIT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCODFTT" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                    <select id="cmbCSUBFAM" runat="server" cssclass="t-field-14"></select>
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
                    <asp:Label ID="lblCZONGEOG" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCZONGEOG" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCONOFFREGU" runat="server" class="t-label-1">OnOff/Regular:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCONOFFREGU" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCIPAD" runat="server" class="t-label-1">iPAD:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCIPAD" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCNIVELRISCO" runat="server" class="t-label-1">Nivel Risco:</asp:Label>
                </td>
                <td class="t-table-col-2">
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
                    <select id="cmbCCLASSRISC" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDTACTIVA" runat="server" class="t-label-1">Data de Activação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="t-field-14"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIRECOMEND" runat="server" class="t-label-1">Produto recomendado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIRECOMEND" runat="server" CssClass="t-field-14"></asp:TextBox>

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
</asp:Content>
