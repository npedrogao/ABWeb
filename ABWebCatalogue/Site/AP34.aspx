<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AP34.aspx.cs" Inherits="ABWebCatalogue.Site.AP34" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">

    <%--s<div class="title">
        <asp:Label ID="lblTransaction" runat="server" CssClass="titleGrayBold"></asp:Label>
    </div>--%>
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
                    <select id="cmbGProduto" runat="server" class="t-field-15"></select>
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
                    <asp:TextBox ID="txtGClaPrz" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCMoeda" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMoeda" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtGMoeda" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCEstado" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbCEstado" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtGEstado" runat="server" MaxLength="30" CssClass="t-field-15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDIniVal" runat="server" class="t-label-1">Data de Início:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox runat="server" ID="txtDIniVal" ReadOnly="true" CssClass="t-field-6"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblDFimVal" runat="server" class="t-label-1">Data de Fim:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox runat="server" ID="txtDFimVal" ReadOnly="true" CssClass="t-field-6"></asp:TextBox>
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
                    <asp:Label ID="lblIPrzAbs" runat="server" class="t-label-1">Prazo Absoluto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <%--<select id="select" runat="server"></select>--%>
                    <asp:DropDownList ID="cmbIPrzAbs" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCProdCnt" runat="server" class="t-label-1">Prod/SubP Contab:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCProdCnt" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <asp:TextBox ID="txtCProdCnt2" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <asp:TextBox ID="txtCSProCnt" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCFinBb" runat="server" class="t-label-1">Finalidade Bankinter:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCFinBb" runat="server" CssClass="t-field-6" MaxLength="3"></asp:TextBox>
                    <asp:TextBox ID="txtGFinBb" runat="server" CssClass="t-field-6" MaxLength="30"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIIrs" runat="server" CssClass="t-label-1">Declaração IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbIIrs" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblITranche" runat="server" CssClass="t-label-1">Rep. Tranches:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbITranche" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCAgregDp" runat="server" CssClass="t-label-1">Cód. Agregado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCAgregDp" runat="server" CssClass="t-field-6" MaxLength="2"></asp:TextBox>
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
                    <asp:Label ID="lblQMAXREN" runat="server" class="t-label-1">Nr. Máximo Renovações:</asp:Label>
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
                    <asp:Label ID="lblILevAnt" runat="server" class="t-label-1">Mobilização Antecipada:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbILevAnt" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIAutRef" runat="server" class="t-label-1">Reforço Autorizado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbIAutRef" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblIDiaNUt" runat="server" class="t-label-1">Dias Não Úteis:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbIDiaNUt" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQDiasAnt" runat="server" class="t-label-1">Dias Antecipação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbQDiasAnt" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
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
                    <asp:Label ID="lblIDebFor" runat="server" class="t-label-1">Débito forçado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbIDebFor" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQTentDeb" runat="server" class="t-label-1">Nr. Tentativas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQTentDeb" runat="server" CssClass="t-field-6"></asp:TextBox>
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
                    <asp:Label ID="lblIPrClNew" runat="server" class="t-label-1">Prod. Novo Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="cmbIPrClNew" CssClass="t-field-6" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblQDiasNCli" runat="server" class="t-label-1">Nr. Dias Novo Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQDiasNCli" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCampNet" runat="server" class="t-label-1">Campanha Excepção:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCampNet" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <asp:TextBox ID="txtGCampNet" runat="server" CssClass="t-field-6"></asp:TextBox>
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
                    <asp:Label ID="lblCCxsCons" runat="server" class="t-label-1">Constituição:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCxsCons" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <asp:TextBox ID="txtGCxsCons" runat="server" CssClass="t-field-6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblCCxsVenc" runat="server" class="t-label-1">Vencimento:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCCxsVenc" runat="server" CssClass="t-field-6"></asp:TextBox>
                    <asp:TextBox ID="txtGCxsVenc" runat="server" CssClass="t-field-6"></asp:TextBox>
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
                    <asp:Label ID="lbSubFamilia" runat="server" class="t-label-1">SubFamília:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtSubFamiliaDesc" runat="server" CssClass="t-field-15"></asp:TextBox></td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLiquidez" runat="server" class="t-label-1">Liquidez:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtLiquidez" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbComplexidade" runat="server" class="t-label-1">Complexidade:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtComplexidade" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbHorizonteTemporal" runat="server" class="t-label-1">Horizonte Temporal:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtHorizonteTemporal" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbZonaGeografica" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtZonaGeografica" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbOnOffRegular" runat="server" class="t-label-1">OnOff/Regular:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtOnOffRegular" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIpad" runat="server" class="t-label-1">iPAD:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtIpad" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNivelRisco" runat="server" class="t-label-1">Nivel Risco:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtNivelRisco" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVaR" runat="server" class="t-label-1">VaR:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtVaR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbData" runat="server" class="t-label-1">Data:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox runat="server" ID="txtData" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDescricao" runat="server" class="t-label-1">Descrição:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <textarea id="txtDescricao" runat="server" style="resize: none" class="t-field-10" cols="20" rows="2"></textarea>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCatClass" runat="server" class="t-label-1">Cat./Class.activ.:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCatClass" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCatClassDesc" runat="server" CssClass="t-field-15"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSolicitarClassRisco" runat="server" class="t-label-1">Solicitar classificação de Risco:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:DropDownList ID="ddlSolicitarClassRisco" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDataActivacao" runat="server" class="t-label-1">Data de Activação:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox runat="server" ID="txtDataActivacao" CssClass="t-field-14"></asp:TextBox>
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
