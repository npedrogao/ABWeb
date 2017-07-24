<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AP34.aspx.cs" Inherits="ABWebCatalogue.Site.AP34" %>

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
                    <asp:Label ID="lblCProduto" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCProduto" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCPRODUTO" runat="server" class="t-field-15"></select>
                    <%--<asp:TextBox ID="txtGProduto" runat="server" CssClass="t-field-15"></asp:TextBox>--%>

                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCSubProd" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCSubProd" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbGSubProd" runat="server" class="t-field-15"></select>
                    <%--<asp:TextBox ID="txtGSubProd" runat="server" CssClass="t-field-15"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCClaPrz" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCClaPrz" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCLAPRZ" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCMOEDA" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMOEDA" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCMOEDA" runat="server" class="t-field-15"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblGESTADO" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCEstado" runat="server" class="t-field-15"></select>
                    <asp:TextBox ID="txtGESTADO" runat="server" MaxLength="30" CssClass="t-field-15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDINIVAL" runat="server" class="t-label-1">Data de Início:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox runat="server" ID="txtDINIVAL" ReadOnly="true" CssClass="t-field-6"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDFIMVAL" runat="server" class="t-label-1">Data de Fim:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox runat="server" ID="txtDFIMVAL" ReadOnly="true" CssClass="t-field-6"></asp:TextBox>
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
    <button id="btnCaracGerais" class="titleAccordion-plus" runat="server" onserverclick="btnCaracGerais_Click">Caracteristicas Gerais</button>

    <asp:Panel ID="pnlCatGeraisContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIPRZABS" runat="server" class="t-label-1">Prazo Absoluto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIPRZABS" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCPRODCNT" runat="server" class="t-label-1">Prod/SubP Contab:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCPRODCNT" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <asp:TextBox ID="txtCSPROCNT" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <select id="cmbCPRODCNT" runat="server" class="t-field-15"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCFINBB" runat="server" class="t-label-1">Finalidade Bankinter:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCFINBB" runat="server" CssClass="t-field-6" MaxLength="3"></asp:TextBox>
                    <select id="cmbCFINBB" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIIRS" runat="server" CssClass="t-label-1">Declaração IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIIRS" runat="server" class="t-field-15"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITRANCHE" runat="server" CssClass="t-label-1">Rep. Tranches:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtITRANCHE" runat="server" CssClass="t-field-6" MaxLength="2"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCAGREGDP" runat="server" CssClass="t-label-1">Cód. Agregado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCAGREGDP" runat="server" CssClass="t-field-6" MaxLength="2"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnRenovacoes" class="titleAccordion-plus" runat="server" onserverclick="btnRenovacoes_Click">Renovações</button>

    <asp:Panel ID="pnlRenovacoesContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIRenovac" runat="server" class="t-label-1">Renovações Automáticas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbIRenovac" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbQMAXREN" runat="server" class="t-label-1">Nr. Máximo Renovações:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQMAXREN" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnOperacoes" class="titleAccordion-plus" runat="server" onserverclick="btnOperacoes_Click">Operações</button>

    <asp:Panel ID="pnlOperacoesContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblILEVANT" runat="server" class="t-label-1">Mobilização Antecipada:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TXTILEVANT" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIAUTREF" runat="server" class="t-label-1">Reforço Autorizado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIAUTREF" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIDiaNUt" runat="server" class="t-label-1">Dias Não Úteis:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIDiaNUt" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQDiasAnt" runat="server" class="t-label-1">Dias Antecipação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbQDiasAnt" runat="server" class="t-field-15"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnDebito" class="titleAccordion-plus" runat="server" onserverclick="btnDebito_Click">Débito</button>

    <asp:Panel ID="pnlDebitoContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIIDEBFOR" runat="server" class="t-label-1">Débito forçado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIIDEBFOR" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQTENTDEB" runat="server" class="t-label-1">Nr. Tentativas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQTENTDEB" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnValidacao" class="titleAccordion-plus" runat="server" onserverclick="btnValidacao_Click">Validação Cliente</button>
    <asp:Panel ID="pnlValidacaoContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIPRCLNEW" runat="server" class="t-label-1">Prod. Novo Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIPRCLNEW" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQDIASNCLI" runat="server" class="t-label-1">Nr. Dias Novo Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQDIASNCLI" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCAMPNET" runat="server" class="t-label-1">Campanha Excepção:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCAMPNET" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <select id="cmbGCAMPNET" runat="server" class="t-field-15"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnCrossSelling" class="titleAccordion-plus" runat="server" onserverclick="btnCrossSelling_Click">Cross Selling</button>
    <asp:Panel ID="pnlCrossSellingContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCXSCONS" runat="server" class="t-label-1">Constituição:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCXSCONS" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <select id="cmbCCXSCONS" runat="server" class="t-field-15"></select>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCXSVENC" runat="server" class="t-label-1">Vencimento:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCXSVENC" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <select id="cmbCCXSVENC" runat="server" class="t-field-15"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnAtributoInvestimento" class="titleAccordion-plus" runat="server" onserverclick="btnAtributoInvestimento_Click">Atributos de Investimento</button>
    <asp:Panel ID="pnlAtributoInvestimentoContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCSUBFAM" runat="server" class="t-label-1">SubFamília:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCSUBFAM" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCLIQUIDPROD" runat="server" class="t-label-1">Liquidez:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCCOMPLEXINV" runat="server" class="t-label-1">Complexidade:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCCOMPLEXINV" runat="server" class="t-field-15"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCHORIZON" runat="server" class="t-label-1">Horizonte Temporal:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCHORIZON" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCZONGEOG" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <select id="cmbCZONGEOG" runat="server" class="t-field-15"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCONOFFREGU" runat="server" class="t-label-1">OnOff/Regular:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCIPAD" runat="server" class="t-label-1">iPAD:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCIPAD" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCNIVELRISCO" runat="server" class="t-label-1">Nivel Risco:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMVAR" runat="server" class="t-label-1">VaR:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtMVAR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDVAR" runat="server" class="t-label-1">Data:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox runat="server" ID="txtDVAR" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbGOBSRV" runat="server" class="t-label-1">Descrição:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox id="txtGOBSRV" runat="server" style="resize: none" class="t-field-10" cols="20" rows="2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCCLAACTI" runat="server" class="t-label-1">Cat./Class.activ.:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCCLASSRISC" runat="server" class="t-label-1">Solicitar classificação de Risco:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <select id="cmbCCLASSRISC" runat="server" class="t-field-15"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDTACTIVA" runat="server" class="t-label-1">Data de Activação:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox runat="server" ID="txtDTACTIVA" CssClass="t-field-14"></asp:TextBox>
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

</asp:Content>
