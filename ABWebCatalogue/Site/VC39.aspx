<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VC39.aspx.cs" Inherits="ABWebCatalogue.Site.VC39" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="titleAccordion">
        <asp:Label ID="lblTransaction" runat="server"> AP34C </asp:Label>
    </div>

    <asp:Panel ID="pnlContent" runat="server">
        <table width="100%" cellpadding="0" cellspacing="0" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCPRODUTO" runat="server" class="t-label-1">Produto</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPRODUTO" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCSUBPROD" runat="server" class="t-label-1">Sub Produto</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSUBPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="GSUBPROD" runat="server" class="t-label-1">Nome</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGSUBPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <div class="divCollapseLeft">
            <button id="btnCloseAll" class="btnCollapse" runat="server" onserverclick="btnCloseAll_Click">Fechar todos</button>
            <button id="btnOpenAll" class="btnCollapse" runat="server" onserverclick="btnOpenAll_Click">Abrir todos</button>
        </div>
    </asp:Panel>

    <br />
    <br />
    <button id="btnParametrosGerais" class="titleAccordion-plus" runat="server" onserverclick="btnParametrosGerais_Click">Parametros Gerais</button>
    <asp:Panel ID="pnlParametrosGeraisContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCTIPOSG" runat="server" class="t-label-1">Tipo Produto</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTIPOSG" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCTIPOSG" runat="server" class="t-field-14"></select>
                    <%--<asp:TextBox ID="txtGtip" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCMOEDA" runat="server" class="t-label-1">Moeda</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMOEDA" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCMOEDA" runat="server" class="t-field-14"></select>
                    <%--<asp:TextBox ID="txtGmoe" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCBALCAO1" runat="server" class="t-label-1">Conta Produto</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALCAO1" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtNUCTA" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCAPOANO" runat="server" class="t-label-1">CAPOANO</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCAPOANO" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblZAPOLICE" runat="server" class="t-label-1">ZAPOLICE</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtZAPOLICE" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-2">
                    <label id="lblCCERTIF" runat="server" class="t-label-1">CCERTIF</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCERTIF" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCCERANO" runat="server" class="t-label-1">CCERANO</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCERANO" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCBALSACO" runat="server" class="t-label-1">Conta IT'S</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBALSACO" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCCTASACO" runat="server" CssClass="t-field-14"></asp:TextBox>

                </td>
                <td class="t-table-col-1">
                    <label id="lblCBANNIB" runat="server" class="t-label-1">NIB da Conta GV</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCBANNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCBALNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCNUMNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCDIGNIB" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblQBASCALC" runat="server" class="t-label-1">Base Cálculo</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQBASCALC" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCSEQUEN" runat="server" class="t-label-1">Base Cálculo</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSEQUEN" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblQDECIUPS" runat="server" class="t-label-1">Decimais UP'S</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQDECIUPS" runat="server" CssClass="t-field-14"></asp:TextBox>

                </td>
                <td class="t-table-col-1">
                    <label id="lblQALTMOD" runat="server" class="t-label-1">Número de Alterações</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQALTMOD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblQPROPVAL" runat="server" class="t-label-1">Validade Propostas:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQPROPVAL" runat="server" CssClass="t-field-14"></asp:TextBox>Dias
                </td>
                <td class="t-table-col-1">
                    <label id="lblCTIPODIAS" runat="server" class="t-label-1">Dias úteis:</label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCTIPODIAS" runat="server" class="t-field-14"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnDuracoes" class="titleAccordion-plus" runat="server" onserverclick="btnDuracoes_Click">Durações</button>
    <asp:Panel ID="pnlDuracoes" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblQANOMIN" runat="server" class="t-label-1">Minimo:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQANOMIN" runat="server" CssClass="t-field-14"></asp:TextBox>Anos
                    <asp:TextBox ID="txtQMINDIA" runat="server" CssClass="t-field-14"></asp:TextBox>Dias
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <label id="lblQANOMAX" runat="server" class="t-label-1">Maximo:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQANOMAX" runat="server" CssClass="t-field-14"></asp:TextBox>Anos
                    <asp:TextBox ID="txtQMAXDIA" runat="server" CssClass="t-field-14"></asp:TextBox>Dias
                </td>
                <td class="t-table-col-1">
                    <label class="col-xs-6 control-label">Data De Vencimento:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDVENCIM" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnTaxasEncargos" class="titleAccordion-plus" runat="server" onserverclick="btnTaxasEncargos_Click">Taxas e Encargos</button>
    <asp:Panel ID="pnlTaxasEncargos" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblTBONEMP" runat="server" class="t-label-1">Tx.Bonific.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTBONEMP" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblTCOMISS" runat="server" class="t-label-1">Tx.Comissão:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTCOMISS" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblTPARRESG" runat="server" class="t-label-1">Tx.Par.Resg.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTPARRESG" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblTGARANT" runat="server" class="t-label-1">Tx.Garant.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTGARANT" runat="server" CssClass="t-field-14"></asp:TextBox>%
                        <span class="input-group-addon">%</span>
                </td>
                <td class="t-table-col-1">
                    <label id="lblTPENTRFO" runat="server" class="t-label-1">Tx.Pen.Trfo:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTPENTRFO" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblMRESGMIN" runat="server" class="t-label-1">Vl.Resg.Min.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMRESGMIN" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnAtribInvest" class="titleAccordion-plus" runat="server" onserverclick="btnAtribInvest_Click">Atributos de Investimento</button>
    <asp:Panel ID="pnlAtribInvest" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCSUBFAM" class="t-label-1">SubFamilia:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCSUBFAM" runat="server" class="t-field-15"></select>
                    <%--    <asp:TextBox ID="txtCSUBFAMDesc" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCLIQUIDPROD" class="t-label-1">Liquidez:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCCOMPLEXINV" class="t-label-1">Complexidade:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCOMPLEXINV" runat="server" class="t-field-15"></select>
                    <%--<asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCHORIZON" class="t-label-1">Horizonte Temporal:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCHORIZON" runat="server" class="t-field-15"></select>
                    <%--<asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCZONGEOG" class="t-label-1">Zona Geográfica:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCZONGEOG" runat="server" class="t-field-15"></select>
                    <%--<asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>

                <td class="t-table-col-1">
                    <label id="lblCONOFFREGU" class="t-label-1">OnOff/Regular:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lbCIPAD" class="t-label-1">iPAD:</label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCIPAD" runat="server" class="t-field-14"></select>
                </td>

                <td class="t-table-col-1">
                    <label id="lblCNIVELRISCO" class="t-label-1">Nivel Risco:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <label id="lbMVAR" class="t-label-1">VaR:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblDVAR" class="t-label-1">Data:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblGOBSRV" class="t-label-1">Descrição:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGOBSRV" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCCLAACTI" class="t-label-1">Cat./Class.activ.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCLAACTI" runat="server" class="t-field-14"></select>
                    <%--<asp:TextBox ID="txtCatClassActivDesc" runat="server" CssClass="t-field-14"></asp:TextBox>--%>
                </td>
                <td class="t-table-col-1">
                    <label id="lblCCLASSRISC" class="col-xs-8 control-label">Solicitar classificação de Risco:</label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCCLASSRISC" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <label id="lblDTACTIVA" class="col-xs-6 control-label">Data de Activação:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDTACTIVA" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnIncentivos" class="titleAccordion-plus" runat="server" onserverclick="btnIncentivos_Click">Incentivos</button>
    <asp:Panel ID="pnlIncentivos" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblPCOMDIS" runat="server" class="col-xs-6 control-label">Comissão de Distribuição:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPCOMDIS" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnTomadorPessoaSeguras" class="titleAccordion-plus" runat="server" onserverclick="btnTomadorPessoaSeguras_Click">Tomador e Pessoas Seguras</button>
    <asp:Panel ID="pnlTomadorPessoaSeguras" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblQIDADMIN" runat="server" class="t-label-1">Idade Minima:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQIDADMIN" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblQIDADMAX" class="t-label-1">Idade Máxima:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQIDADMAX" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblQIDADDEF" runat="server" class="t-label-1">Idade Default:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQIDADDEF" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <label id="lblQIDADSUB" runat="server" class="t-label-1">Idade Max. Subs.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQIDADSUB" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblNPESSSEG" runat="server" class="t-label-1">Nº Pessoas Seguras:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNPESSSEG" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnResseguro" class="titleAccordion-plus" runat="server" onserverclick="btnResseguro_Click">Resseguro</button>
    <asp:Panel ID="pnlResseguro" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblCTRATADO" runat="server" class="t-label-1">Cód. Tratado:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTRATADO" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnCustos" class="titleAccordion-plus" runat="server" onserverclick="btnCustos_Click">Custos</button>
    <asp:Panel ID="pnlCustos" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label id="lblMACTA" runat="server" class="t-label-1">Acta:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMACTA" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
                <td class="t-table-col-1">
                    <label id="lblMCAPOL" class="t-label-1">Apólice:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMCAPOL" runat="server" CssClass="t-field-14"></asp:TextBox>%
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnCoperacs" class="titleAccordion-plus" runat="server" onserverclick="btnCoperacs_Click">Coperacs</button>
    <asp:Panel ID="pnlCoperacs" runat="server" Visible="false">
        <br />
        <table class="t-table-t">
            <tr>
                <td></td>
                <td class="t-label-c">
                    <label>PREM</label>
                </td>
                <td class="t-label-c">
                    <label>RESG.T</label>
                </td>
                <td class="t-label-c">
                    <label>RESG.P</label>
                </td>
                <td class="t-label-c">
                    <label>RED.T</label>
                </td>
                <td class="t-label-c">
                    <label>RED.P</label>
                </td>
                <td class="t-label-c">
                    <label>SIN</label>
                </td>
                <td class="t-label-c">
                    <label>TRANSFO</label>
                </td>
                <td class="t-label-c">
                    <label>TRANSFE</label>
                </td>
            </tr>
            <tr>
                <td class="t-label-r">
                    <label id="Label1" runat="server">CLI:</label></td>
                <td>
                    <asp:TextBox ID="txtCPREMCLI" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCRESGTCL" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCRESGPCL" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCREDTCL" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCREDPCL" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCSINCLI" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCTRFODEB" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCTRFECLI" runat="server" class="t-field-t"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="t-label-r">
                    <label id="Label2" runat="server">SOC:</label></td>
                <td>
                    <asp:TextBox ID="txtCPREMSOC" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCRESTSOC" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCRESPSOC" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCREDTSOC" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCREDPSOC" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCSINSOC" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCTRFOCRE" runat="server" class="t-field-t"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtCTRFESOC" runat="server" class="t-field-t"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="t-table-t">
            <tr>
                <td class="t-label-r">
                    <label id="lblTPARESG1" runat="server">Tx.Penalização:</label>
                </td>
                <td>
                    <asp:TextBox ID="txtTPARESG1" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">%</span>
                </td>
                <td>
                    <asp:TextBox ID="txtTPARESG2" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">%</span>
                </td>
                <td>
                    <asp:TextBox ID="txtTPARESG3" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">%</span>
                </td>
                <td>
                    <asp:TextBox ID="txtTPARESG4" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">%</span>
                </td>
                <td>
                    <asp:TextBox ID="txtTPARESG5" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">%</span>
                </td>
                <td>
                    <asp:TextBox ID="txtTPARESG6" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">%</span>
                </td>
            </tr>
            <tr>
                <td class="t-label-r">
                    <label id="lblQANORES1" runat="server">Até:</label>
                </td>
                <td>
                    <asp:TextBox ID="txtQANORES1" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">ºAno</span>
                </td>
                <td>
                    <asp:TextBox ID="txtQANORES2" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">ºAno</span>
                </td>
                <td>
                    <asp:TextBox ID="txtQANORES3" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">ºAno</span>
                </td>
                <td>
                    <asp:TextBox ID="txtQANORES4" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">ºAno</span>
                </td>
                <td>
                    <asp:TextBox ID="txtQANORES5" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">ºAno</span>
                </td>
                <td>
                    <asp:TextBox ID="txtQANORES6" runat="server" class="t-field-t"></asp:TextBox>
                    <span class="span">ºAno</span>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="t-table-dt">
            <tr>
                <td class="t-label-r">
                    <label id="lblDPRESG1" runat="server">Data:</label>
                </td>
                <td>
                    <asp:TextBox ID="txtDPRESG1" runat="server" class="t-field-t"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtDPRESG2" runat="server" class="t-field-t"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtDPRESG3" runat="server" class="t-field-t"></asp:TextBox>
                </td>
            </tr>
        </table>

    </asp:Panel>

    <br />
    <br />
    <button id="btnContabilidade" class="titleAccordion-plus" runat="server" onserverclick="btnContabilidade_Click">Contabilidade</button>
    <asp:Panel ID="pnlContabilidade" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">COPERSG.:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCopersg" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">Prod.c/ PPP:</label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCopersgppp" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">COPERSG PPP:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIcobppp" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <button id="btnFundoAssociado" class="titleAccordion-plus" runat="server" onserverclick="btnFundoAssociado_Click">Fundo Associado</button>
    <asp:Panel ID="pnlFundoAssociado" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <label class="t-label-1">SubProduto:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSubpfund" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <label class="t-label-1">Conta:</label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCbalfund" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCtafundo" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

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
