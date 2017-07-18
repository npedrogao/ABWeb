﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AP34.aspx.cs" Inherits="ABWebCatalogue.Site.AP34" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="title">
        <asp:Label ID="lblTransaction" runat="server" CssClass="titleGrayBold"></asp:Label>
    </div>
    <asp:Panel ID="pnlContent" runat="server">
        <table width="100%" cellpadding="0" cellspacing="0" class="t-table-1">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label8" runat="server" class="t-label-1">Código de Produto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodProduto" runat="server" MaxLength="2" CssClass="t-field-1"></asp:TextBox>
                    <asp:TextBox ID="txtCodProdutoDesc" runat="server" MaxLength="30" ReadOnly="true" CssClass="t-field-1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label9" runat="server" class="t-label-1">Código do SubProduto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodSubProduto" runat="server" MaxLength="2" CssClass="t-field-1"></asp:TextBox>
                    <asp:TextBox ID="txtCodSubProdutoDesc" runat="server" MaxLength="30" CssClass="t-field-1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label6" runat="server" class="t-label-1">Classe:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClasse" runat="server" MaxLength="3" CssClass="t-field-1"></asp:TextBox>
                    <asp:TextBox ID="txtClasseDesc" runat="server" MaxLength="30" CssClass="t-field-1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label7" runat="server" class="t-label-1">Moeda:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoeda" runat="server" MaxLength="3" CssClass="t-field-1"></asp:TextBox>
                    <asp:TextBox ID="txtMoeda2" runat="server" MaxLength="30" CssClass="t-field-1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label5" runat="server" class="t-label-1">Estado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlEstado" CssClass="t-field-1" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtEstadoDesc" runat="server" MaxLength="30" CssClass="t-field-1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label4" runat="server" class="t-label-1">Data de Início:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox runat="server" ID="txtDataInicio" ReadOnly="true" CssClass="t-field-1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label3" runat="server" class="t-label-1">Data de Fim:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox runat="server" ID="txtDataFim" ReadOnly="true" CssClass="t-field-1"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />


    <button id="btnCatGerais" class="titleAccordion" runat="server" value="Características Gerais" onserverclick="btnCaracGerais_Click"></button>
    <asp:Panel ID="pnlCatGeraisContent" runat="server" Visible="false">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label2" runat="server" class="t-label-1">Prazo Absoluto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <%--<select id="select" runat="server"></select>--%>
                    <asp:DropDownList ID="ddlPrazoAbsoluto" CssClass="t-field-1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label1" runat="server" class="t-label-1">Prod/SubP Contab:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtProdSubPContab" runat="server" MaxLength="1" CssClass="t-field-1"></asp:TextBox>
                    <asp:TextBox ID="txtProdSubPContab2" runat="server" MaxLength="1" CssClass="t-field-1"></asp:TextBox>
                    <asp:TextBox ID="txtProdSubPContabDesc" runat="server" MaxLength="1" CssClass="t-field-1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbFinalidade" runat="server" class="col-xs-4 t-label-1">Finalidade Bankinter:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFinalidade" runat="server" CssClass="t-field-1" MaxLength="3"></asp:TextBox>
                    <asp:TextBox ID="txtFinalidadeDesc" runat="server" CssClass="t-field-1" MaxLength="30"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDeclaracao" runat="server" class="col-xs-4 t-label-1">Declaração IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlDeclaracao" CssClass="t-field-1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRepTranches" runat="server" class="col-xs-4 t-label-1">Rep. Tranches:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlRepTranches" CssClass="t-field-1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCodAgregado" runat="server" class="col-xs-4 t-label-1">Cód. Agregado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodAgregado" runat="server" CssClass="t-field-1" MaxLength="2"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnRenovacoes" class="titleAccordion" runat="server" value="Renovações" onserverclick="btnRenovacoes_Click"></button>
    <asp:Panel ID="pnlRenovacoesContent" runat="server">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRenovacoes" runat="server" class="t-label-1">Renovações Automáticas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlRenovacoes" CssClass="t-field-1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNumRenovacoes" runat="server" class="t-label-1">Nr. Máximo Renovações:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNumRenovacoes" runat="server" CssClass="t-field-1" MaxLength="4"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnOperacoes" class="titleAccordion" runat="server" value="Operações" onserverclick="btnOperacoes_Click"></button>
    <asp:Panel ID="pnlOperacoesContent" runat="server">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMobilizacaoAntecipada" runat="server" class="t-label-1">Mobilização Antecipada:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlMobilizacaoAntecipada" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbReforcoAutorizado" runat="server" class="t-label-1">Reforço Autorizado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlReforcoAutorizado" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDiasNUteis" runat="server" class="t-label-1">Dias Não Úteis:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="DDLDiasNUteis" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDiasAntecip" runat="server" class="t-label-1">Dias Antecipação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="DDLDiasAntecip" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnDebito" class="titleAccordion" runat="server" value="Débito" onserverclick="btnDebito_Click"></button>
    <asp:Panel ID="pnlDebitoContent" runat="server">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDebito" runat="server" class="t-label-1">Débito forçado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlDebito" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNumTentativas" runat="server" class="t-label-1">Nr. Tentativas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNumTentativas" runat="server" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnValidacao" class="titleAccordion" runat="server" value="Validação Cliente" onserverclick="btnValidacao_Click"></button>
    <asp:Panel ID="pnlValidacaoContent" runat="server">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbProdNCliente" runat="server" class="t-label-1">Prod. Novo Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:DropDownList ID="ddlProdNCliente" CssClass="t-field-14" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNumDiasCliente" runat="server" class="t-label-1">Nr. Dias Novo Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNumDiasCliente" runat="server" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCampanahExcepcao" runat="server" class="t-label-1">Campanha Excepção:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCampanhaExcepcao" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                    <asp:TextBox ID="txtCampanhaExcepcaoDesc" runat="server" CssClass="t-field-14" MaxLength="30"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
   
    <br />
    <br />

    <button id="btnCrossSelling" class="titleAccordion" runat="server" value="Cross Selling" onserverclick="btnCrossSelling_Click"></button>
    <asp:Panel ID="pnlCrossSellingContent" runat="server">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbConstituicao" runat="server" class="t-label-1">Constituição:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtConstituicao" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                    <asp:TextBox ID="txtConstituicaoDesc" runat="server" CssClass="t-field-14" MaxLength="30"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVencimento" runat="server" class="t-label-1">Vencimento:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtVencimento" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                    <asp:TextBox ID="txtVencimentoDesc" runat="server" CssClass="t-field-14" MaxLength="30"></asp:TextBox></td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="btnAtributoInvestimento" class="titleAccordion" runat="server" value="Atributos de Investimento" onserverclick="btnAtributoInvestimento_Click"></button>
    <asp:Panel ID="pnlAtributoInvestimentoContent" runat="server">
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSubFamilia" runat="server" class="t-label-1">SubFamília:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtSubFamiliaDesc" runat="server" CssClass="t-field-14"></asp:TextBox></td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLiquidez" runat="server" class="t-label-1">Liquidez:</asp:Label></td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtLiquidez" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-3">
                    <asp:Label ID="lbComplexidade" runat="server" class="t-label-1">Complexidade:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtComplexidade" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbHorizonteTemporal" runat="server" class="t-label-1">Horizonte Temporal:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtHorizonteTemporal" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbZonaGeografica" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtZonaGeografica" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                    <textarea id="txtDescricao" runat="server" style="resize: none" class="t-field-1 " cols="20" rows="2"></textarea>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCatClass" runat="server" class="col-xs-4 t-label-1">Cat./Class.activ.:</asp:Label>
                </td>
                <td class="t-table-col-3">
                    <asp:TextBox ID="txtCatClass" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCatClassDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:TextBox runat="server" ID="txtDataActivacao" ReadOnly="true" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    <div>
        <hr class="hr" />
    </div>
    <br />
    <div class="row form-group">
        <div class="col-xs-12">
            <div class="pull-right">
                <input type="button" id="btnClear" runat="server" class="btn btn-default" value="Limpar" />
                <input type="button" id="btnSave" runat="server" class="btn btn-btn btn-default" value="Guardar" onserverclick="btnSave_Click" />
            </div>
        </div>
    </div>

</asp:Content>
