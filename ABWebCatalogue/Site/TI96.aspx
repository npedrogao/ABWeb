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
            <%--
            <asp:Label ID="lbCVM" runat="server" class="col-xs-4 control-label">CVM:</asp:Label>
            <asp:TextBox ID="txtNemonica" runat="server" size="1" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbLocalGuard" runat="server" class="col-xs-4 control-label">Local Guard:</asp:Label>

            <asp:TextBox ID="txtLguarda" runat="server" size="1" CssClass="form-control" MaxLength="3"></asp:TextBox>

            <asp:Label ID="lbSistNegocia" runat="server" class="col-xs-4 control-label">Sist. Negocia. :</asp:Label>

            <select id="cmbTiptitul" runat="server" class="form-control"></select>

            <asp:Label ID="lbBloomberg" runat="server" class="col-xs-4 control-label">Bloomberg:</asp:Label>

            <asp:TextBox ID="txtCbloombg" runat="server" size="1" CssClass="form-control " MaxLength="12"></asp:TextBox>

            <asp:Label ID="lbEscalao" runat="server" class="col-xs-4 control-label">Escalão:</asp:Label>

            <asp:TextBox ID="txtCtipesc" runat="server" size="1" CssClass="form-control " MaxLength="1"></asp:TextBox>



            <asp:Label ID="lbReuters" runat="server" class="col-xs-4 control-label">Reuters:</asp:Label>

            <asp:TextBox ID="txtCreuters" runat="server" size="1" CssClass="form-control " MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbCustodia" runat="server" class="col-xs-4 control-label">D. Custódia:</asp:Label>

            <select id="cmbDercus" runat="server" class="form-control"></select>

            <asp:Label ID="lbContribuinte" runat="server" class="col-xs-4 control-label">Contribuinte:</asp:Label>

            <asp:TextBox ID="txtNif" runat="server" CssClass="form-control " MaxLength="9"></asp:TextBox>


            <asp:Label ID="lbPaisEmit" runat="server" class="col-xs-4 control-label">Pais Emit:</asp:Label>

            <asp:TextBox ID="txtCpaisemi" runat="server" CssClass="form-control " MaxLength="3"></asp:TextBox>

            <asp:TextBox ID="txtDpaisemi" runat="server" CssClass="form-control " MaxLength="11"></asp:TextBox>

            <asp:Label ID="lbLoteMinimo" runat="server" class="col-xs-4 control-label">Lote minimo:</asp:Label>

            <asp:TextBox ID="txtLotemin" runat="server" size="1" CssClass="form-control " MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbAgencias" runat="server" class="col-xs-4 control-label">Agencias:</asp:Label>

            <select id="cmbItitbal" runat="server" class="form-control"></select>

            <asp:Label ID="lbPaixsercad" runat="server" class="col-xs-4 control-label">Pais Mercad:</asp:Label>

            <asp:TextBox ID="txtCodpais" runat="server" CssClass="form-control " MaxLength="3"></asp:TextBox>

            <asp:TextBox ID="txtDpais" runat="server" CssClass="form-control " MaxLength="11"></asp:TextBox>

            <asp:Label ID="lbNET" runat="server" class="col-xs-4 control-label">NET:</asp:Label>

            <select id="cmbIbantele" runat="server" class="form-control"></select>

            <asp:Label ID="lbCredito" runat="server" class="col-xs-4 control-label">% Crédito:</asp:Label>

            <asp:TextBox ID="txtTcredito" runat="server" CssClass="form-control " MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbSegCarteira" runat="server" class="col-xs-4 control-label">Seg.Carteir:</asp:Label>

            <asp:TextBox ID="txtSegcart" runat="server" CssClass="form-control " MaxLength="3"></asp:TextBox>

            <asp:TextBox ID="txtDsegcart" runat="server" CssClass="form-control " MaxLength="40"></asp:TextBox>

            <asp:Label ID="lbEstado" runat="server" class="col-xs-4 control-label">Estado:</asp:Label>

            <asp:TextBox ID="txtSituaca" runat="server" CssClass="form-control " MaxLength="8"></asp:TextBox>

            <asp:Label ID="lbNegociavel" runat="server" class="col-xs-4 control-label">Negociável:</asp:Label>

            <select id="cmbNegociav" runat="server" class="form-control"></select>

            <asp:Label ID="lbUltActu" runat="server" class="col-xs-4 control-label">Ult.Actu:</asp:Label>

            <asp:TextBox ID="txtFechactu" runat="server" CssClass="form-control small-input " MaxLength="8"></asp:TextBox>

            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control small-input " MaxLength="5"></asp:TextBox>

            <asp:Label ID="lbBolsas" runat="server" class="col-xs-4 control-label">Bolsas:</asp:Label>

            <asp:TextBox ID="txtCbolsa01" runat="server" CssClass="form-control " MaxLength="2"></asp:TextBox>
            <asp:TextBox ID="txtCbolsa02" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa03" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa04" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa05" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa06" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa07" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa08" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa09" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa010" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa011" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa012" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

                                    <asp:TextBox ID="txtCbolsa013" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa014" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>
                                    <asp:TextBox ID="txtCbolsa015" runat="server" CssClass="form-control small-input " MaxLength="2"></asp:TextBox>

            <asp:Label ID="lbTipoJuro" runat="server" class="col-xs-4 control-label">Tipo de Juro:</asp:Label>

            <select id="cmbTipint" runat="server" class="form-control"></select>

            <asp:Label ID="lbModalidade" runat="server" class="col-xs-4 control-label">Modalidade:</asp:Label>

            <select id="cmbItipemiss" runat="server" class="form-control"></select>

            <asp:Label ID="lbTaxaMediaEmissao" runat="server" class="col-xs-4 control-label">Taxa Média Emissão:</asp:Label>

            <asp:TextBox ID="txtInteres" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbQTDEmissao" runat="server" class="col-xs-4 control-label">QTD. Emissão:</asp:Label>

            <asp:TextBox ID="txtDesde" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>

            <asp:Label ID="lbIsensao" runat="server" class="col-xs-4 control-label">% Isensão:</asp:Label>

            <asp:TextBox ID="txtExenc" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbTaxaEmissao" runat="server" class="col-xs-4 control-label">Taxa de Emissão:</asp:Label>

            <asp:TextBox ID="txtTxprog" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbIRSIRC" runat="server" class="col-xs-4 control-label">% IRS/IRC:</asp:Label>

            <asp:TextBox ID="txtReten" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbPrazoEmissao" runat="server" class="col-xs-4 control-label">Prazo de Emissão:</asp:Label>

            <asp:TextBox ID="txtPrzdprog" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
            <asp:Label ID="lb2" runat="server" class="input-group-addon">Dias</asp:Label>

            <asp:Label ID="lb1" runat="server" class="col-xs-4 control-label">% Juro Diário:</asp:Label>

            <asp:TextBox ID="txtJurodliq" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbBaseCalculo" runat="server" class="col-xs-4 control-label">Base Cálculo:</asp:Label>

            <asp:TextBox ID="txtBasecalc" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
            <asp:Label ID="lbBaseCalculoVal" runat="server" class="input-group-addon">Dias</asp:Label>

            <asp:Label ID="lbCalculoJuro" runat="server" class="col-xs-4 control-label">Cálculo de Juros:</asp:Label>

            <select id="cmbIcalcjur" runat="server" class="form-control"></select>

            <asp:Label ID="lbJuroAnterior" runat="server" class="col-xs-4 control-label">% Juro Anterior:</asp:Label>

            <asp:TextBox ID="txtTjuro7" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>

            <asp:Label ID="lbMensualizacao" runat="server" class="col-xs-4 control-label">Mensualização:</asp:Label>

            <select id="cmbImensual" runat="server" class="form-control"></select>

            <asp:Label ID="lbTipoAmortizacao" runat="server" class="col-xs-4 control-label">Tipo Amortização:</asp:Label>

            <select id="cmbTipamor" runat="server" class="form-control"></select>

            <asp:Label ID="lbDtEmissao" runat="server" class="col-xs-4 control-label">Data Emissão:</asp:Label>

            <asp:TextBox ID="txtEmis" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>

            <asp:Label ID="lbISINCONBP" runat="server" class="col-xs-4 control-label">ISIN CON. BP:</asp:Label>

            <asp:TextBox ID="txtIsinbp" runat="server" CssClass="form-control" MaxLength="12"></asp:TextBox>

            <asp:Label ID="lbDtAmortizacao" runat="server" class="col-xs-4 control-label">Data Amortização:</asp:Label>

            <asp:TextBox ID="txtFproxa" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>

            <asp:Label ID="lbCODADICBP" runat="server" class="col-xs-4 control-label">COD. ADIC. BP:</asp:Label>

            <asp:TextBox ID="txtCidabp" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>



            <asp:Label ID="lbDtCupao" runat="server" class="col-xs-4 control-label">Data 1º Cupão:</asp:Label>

            <asp:TextBox ID="txtFprimc" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>


            <asp:Label ID="lbDtBP" runat="server" class="col-xs-4 control-label">Data BP:</asp:Label>

            <asp:TextBox ID="txtFbancopt" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-calendar"></span>
            </span>

            <asp:Label ID="lbCupaoCorrido" runat="server" class="col-xs-4 control-label">Cupão Corrido:</asp:Label>

            <select id="cmbCupcorrc" runat="server" class="form-control"></select>

            <asp:Label ID="lbVenc1" runat="server" class="col-xs-4 control-label">Venc-1 DD/MM:</asp:Label>

            <asp:TextBox ID="txtVenc1" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>

            <asp:Label ID="lbVenc2" runat="server" class="col-xs-4 control-label">Venc-2 DD/MM:</asp:Label>

            <asp:TextBox ID="txtVenc2" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>

            <asp:Label ID="lbVenc3" runat="server" class="col-xs-4 control-label">Venc-3 DD/MM:</asp:Label>

            <asp:TextBox ID="txtVenc3" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>

            <asp:Label ID="lbVenc4" runat="server" class="col-xs-4 control-label">Venc-4 DD/MM:</asp:Label>

            <asp:TextBox ID="txtVenc4" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>--%>
        </table>
    </asp:Panel>






    <%--<div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse1">Warrants<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoWarrant" runat="server" class="col-xs-4 control-label">Tipo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <select id="cmbItipowar" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbEstiloWarrant" runat="server" class="col-xs-4 control-label">Estilo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <select id="cmbIestwar" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoExercicio" runat="server" class="col-xs-4 control-label">Tipo Exercicio:</asp:Label>
                                    <div class="col-xs-4">
                                        <select id="cmbItipexer" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtAdmissNeg" runat="server" class="col-xs-4 control-label">Dt Admiss. Negoc.</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtFeadmiss" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtUltNegoc" runat="server" class="col-xs-4 control-label">Dt Última. Negoc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtFeultneg" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtVenc" runat="server" class="col-xs-4 control-label">DT de Vencimento:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtFevencim" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbParidadeWarrant" runat="server" class="col-xs-4 control-label">Paridade Warrant:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtParidade" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbLoteMinPExerc" runat="server" class="col-xs-4 control-label">Lote Min. P/Exerc.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtQlotemin" runat="server" CssClass="form-control" MaxLength="5"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndActivo" runat="server" class="col-xs-4 control-label">Ind. Activo Subj.:</asp:Label>
                                    <div class="col-xs-2">
                                        <select id="cmbIactsubj" runat="server" class="form-control"></select>
                                    </div>
                                    <div class="col-xs-6">
                                        <select id="cmbNactsubj" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbMoedaActivo" runat="server" class="col-xs-4 control-label">Moeda Activo Subjacente:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCmoesubj" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbTipoLiquidacao" runat="server" class="col-xs-4 control-label">Tipo Liquidação:</asp:Label>
                                    <div class="col-xs-4">
                                        <select id="cmbCtipoliq" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbPrecoExercicio" runat="server" class="col-xs-4 control-label">Preço Exercício:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtStrike" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbNomeEmitente" runat="server" class="col-xs-4 control-label">Nome Emitente:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNemiten" runat="server" CssClass="form-control" MaxLength="25"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNominativo" runat="server" class="col-xs-4 control-label">Nominativo:</asp:Label>
                                    <div class="col-xs-4">
                                        <select id="cmbInominat" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse2">Panel 1<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNovoValorUnit" runat="server" class="col-xs-4 control-label">Novo Valor Unit.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNovoValorUnit" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbNatJuridica" runat="server" class="col-xs-4 control-label">Natureza Juridica:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNatJuridica" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndicePrincipal" runat="server" class="col-xs-4 control-label">Indice Principal:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtIndicePrincipal" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndiceSecundario" runat="server" class="col-xs-4 control-label">Indice Secundário:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtIndiceSecundario" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse3">Panel 2<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbRetEstranq" runat="server" class="col-xs-4 control-label">% Ret. Estranq.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtRetEstranq" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="Label5" runat="server" class="col-xs-4 control-label">Estilo Warrant:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtEstiloWarrant" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse4">Panel 3<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbExchangeTraded" runat="server" class="col-xs-4 control-label">Exchange Traded Funds:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlExchangeTraded" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="S">Sim</asp:ListItem>
                                            <asp:ListItem Value="N">Não</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse5">Papel Comercial<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndexPrazoInf" runat="server" class="col-xs-4 control-label">Index Prazo Inf.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTprzinf" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndexPrazoSup" runat="server" class="col-xs-4 control-label">Index Prazo Sup.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTprzsup" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDiasIndexInf" runat="server" class="col-xs-4 control-label">Nº Dias Index Inf.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQprzinf" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDiasIndexSup" runat="server" class="col-xs-4 control-label">Nº Dias Index Sup.:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQprzsup" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIndexante" runat="server" class="col-xs-4 control-label">Indexante:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTindexante" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSpread" runat="server" class="col-xs-4 control-label">Spread:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTspreadpc" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbArredondamento" runat="server" class="col-xs-4 control-label">Arredondamento:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTarredond" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTaxaRef" runat="server" class="col-xs-4 control-label">Taxa Referência:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTcambio" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDtCambio" runat="server" class="col-xs-4 control-label">Data de Câmbio:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDcambio" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse6">Taxa Múltipla<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTaxaMin" runat="server" class="col-xs-4 control-label">Taxa Minima:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTxmin" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbTaxaMax" runat="server" class="col-xs-4 control-label">Taxa Máxima:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtTxmax" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse7">Atributos de Investimento<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSubFamilia" runat="server" class="col-xs-4 control-label">SubFamilia:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCsubfam" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbLiquidez" runat="server" class="col-xs-4 control-label">Liquidez:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCliquidprod" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbComplexidade" runat="server" class="col-xs-4 control-label">Complexidade:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtCcomplexinv" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtDcomplexinv" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbHorizontalTemporal" runat="server" class="col-xs-4 control-label">Horizontal Temporal:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtChorizon" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtDhorizon" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbZonaGeo" runat="server" class="col-xs-4 control-label">Zona Geográfica:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtCzongeog" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtDzongeog" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbOnOffReg" runat="server" class="col-xs-4 control-label">OnOff/Regular:</asp:Label>
                                    <div class="col-xs-4">
                                        <select id="cmbConoffregu" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIPad" runat="server" class="col-xs-4 control-label">iPAD:</asp:Label>
                                    <div class="col-xs-3">
                                        <select id="cmbCipad" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNivelRisco" runat="server" class="col-xs-4 control-label">Nivel Risco:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCnivelrisco" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbVar" runat="server" class="col-xs-4 control-label">VaR:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtMvar" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbData" runat="server" class="col-xs-4 control-label">Data:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDvar" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <asp:Label ID="Label1" runat="server" class="col-xs-4 control-label">Descrição:</asp:Label>
                                <div class="col-xs-8">
                                    <asp:TextBox ID="txtGobsrv" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCatClassActiv" runat="server" class="col-xs-4 control-label">Cat./Class.Activ.:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCclaacti" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSoliClassifica" runat="server" class="col-xs-4 control-label">Solicitar Classificação de Risco (S/N):</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCclassrisc" runat="server" CssClass="form-control" size="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDataActiv" runat="server" class="col-xs-4 control-label">Data de Activação:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDtactiva" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="row form-group">
        <div class="col-xs-offset-10">
            <button class="btn btn-default">Limpar</button>
            <button class="btn btn-default col-xs-offset-3">Gravar</button>
        </div>
    </div>
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
