<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="TI96.aspx.cs" Inherits="ABWebCatalogue.Site.TI96" %>

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
                    <asp:Label ID="lbDebito" runat="server" class="t-label-1">Identificação Programa:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCprogramapc" runat="server" CssClass="t-field-6" MaxLength="15"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNCliente" runat="server" class="t-label-1">Nº Cliente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtZcliente" runat="server" CssClass="t-field-14" MaxLength="7"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNEmissao" runat="server" class="t-label-1">Nº Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtZemissao" runat="server" CssClass="t-field-14" MaxLength="7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbValNominalEmissao" runat="server" class="t-label-1">Valor nominal emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMnomine" runat="server" CssClass="t-field-6" MaxLength="9"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lbBancoAgente" runat="server" class="t-label-1">Banco agente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodban" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                    <asp:TextBox ID="txtDcodban" runat="server" CssClass="t-field-2" MaxLength="20"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEspecie" runat="server" class="t-label-1">Espécie:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodvalor" runat="server" CssClass="t-field-2" MaxLength="13"></asp:TextBox>
                    <asp:TextBox ID="txtNombrev" runat="server" CssClass="t-field-2" MaxLength="27"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbReactivar" runat="server" class="t-label-1">Reactivar:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbReactivar" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID-="lbISIN" runat="server" class="t-label-1">ISIN:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtISIN" runat="server" CssClass="t-field-2" MaxLength="13"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCodSGC" runat="server" class="t-label-1">Código SGC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodSGC" runat="server" CssClass="t-field-2" MaxLength="12"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbBolsaSGC" runat="server" class="t-label-1">Bolsa SGC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBolsaSGC" runat="server" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCustodiante" runat="server" class="t-label-1">Custodiante:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodisin" runat="server" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                    <asp:TextBox ID="txtDcustod" runat="server" CssClass="t-field-2" MaxLength="13"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCotacao" runat="server" class="t-label-1">Cotação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCamed" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMoedaCL" runat="server" class="t-label-1">Moeda COT/LIQ:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMoedaval" runat="server" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDefault" runat="server" class="t-label-1">Default:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbItitdef" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVLNOMUnit" runat="server" class="t-label-1">VL.NOM.Unitário:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNomin" runat="server" size="1" CssClass="t-field-14 " MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMoedaNominal" runat="server" class="t-label-1">Moeda Nominal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCoddivi" runat="server" size="1" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCVM" runat="server" class="t-label-1">CVM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNemonica" runat="server" size="1" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLocalGuard" runat="server" class="t-label-1">Local Guard:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLguarda" runat="server" size="1" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSistNegocia" runat="server" class="t-label-1">Sist. Negocia. :</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTiptitul" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbBloomberg" runat="server" class="t-label-1">Bloomberg:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCbloombg" runat="server" size="1" CssClass="t-field-14 " MaxLength="12"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEscalao" runat="server" class="t-label-1">Escalão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCtipesc" runat="server" size="1" CssClass="t-field-14 " MaxLength="1"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbReuters" runat="server" class="t-label-1">Reuters:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCreuters" runat="server" size="1" CssClass="t-field-14 " MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCustodia" runat="server" class="t-label-1">D. Custódia:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbDercus" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbContribuinte" runat="server" class="t-label-1">Contribuinte:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNif" runat="server" CssClass="t-field-14 " MaxLength="9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPaisEmit" runat="server" class="t-label-1">Pais Emit:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCpaisemi" runat="server" CssClass="t-field-14 " MaxLength="3"></asp:TextBox>

                    <asp:TextBox ID="txtDpaisemi" runat="server" CssClass="t-field-2 " MaxLength="11"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLoteMinimo" runat="server" class="t-label-1">Lote minimo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtLotemin" runat="server" size="1" CssClass="t-field-14 " MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbAgencias" runat="server" class="t-label-1">Agencias:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbItitbal" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPaixsercad" runat="server" class="t-label-1">Pais Mercad:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCodpais" runat="server" CssClass="t-field-14 " MaxLength="3"></asp:TextBox>

                    <asp:TextBox ID="txtDpais" runat="server" CssClass="t-field-14 " MaxLength="11"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNET" runat="server" class="t-label-1">NET:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIbantele" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCredito" runat="server" class="t-label-1">% Crédito:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTcredito" runat="server" CssClass="t-field-14 " MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSegCarteira" runat="server" class="t-label-1">Seg.Carteir:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSegcart" runat="server" CssClass="t-field-14 " MaxLength="3"></asp:TextBox>

                    <asp:TextBox ID="txtDsegcart" runat="server" CssClass="t-field-6" MaxLength="40"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEstado" runat="server" class="t-label-1">Estado:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtSituaca" runat="server" CssClass="t-field-14 " MaxLength="8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNegociavel" runat="server" class="t-label-1">Negociável:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbNegociav" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbUltActu" runat="server" class="t-label-1">Ult.Actu:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFechactu" runat="server" CssClass="t-field-14 small-input " MaxLength="8"></asp:TextBox>

                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="t-field-14 small-input " MaxLength="5"></asp:TextBox>
                </td>
            </tr>

            <%--
            <asp:Label ID="lbBolsas" runat="server" class="t-label-1">Bolsas:</asp:Label>

            <asp:TextBox ID="txtCbolsa01" runat="server" CssClass="t-field-14 " MaxLength="2"></asp:TextBox>
            <asp:TextBox ID="txtCbolsa02" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa03" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa04" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa05" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa06" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa07" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa08" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa09" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa010" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa011" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa012" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa013" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa014" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa015" runat="server" CssClass="t-field-14 small-input " MaxLength="2"></asp:TextBox>--%>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoJuro" runat="server" class="t-label-1">Tipo de Juro:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTipint" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbModalidade" runat="server" class="t-label-1">Modalidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbItipemiss" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTaxaMediaEmissao" runat="server" class="t-label-1">Taxa Média Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtInteres" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbQTDEmissao" runat="server" class="t-label-1">QTD. Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDesde" runat="server" CssClass="t-field-14" MaxLength="11"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIsensao" runat="server" class="t-label-1">% Isensão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtExenc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTaxaEmissao" runat="server" class="t-label-1">Taxa de Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTxprog" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIRSIRC" runat="server" class="t-label-1">% IRS/IRC:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtReten" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrazoEmissao" runat="server" class="t-label-1">Prazo de Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtPrzdprog" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:Label ID="lb2" runat="server" class="t-label-1">Dias</asp:Label>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lb1" runat="server" class="t-label-1">% Juro Diário:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtJurodliq" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbBaseCalculo" runat="server" class="t-label-1">Base Cálculo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtBasecalc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                    <asp:Label ID="lbBaseCalculoVal" runat="server" class="t-label-1">Dias</asp:Label>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCalculoJuro" runat="server" class="t-label-1">Cálculo de Juros:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIcalcjur" runat="server" class="t-field-14"></select>
                    <asp:Label ID="Label1" runat="server" class="t-label-1">(D) Dias de calendário/(T) Mês</asp:Label>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbJuroAnterior" runat="server" class="t-label-1">% Juro Anterior:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTjuro7" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMensualizacao" runat="server" class="t-label-1">Mensualização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbImensual" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoAmortizacao" runat="server" class="t-label-1">Tipo Amortização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbTipamor" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtEmissao" runat="server" class="t-label-1">Data Emissão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtEmis" runat="server" CssClass="t-field-14" MaxLength="10"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbISINCONBP" runat="server" class="t-label-1">ISIN CON. BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIsinbp" runat="server" CssClass="t-field-14" MaxLength="12"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtAmortizacao" runat="server" class="t-label-1">Data Amortização:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFproxa" runat="server" MaxLength="10" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCODADICBP" runat="server" class="t-label-1">COD. ADIC. BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCidabp" runat="server" CssClass="t-field-14" MaxLength="10"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtCupao" runat="server" class="t-label-1">Data 1º Cupão:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFprimc" runat="server" MaxLength="10" CssClass="t-field-14"></asp:TextBox>

                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtBP" runat="server" class="t-label-1">Data BP:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFbancopt" runat="server" MaxLength="10" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCupaoCorrido" runat="server" class="t-label-1">Cupão Corrido:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCupcorrc" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVenc1" runat="server" class="t-label-1">Venc-1 DD/MM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtVenc1" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVenc2" runat="server" class="t-label-1">Venc-2 DD/MM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtVenc2" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVenc3" runat="server" class="t-label-1">Venc-3 DD/MM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtVenc3" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVenc4" runat="server" class="t-label-1">Venc-4 DD/MM:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtVenc4" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>


    <br />




    <button id="btnCatGerais" class="titleAccordion" runat="server" onserverclick="btnWarrants_Click">Warrants</button>
    <asp:Panel ID="pnlWarrantsContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">

                    <asp:Label ID="lbTipoWarrant" runat="server" class="t-label-1">Tipo Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbItipowar" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbEstiloWarrant" runat="server" class="t-label-1">Estilo Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIestwar" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="empty" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

            <tr>
                <td class="t-table-col-1">

                    <asp:Label ID="lbTipoExercicio" runat="server" class="t-label-1">Tipo Exercicio:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbItipexer" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtAdmissNeg" runat="server" class="t-label-1">Dt Admiss. Negoc.</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFeadmiss" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtUltNegoc" runat="server" class="t-label-1">Dt Última. Negoc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFeultneg" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtVenc" runat="server" class="t-label-1">DT de Vencimento:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtFevencim" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lbParidadeWarrant" runat="server" class="t-label-1">Paridade Warrant:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtParidade" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbLoteMinPExerc" runat="server" class="t-label-1">Lote Min. P/Exerc.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQlotemin" runat="server" CssClass="t-field-14" MaxLength="5"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndActivo" runat="server" class="t-label-1">Ind. Activo Subj.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbIactsubj" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbMoedaActivo" runat="server" class="t-label-1">Moeda Activo Subjacente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCmoesubj" runat="server" CssClass="t-field-14" MaxLength="3"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTipoLiquidacao" runat="server" class="t-label-1">Tipo Liquidação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCtipoliq" runat="server" class="t-field-14"></select>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbPrecoExercicio" runat="server" class="t-label-1">Preço Exercício:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtStrike" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNomeEmitente" runat="server" class="t-label-1">Nome Emitente:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNemiten" runat="server" CssClass="t-field-14" MaxLength="25"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNominativo" runat="server" class="t-label-1">Nominativo:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbInominat" runat="server" class="t-field-14"></select>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="Button1" class="titleAccordion" runat="server" onserverclick="btnPanel1_Click">Panel1</button>
    <asp:Panel ID="pnlPanel1Content" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNovoValorUnit" runat="server" class="t-label-1">Novo Valor Unit.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNovoValorUnit" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label2" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label3" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNatJuridica" runat="server" class="t-label-1">Natureza Juridica:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtNatJuridica" runat="server" CssClass="t-field-14" MaxLength="6"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndicePrincipal" runat="server" class="t-label-1">Indice Principal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIndicePrincipal" runat="server" CssClass="t-field-14" MaxLength="2"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndiceSecundario" runat="server" class="t-label-1">Indice Secundário:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtIndiceSecundario" runat="server" CssClass="t-field-14" MaxLength="2"></asp:TextBox>
                </td>
            </tr>


        </table>
    </asp:Panel>

    <br />
    <br />

    <button id="Button2" class="titleAccordion" runat="server" onserverclick="btnPanel2_Click">Panel2</button>
    <asp:Panel ID="pnlPanel2Content" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbRetEstranq" runat="server" class="t-label-1">% Ret. Estranq.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtRetEstranq" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label5" runat="server" class="t-label-1">% Agrav. IRS:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtEstiloWarrant" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label4" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>


        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="Button7" class="titleAccordion" runat="server" onserverclick="btnPanel3_Click">Panel3</button>
    <asp:Panel ID="pnlPanel3Content" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbExchangeTraded" runat="server" class="t-label-1">Exchange Traded Funds:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="ddlExchangeTraded" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label6" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
                <td class="t-table-col-1">
                    <asp:Label ID="Label7" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>
            </tr>

        </table>
    </asp:Panel>



    <br />
    <br />

    <button id="Button4" class="titleAccordion" runat="server" onserverclick="btnPapComerc_Click">Papel Comercial</button>
    <asp:Panel ID="pnlPapComercContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndexPrazoInf" runat="server" class="t-label-1">Index Prazo Inf.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTprzinf" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lbIndexPrazoSup" runat="server" class="t-label-1">Index Prazo Sup.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTprzsup" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>


                <td class="t-table-col-1">
                    <asp:Label ID="Label8" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>

            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDiasIndexInf" runat="server" class="t-label-1">Nº Dias Index Inf.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQprzinf" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>

                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDiasIndexSup" runat="server" class="t-label-1">Nº Dias Index Sup.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtQprzsup" runat="server" CssClass="t-field-14" MaxLength="4"></asp:TextBox>
                </td>

            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIndexante" runat="server" class="t-label-1">Indexante:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTindexante" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="lbSpread" runat="server" class="t-label-1">Spread:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTspreadpc" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbArredondamento" runat="server" class="t-label-1">Arredondamento:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTarredond" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>


                <td class="t-table-col-1">
                    <asp:Label ID="lbTaxaRef" runat="server" class="t-label-1">Taxa Referência:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTcambio" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDtCambio" runat="server" class="t-label-1">Data de Câmbio:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDcambio" runat="server" CssClass="t-field-14" MaxLength="10"></asp:TextBox>
                </td>

            </tr>


        </table>
    </asp:Panel>


    <br />
    <br />

    <button id="Button5" class="titleAccordion" runat="server" onserverclick="btnTaxMult_Click">Taxa Múltipla</button>
    <asp:Panel ID="pnlTaxMultContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTaxaMin" runat="server" class="t-label-1">Taxa Minima:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTxmin" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label9" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>

                <td class="t-table-col-1">
                    <asp:Label ID="Label10" runat="server" class="t-label-1"></asp:Label>
                </td>
                <td class="t-table-col-2"></td>


            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbTaxaMax" runat="server" class="t-label-1">Taxa Máxima:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtTxmax" runat="server" CssClass="t-field-14" MaxLength="9"></asp:TextBox>
                </td>
            </tr>

        </table>
    </asp:Panel>




    <br />
    <br />

    <button id="Button6" class="titleAccordion" runat="server" onserverclick="btnAtInves_Click">Atributos de Investimento</button>
    <asp:Panel ID="pnlAtInvesContent" runat="server" Visible="false">
        <br />

        <table cellpadding="0" border="0" cellspacing="0" width="100%" class="t-table-0">


            <tr>
                <td class="t-table-col-1">

                    <asp:Label ID="lbSubFamilia" runat="server" class="t-label-1">SubFamilia:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCsubfam" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                    <asp:TextBox ID="txtDsubfam" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>


                <td class="t-table-col-1">
                    <asp:Label ID="lbLiquidez" runat="server" class="t-label-1">Liquidez:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCliquidprod" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>


                <td class="t-table-col-1">
                    <asp:Label ID="lbComplexidade" runat="server" class="t-label-1">Complexidade:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCcomplexinv" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                    <asp:TextBox ID="txtDcomplexinv" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
            </tr>



            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbHorizontalTemporal" runat="server" class="t-label-1">Horizontal Temporal:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtChorizon" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>

                    <asp:TextBox ID="txtDhorizon" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbZonaGeo" runat="server" class="t-label-1">Zona Geográfica:</asp:Label>
                </td>
                <td class="t-table-col-2">

                    <asp:TextBox ID="txtCzongeog" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                    <asp:TextBox ID="txtDzongeog" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbOnOffReg" runat="server" class="t-label-1">OnOff/Regular:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbConoffregu" runat="server" class="t-field-14"></select>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbIPad" runat="server" class="t-label-1">iPAD:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <select id="cmbCipad" runat="server" class="t-field-14"></select>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbNivelRisco" runat="server" class="t-label-1">Nivel Risco:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCnivelrisco" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbVar" runat="server" class="t-label-1">VaR:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtMvar" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbData" runat="server" class="t-label-1">Data:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDvar" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="txtDesc" runat="server" class="t-label-1">Descrição:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtGobsrv" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="t-table-col-1">
                    <asp:Label ID="lbCatClassActiv" runat="server" class="t-label-1">Cat./Class.Activ.:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCclaacti" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbSoliClassifica" runat="server" class="t-label-1">Solicitar Classificação de Risco (S/N):</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtCclassrisc" runat="server" CssClass="t-field-14" size="1"></asp:TextBox>
                </td>
                <td class="t-table-col-1">
                    <asp:Label ID="lbDataActiv" runat="server" class="t-label-1">Data de Activação:</asp:Label>
                </td>
                <td class="t-table-col-2">
                    <asp:TextBox ID="txtDtactiva" runat="server" CssClass="t-field-14"></asp:TextBox>
                </td>
            </tr>

        </table>
    </asp:Panel>

    <%--    <div class="row form-group">
        <div class="col-xs-offset-10">
            <button class="btn btn-default">Limpar</button>
            <button class="btn btn-default col-xs-offset-3">Gravar</button>
        </div>
    </div>--%>
    <div class="row">
        <hr class="hr" />
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".collapse").on('show.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus");
            }).on('hide.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus");
            });
        });
    </script>
</asp:Content>
