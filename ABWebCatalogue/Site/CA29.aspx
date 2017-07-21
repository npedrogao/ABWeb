<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA29.aspx.cs" Inherits="ABWebCatalogue.Site.CA25spx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap-datepicker.min.js"></script>

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
                    <asp:Label ID="lbISIN" runat="server" class="t-label-1">ISIN:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtISIN" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMoeda" runat="server" class="t-label-1">Moeda:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoeda" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEstadoFundo" runat="server" class="t-label-1">Estado do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtEstadoFundo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbProduto" runat="server" class="t-label-1">Produto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtProduto" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAntigoProduto" runat="server" class="t-label-1">Antigo Produto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtAntigoProduto" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNomeCurto" runat="server" class="t-label-1">Nome Curto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomeCurto" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbClasseFundo" runat="server" class="t-label-1">Classe do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClasseFundo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSubProduto" runat="server" class="t-label-1">SubProduto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSubProduto" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="lblNome" runat="server" class="t-label-1">Nome:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNome" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="lbCategoriaAtivos" runat="server" class="t-label-1">Categoria de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCategoriaAtivos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="lbClassesAtivos" runat="server" class="t-label-1">Classes de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClassesAtivos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label1" runat="server" class="t-label-1">Classes de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClassesAtivosAll" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtClassesAtivosAllDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label2" runat="server" class="t-label-1">Tipo de Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTipoAtivos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtTipoAtivosDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label7" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblAreaGeo" runat="server" class="t-label-1">Área Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtAreaGeo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtAreaGeoDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblRange" runat="server" class="t-label-1">Range:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRange" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtRangeDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label5" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtZonaGeo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtZonaGeoDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblTipoFundo" runat="server" class="t-label-1">Tipo de Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTipoFundo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtTipoFundoDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="lblCodSocGestora" runat="server" class="t-label-1">Código Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodSocGestora" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblNomeSocGestora" runat="server" class="t-label-1">Nome Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomeSocGestora" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label8" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPaisSocGestora" runat="server" class="t-label-1">Pais Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPaisSocGestora" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblPaisEmiFundo" runat="server" class="t-label-1">Pais Emissão do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPaisEmiFundo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label11" runat="server" class="t-label-1">Código SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtcodSICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label12" runat="server" class="t-label-1">Pais SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPaisSICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label13" runat="server" class="t-label-1">Domicilio SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtdomicilioSICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label14" runat="server" class="t-label-1">Nome SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomeSICAV" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label15" runat="server" class="t-label-1">NIF Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNIFEmitente" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label16" runat="server" class="t-label-1">Risco KIID:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRiscoKIID" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label17" runat="server" class="t-label-1">Data SICAV:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDataKIID" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label18" runat="server" class="t-label-1">Ongoing Charge:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtOngoingCharge" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label19" runat="server" class="t-label-1">COM Dividendos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCOMDividendos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label20" runat="server" class="t-label-1">Periodicidade Pag. Dividendos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPeriodicidadePagDividendos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label21" runat="server" class="t-label-1">Tipo Retenção Dividendos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTipoRetencaoDividendos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label22" runat="server" class="t-label-1">UCIT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtUCIT" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label23" runat="server" class="t-label-1">Moeda Trailer Fees:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoedaTrailerFees" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label24" runat="server" class="t-label-1">Tipo Pag. p/Fundos c/ Equalização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTipoPFundosEqual" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label25" runat="server" class="t-label-1">Decimais Montantes:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDecMontantes" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label26" runat="server" class="t-label-1">INISCOPE ESD?:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtINIESCOPEESD" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label27" runat="server" class="t-label-1">INISCOPE ESD?:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIniscope" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label29" runat="server" class="t-label-1">Custódia / Distribuição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCustodiaDistribuicao" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label30" runat="server" class="t-label-1">Multi Contas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMultiContas" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label35" runat="server" class="t-label-1">Ret. Imposto Selo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRetImpostoSelo" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label31" runat="server" class="t-label-1">Balcão Oper.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBalcaoOper" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label32" runat="server" class="t-label-1">Gestão Ativos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGestaoAtivos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label33" runat="server" class="t-label-1">Benef.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBenef" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label36" runat="server" class="t-label-1">Tipo Valorização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTipoVal" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label34" runat="server" class="t-label-1">Balção Adicional:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBalcaoAdicional" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label38" runat="server" class="t-label-1">Tipo processamento.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTipoProcess" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label41" runat="server" class="t-label-1">Agrupamento Extrato:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtAgrupExtrato" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtAgrupExtratoDesc" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label9" runat="server" class="t-label-1">Comissão de gestão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label10" runat="server" class="t-label-1">Tipo comissão Soc. gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lblComMaxSubs" runat="server" class="t-label-1">Comissão Máx Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <%--<tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label42" runat="server" class="t-label-1">Comissão Distribuição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label43" runat="server" class="t-label-1">Comissão subscrição Soc. gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox7" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label44" runat="server" class="t-label-1">Comissão Máx Resgate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>--%>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label45" runat="server" class="t-label-1">Comissão resgate Soc. Gestora:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox9" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label48" runat="server" class="t-label-1">Comissão total:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox12" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label49" runat="server" class="t-label-1">Tipo comissão do fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox13" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label51" runat="server" class="t-label-1">Comissão de Depósito:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox15" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label52" runat="server" class="t-label-1">Comissão subscrição de fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox16" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label54" runat="server" class="t-label-1">Comissão de administração:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox18" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label55" runat="server" class="t-label-1">Comissão resgate do fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox19" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label39" runat="server" class="t-label-1">Periodo Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPeriodoCotacao" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label42" runat="server" class="t-label-1">Cotações p/ Agências:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCotAgencias" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label56" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label44" runat="server" class="t-label-1">Decimais Cotações:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDecCotacoes" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label43" runat="server" class="t-label-1">Cotações p/ Serviços:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCotServicos" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label57" runat="server" class="t-label-1">Cut Off Subscrições:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox20" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label58" runat="server" class="t-label-1">Mont. mínimo 1º Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox21" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label59" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label60" runat="server" class="t-label-1">Cut OFF Resgates:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox22" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label61" runat="server" class="t-label-1">Mont. mínimo  Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox23" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label62" runat="server" class="t-label-1">% Repartição Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox24" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label63" runat="server" class="t-label-1">Mínimo Subscrição GA:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox25" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label64" runat="server" class="t-label-1">% Repartição resgate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox26" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label65" runat="server" class="t-label-1">Posição mínima:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox27" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label66" runat="server" class="t-label-1">Tipo Subscrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox28" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label67" runat="server" class="t-label-1">Posição máxima:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox29" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label68" runat="server" class="t-label-1">Tipo Resgate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox30" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label70" runat="server" class="t-label-1">Tipo Settlement p/ Subscrições:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox32" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label71" runat="server" class="t-label-1">Dias p/ Notificações Subs:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox33" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label72" runat="server" class="t-label-1">Tipo Settlement p/ Resgates:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox34" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label73" runat="server" class="t-label-1">Tipo dias Notificações Subs:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox35" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label74" runat="server" class="t-label-1">Negocia via All Funds?:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox36" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label75" runat="server" class="t-label-1">Notificações Resgates:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox37" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label76" runat="server" class="t-label-1">Dias p/ Notificação Resg:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox38" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label80" runat="server" class="t-label-1">Agências:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox40" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox41" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label81" runat="server" class="t-label-1">Private:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox42" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox43" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label82" runat="server" class="t-label-1">Gestão de património:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox44" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox45" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label83" runat="server" class="t-label-1">Bankinter Fundos:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox46" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox47" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label84" runat="server" class="t-label-1">Bankinter Vida:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox48" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox49" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label85" runat="server" class="t-label-1">Internet:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox50" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox51" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label86" runat="server" class="t-label-1">NetBanking:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox52" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox53" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label87" runat="server" class="t-label-1">Banca telefónica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox54" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox55" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label88" runat="server" class="t-label-1">Corporate:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox56" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox57" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label89" runat="server" class="t-label-1">Peq./Médias Empresas:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox58" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox59" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label90" runat="server" class="t-label-1">CTA D.O. do Fundo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox60" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox62" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label91" runat="server" class="t-label-1">CTA D.O. cliente s/DO:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox61" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox63" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label92" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label93" runat="server" class="t-label-1">CTA D.O. p/Comissões:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox64" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox65" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label94" runat="server" class="t-label-1">CTA D.O. cliente s/Moeda Estrangeira:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox66" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TextBox67" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="Label95" runat="server" class="t-label-1">Observações:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox68" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="Label101" runat="server" class="t-label-1">Valor Nominal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox74" runat="server" MaxLength="2" CssClass="t-field-14"></asp:TextBox>
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
                    <asp:Label ID="lbSubFamilia" runat="server" class="t-label-1">SubFamilia:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtSubFamiliaDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLiquidez" runat="server" class="t-label-1">Liquidez:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLiquidez" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbComplexidade" runat="server" class="t-label-1">Complexidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtComplexidade" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbHorizonteTemporal" runat="server" class="t-label-1">Horizonte Temporal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtHorizonteTemporal" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbZonaGeografica" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtZonaGeografica" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbOnOffRegular" runat="server" class="t-label-1">OnOff/Regular:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtOnOffRegular" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIpad" runat="server" class="t-label-1">iPAD:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIpad" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNivelRisco" runat="server" class="t-label-1">Nivel Risco:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNivelRisco" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVaR" runat="server" class="t-label-1">VaR:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtVaR" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbData" runat="server" class="t-label-1">Data:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtData" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDescricao" runat="server" class="t-label-1">Descrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDescricao" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>



            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCatClass" runat="server" class="t-label-1">Cat./Class.activ.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCatClass" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="TXTCatClassDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSolicitarClassRisco" runat="server" class="t-label-1">Solicitar classificação de Risco:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlSolicitarClassRisco" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDataActivacao" runat="server" class="t-label-1">Data de Activação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDataActivacao" runat="server" CssClass="t-field-14"></asp:TextBox>

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
