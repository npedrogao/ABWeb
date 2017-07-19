<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI97.aspx.cs" Inherits="ABWebCatalogue.Site.TI97" %>

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

    <asp:Panel ID="pnlContent" runat="server">
        <table width="100%" cellpadding="0" cellspacing="0" class="t-table-0">
            <tr>
                <td class="t-table-col-1" colspan="8">&nbsp;</td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEspecie" runat="server" class="t-label-1">Espécie:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtEspecie" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtEspecie2" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label1" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label2" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSgCateira" runat="server" class="t-label-1">Seg. Carteira:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSgCateira" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtSgCateiraDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEscalaoPrec" runat="server" class="t-label-1">Escalão Prec.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtEscalaoPrec" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbISIN" runat="server" class="t-label-1">ISIN:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtISIN" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCVM" runat="server" class="t-label-1">CVM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCVM" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbClassFin" runat="server" class="t-label-1">Class.I.Fin.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtClassFin" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbBloomberg" runat="server" class="t-label-1">Bloomberg:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBloomberg" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbReuters" runat="server" class="t-label-1">Reuters:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtReuters" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCMVMPFC" runat="server" class="t-label-1">CMVM PFC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCMVMPFC" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDefault" runat="server" class="t-label-1">Default:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlDefault" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMoedNomimal" runat="server" class="t-label-1">Moed+Nomimal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoedNomimal" runat="server" size="1" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtMoedNomimalDesc" runat="server" size="1" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNominalAnt" runat="server" class="t-label-1">Nominal Ant.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNominalAnt" runat="server" size="1" CssClass="t-field-14 medium-input"></asp:TextBox>
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
                    <asp:Label ID="lbContribuinte" runat="server" class="t-label-1">Contribuinte:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtContribuinte" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbISINCONBP" runat="server" class="t-label-1">ISIN CON. BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtISINCONBP" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCTA" runat="server" class="t-label-1">CTA Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCTA" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtCTADesc" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNatJuridica" runat="server" class="t-label-1">Natureza Juridica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNatJuridica" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCodAdicBP" runat="server" class="t-label-1">COD. ADIC. BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodAdicBP" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCustodiante" runat="server" class="t-label-1">Custodiante:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCustodiante" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtCustodianteDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <%--  <asp:Label ID="lbRiscoProd" runat="server" class="t-label-1">Risco Produto:</asp:Label>
            <asp:TextBox ID="txtRiscoProd" runat="server" size="1" CssClass="t-field-14"></asp:TextBox>--%>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPaisEmit" runat="server" class="t-label-1">Pais Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPaisEmit" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtPaisEmitDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLocalGuarda" runat="server" class="t-label-1">Local Guarda:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLocalGuarda" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtLocalGuardaDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIRSIRC" runat="server" class="t-label-1">% IRS/IRC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIRSIRC" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIsencaoIRS" runat="server" class="t-label-1">% Isenção IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIsencaoIRS" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAgravaIRS" runat="server" class="t-label-1">% Agrava. IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtAgravaIRS" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIEstrang" runat="server" class="t-label-1">% I. Estrang.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIEstrang" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIsencaoIE" runat="server" class="t-label-1">% Isenção IE:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIsencaoIE" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAgravaIE" runat="server" class="t-label-1">% Agrava. IE:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtAgravaIE" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCotacao" runat="server" class="t-label-1">Tem Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlCotacao" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMoedaLiqCotacao" runat="server" class="t-label-1">Moeda Liq.+Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoedaLiqCotacao" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtMoedaLiqCotacaoDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDataCot" runat="server" class="t-label-1">Data Cot.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDataCot" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPeriodCotacao" runat="server" class="t-label-1">Periodicidade Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPeriodCotacao" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtPeriodCotacaoDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbOrigemPreco" runat="server" class="t-label-1">Origem Preço:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtOrigemPreco" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="OrigemPrecoDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNegociavel" runat="server" class="t-label-1">Negociável:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlNegociavel" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <%--<asp:Label ID="lbBolsas" runat="server" class="t-label-1">Bolsas:</asp:Label>
            <asp:TextBox ID="txtBolsas1" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
           <asp:TextBox ID="txtBolsas2" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas3" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas4" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas5" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas6" runat="server" CssClass="t-field-14 input-group-xs"></asp:TextBox>
                                <asp:TextBox ID="txtBolsas7" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas8" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas9" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas10" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas11" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas12" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas13" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas14" runat="server" CssClass="t-field-14 "></asp:TextBox>
                                <asp:TextBox ID="txtBolsas15" runat="server" CssClass="t-field-14 "></asp:TextBox>--%>



            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPaixsercad" runat="server" class="t-label-1">Pais Mercad:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPaixsercad" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtPaixsercadDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSistNegocia" runat="server" class="t-label-1">Sist. Negocia.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlSistNegocia" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTickSize" runat="server" class="t-label-1">Tick Size:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTickSize" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndicePrinc" runat="server" class="t-label-1">Indice Princ:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIndicePrinc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtIndicePrincDesc" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndiceSecun" runat="server" class="t-label-1">Indice Secun.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIndiceSecun" runat="server" CssClass="t-field-14 "></asp:TextBox>
                    <asp:TextBox ID="txtIndiceSecunVal" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIsencaoTxBol" runat="server" class="t-label-1">% Isenção Tx.Bol:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIsencaoTxBol" runat="server" CssClass="t-field-14"></asp:TextBox>
                    <asp:TextBox ID="txtIsencaoTxBolDesc" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNet" runat="server" class="t-label-1">Net:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlNet" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAgencias" runat="server" class="t-label-1">Agências:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlAgencias" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbElegivel" runat="server" class="t-label-1">Elegivel:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlElegivel" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDataCriacao" runat="server" class="t-label-1">Data Criação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDataInicio" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbUltActual" runat="server" class="t-label-1">Ult. Actual:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtUltActual" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>


    <br />


    <button id="btnCatGerais" class="titleAccordion" runat="server" onserverclick="btnDadComp_Click">Dados Complementares: OBRIGAÇÕES/V.M. CONVERTÍVEIS</button>
    <asp:Panel ID="pnlDadCompContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtEmissao" runat="server" class="t-label-1">Data Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtEmissao" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtUltMort" runat="server" class="t-label-1">Dt. Ult. Mort.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtUltMort" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtAmortFinal" runat="server" class="t-label-1">Dt. Amort. Final:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtAmortFinal" runat="server" CssClass="t-field-14 "></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoAmortiz" runat="server" class="t-label-1">Tipo Amortiz.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlTipoAmortiz" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoJuro" runat="server" class="t-label-1">Tipo de Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="DDLTipoJuro" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbJuro" runat="server" class="t-label-1">% Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtJuro" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">

                    <asp:Label ID="lbDtPriAmort" runat="server" class="t-label-1">Dt Pri Amort:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtPriAmort" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPricing" runat="server" class="t-label-1">Pricing:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="DDLPricing" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndex" runat="server" class="t-label-1">Index:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIndex" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNuxsiasIndex" runat="server" class="t-label-1">Num Dias Index:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNuxsiasIndex" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSpread" runat="server" class="t-label-1">Spread:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSpread" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbContaDias" runat="server" class="t-label-1">Conta. Dias:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtContaDias" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:TextBox ID="txtContaDiasDesc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCDiasLivre" runat="server" class="t-label-1">CDias Livre:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCDiasLivre" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <select id="ddlCDias" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbJuroAno" runat="server" class="t-label-1">Nº Juro/Ano:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlJuroAno" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbJuroAnter" runat="server" class="t-label-1">%Juro Anter:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtJuroAnter" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtPrimJuro" runat="server" class="t-label-1">Dt Prim Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="DtPrimJuro" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtProxJuro" runat="server" class="t-label-1">Dt. Prox. Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtProxJuro" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtUtlJuro" runat="server" class="t-label-1">Dt. Utl. Juros:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtUtlJuro" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbJuroCorrid" runat="server" class="t-label-1">Juros Corrid:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlJuroCorrid" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbJuroDiario" runat="server" class="t-label-1">Juro Diário:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtJuroDiario" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrecoEmissao" runat="server" class="t-label-1">Preço Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPrecoEmissao" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbQtdEmitida" runat="server" class="t-label-1">Qtd. Emitida:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQtdEmitida" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLoteMinimo" runat="server" class="t-label-1">Lote Minimo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLoteMinimo" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbBancoLider" runat="server" class="t-label-1">Banco Lider:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBancoLider" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRatingFitch" runat="server" class="t-label-1">Rating Fitch:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRatingFitch" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRatingMoody" runat="server" class="t-label-1">Rating Moody:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRatingMoody" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRatingSP" runat="server" class="t-label-1">Rating S&P:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRatingSP" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSenioridade" runat="server" class="t-label-1">Senioridade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlSenioridade" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAlavancagem" runat="server" class="t-label-1">Alavancagem:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlAlavancagem" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoMercado" runat="server" class="t-label-1">Tipo de Mercado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlTipoMercado" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSubjacente" runat="server" class="t-label-1">Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlSubjacente" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMercadoAdmissaoNeg" runat="server" class="t-label-1">Mercado de Admissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlMercadoAdmissaoNeg" runat="server" class="t-field-14"></select>
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
                    <asp:Label ID="lbMAT" runat="server" class="t-label-1">MAT</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMAT" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCAL" runat="server" class="t-label-1">CAL</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCAL" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPUT" runat="server" class="t-label-1">PUT</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPUT" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRAA" runat="server" class="t-label-1">RAA</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRAA" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbOUT" runat="server" class="t-label-1">OUT</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtOUT" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="Button7" class="titleAccordion" runat="server" onserverclick="btnDadsCOmpWarra_Click">Dados Complementares WARRANTS DESTACADOS / V.M.CONVERTÍVEIS</button>
    <asp:Panel ID="pnlDadsCOmpWarraContent" runat="server" Visible="false">
        <br />
        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtADMNegoc" runat="server" class="t-label-1">Dt. ADM Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="ddlDtADMNegoc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtUltNegocObg" runat="server" class="t-label-1">Dt. Ult. Negoc:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="ddlDtUltNegocObg" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNExercAno" runat="server" class="t-label-1">Nº Exerc/Ano:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlNExercAno" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtPrimExer" runat="server" class="t-label-1">Dt. Prim. Exer.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtPrimExer" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtProExer" runat="server" class="t-label-1">Dt. Pro. Exer.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtProExer" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtUltExer" runat="server" class="t-label-1">Dt. Ult. Exer.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtUltExer" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNumExercic" runat="server" class="t-label-1">Num. Exercic.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNumExercic" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbFactorConv" runat="server" class="t-label-1">Factor Conv.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFactorConv" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbActivoSubja" runat="server" class="t-label-1">Activo Subja.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtActivoSubja1" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:TextBox ID="txtActivoSubja2" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrecoExerc" runat="server" class="t-label-1">Preço Exerci.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPrecoExerc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoArredon" runat="server" class="t-label-1">Tipo Arredon.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlTipoArredon" runat="server" class="t-field-14"></select>
                </td>
            </tr>


        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="Button1" class="titleAccordion" runat="server" onserverclick="btnDadsCompWarrAUto_Click">Dados Complementares WARRANTS AUTÓNOMOS / WARRANTS ESTRUTURADOS</button>
    <asp:Panel ID="pnlDadsCompWarrAUtoContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoWarrant" runat="server" class="t-label-1">Tipo Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlTipoWarrant" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEstiloWarrant" runat="server" class="t-label-1">Estilo Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlEstiloWarrant" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label3" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoExerc" runat="server" class="t-label-1">Tipo Exercicio:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="DropDownList3" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtAdmNegocAuto" runat="server" class="t-label-1">Dt. Adm. Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtAdmNegocAuto" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtUltNegocAuto" runat="server" class="t-label-1">Dt. Ultima Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtUltNegocAuto" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtVenc" runat="server" class="t-label-1">Dt de Vencimento:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtVenc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="LbParidadeWar" runat="server" class="t-label-1">Paridade War:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtParidadeWar" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLoteMinExe" runat="server" class="t-label-1">Lote Min. Exe.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLoteMinExe" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndActivoSubj" runat="server" class="t-label-1">Ind. Activo Subj.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIndActivoSubj" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:TextBox ID="txtIndActivoSubjDesc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">

                    <asp:Label ID="lbMoedaActSubj" runat="server" class="t-label-1">Moeda Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoedaActSubj" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoLiquida" runat="server" class="t-label-1">Tipo Liquida:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="DropDownList1" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrecoExerci" runat="server" class="t-label-1">Preço Exerci.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPrecoExerci" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNomeEmitente" runat="server" class="t-label-1">Nome do Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomeEmitente" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />



    <button id="Button2" class="titleAccordion" runat="server" onserverclick="btnDadsComp_Click">Dados Complementares DERIVADOS/FUTUROS</button>
    <asp:Panel ID="pnlDadsCompContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="LBParidadeQTD" runat="server" class="t-label-1">Paridade/QTD.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtParidadeQTD" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbActivoSubj" runat="server" class="t-label-1">Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtActivoSubj" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNomeActivoSubj" runat="server" class="t-label-1">Nome Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomeActivoSubj" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTextLivre" runat="server" class="t-label-1">Texto Livre:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTextLivre" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>
    <br />
    <br />


    <button id="Button3" class="titleAccordion" runat="server" onserverclick="btnDadosTec_Click">Dados Técnicos espécie</button>
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
                    <asp:Label ID="lbProvider" runat="server" class="t-label-1">Provider:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtProvider" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSource" runat="server" class="t-label-1">Source:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSource" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>



    <br />
    <br />

    <button id="Button4" class="titleAccordion" runat="server" onserverclick="btnDadsCompEle_Click">Dados Complementares ELEGIBILIDADE</button>
    <asp:Panel ID="pnlDadsCompEleContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrioridade1" runat="server" class="t-field-14">1. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlPrioridade1" runat="server" class="t-field-14"></select>
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
                    <asp:Label ID="lbPrioridade2" runat="server" class="t-field-14">2. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlPrioridade2" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrioridade3" runat="server" class="t-field-14">3. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlPrioridade3" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrioridade4" runat="server" class="t-field-14">4. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlPrioridade4" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrioridade5" runat="server" class="t-field-14">5. Prioridade Elegilidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlPrioridade5" runat="server" class="t-field-14"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="Button5" class="titleAccordion" runat="server" onserverclick="btnDadosCompImp_Click">Dados Complementares Impostos FTT</button>
    <asp:Panel ID="pnlDadosCompImpContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCobrarImposto" runat="server" class="col-xs-6 control-label">Cobrar Imposto:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlCobrarImposto" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRefFIT" runat="server" class="t-label-1">Referência FIT:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="txtRefFIT" runat="server" class="t-field-14"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>





    <br />
    <br />

    <button id="Button6" class="titleAccordion" runat="server" onserverclick="btnAttInv_Click">Atributos de Investimento</button>
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

    <div class="row form-group">
        <div class="col-xs-offset-10">
            <button class="btn btn-default">Limpar</button>
            <button class="btn btn-default col-xs-offset-3">Gravar</button>
        </div>
    </div>
    <div class="row">
        <hr class="hr" />
    </div>
    </div>

</asp:Content>
