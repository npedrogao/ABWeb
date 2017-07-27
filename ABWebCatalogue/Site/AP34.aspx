﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AP34.aspx.cs" Inherits="ABWebCatalogue.Site.AP34" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"> AP34C </asp:Label>
        </div>
        <div class="container-fluid form-horizontal">
            <div class="row">
                <div class="col-lg-12">
                    <br />
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCProduto" runat="server" CssClass="col-lg-2 text-center lbl">Produto:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCProduto" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-8">
                                <select id="cmbCPRODUTO" runat="server" class="form-control t-field-t"></select>
                                <%--<asp:TextBox ID="txtGProduto" runat="server" CssClass="form-control t-field-t"></asp:TextBox>--%>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCSubProd" runat="server" CssClass="col-lg-2 text-center lbl">Sub Produto:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCSubProd" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-8 ">
                                <select id="cmbGSubProd" runat="server" class="form-control t-field-t"></select>
                                <%--<asp:TextBox ID="txtGSubProd" runat="server" CssClass="form-control t-field-t"></asp:TextBox>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCClaPrz" runat="server" CssClass="col-lg-2 text-center lbl">Classe:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCClaPrz" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 ">
                                <select id="cmbCCLAPRZ" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCMOEDA" runat="server" CssClass="col-lg-2 text-center lbl">Moeda:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCMOEDA" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 ">
                                <select id="cmbCMOEDA" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblGESTADO" runat="server" CssClass="col-lg-2 text-center lbl">Estado:</asp:Label>
                            <div class="col-lg-2 ">
                                <select id="cmbCEstado" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-4 ">
                                <asp:TextBox ID="txtGESTADO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDINIVAL" runat="server" CssClass="col-lg-2 text-center lbl">Data de Início:</asp:Label>
                            <div class="col-lg-4 ">
                                <asp:TextBox runat="server" ID="txtDINIVAL" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDFIMVAL" runat="server" CssClass="col-lg-2 text-center lbl">Data de Fim:</asp:Label>
                            <div class="col-lg-4 ">
                                <asp:TextBox runat="server" ID="txtDFIMVAL" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="divCollapseLeft">
                    <a id="btnCloseAll" class="btns" runat="server">Fechar</a>
                    <a id="btnOpenAll" class="btns" runat="server">Abrir</a>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Características Gerais">Características Gerais</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="col-lg-12">
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblIPRZABS" runat="server" class="col-lg-2 text-center lbl">Prazo Absoluto:</asp:Label>
                            <div class="col-lg-2 ">
                                <select id="cmbIPRZABS" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCPRODCNT" runat="server" class="col-lg-2 text-center lbl">Prod/SubP Contab:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCPRODCNT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                <asp:TextBox ID="txtCSPROCNT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                                <select id="cmbCSPROCNT" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCFINBB" runat="server" class="col-lg-2 text-center lbl">Finalidade Bankinter:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCFINBB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 ">
                                <select id="cmbCFINBB" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblIIRS" runat="server" CssClass="col-lg-2 text-center lbll">Declaração IRS:</asp:Label>
                            <div class="col-lg-4 ">
                                <select id="cmbIIRS" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblITRANCHE" runat="server" CssClass="col-lg-2 text-center lbl">Rep. Tranches:</asp:Label>
                            <div class="col-lg-4 ">
                                <select id="cmbITRANCHE" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCAGREGDP" runat="server" CssClass="col-lg-2 text-center lbl">Cód. Agregado:</asp:Label>
                            <div class="col-lg-4 ">
                                <asp:TextBox ID="txtCAGREGDP" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Renovações">Renovações</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIRenovac" runat="server" class="col-lg-2 text-center lbl">Renovações Automáticas:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIRenovac" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQMAXREN" runat="server" class="col-lg-2 text-center lbl">Nr. Máximo Renovações:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtQMAXREN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Operações">Operações</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblILEVANT" runat="server" class="col-lg-2 text-center lbl">Mobilização Antecipada:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbILEVANT" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIAUTREF" runat="server" class="col-lg-2 text-center lbl">Reforço Autorizado:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIAUTREF" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIDiaNUt" runat="server" class="col-lg-2 text-center lbl">Dias Não Úteis:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIDiaNUt" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQDiasAnt" runat="server" class="col-lg-2 text-center lbl">Dias Antecipação:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtQDIASANT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Débito">Débito</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIDEBFOR" runat="server" class="col-lg-2 text-center lbl">Débito forçado:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIDEBFOR" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQTENTDEB" runat="server" class="col-lg-2 text-center lbl">Nr. Tentativas:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtQTENTDEB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Validação Cliente">Validação Cliente</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIPRCLNEW" runat="server" class="col-lg-2 text-center lbl">Prod. Novo Cliente:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIPRCLNEW" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQDIASNCLI" runat="server" class="col-lg-2 text-center lbl">Nr. Dias Novo Cliente:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtQDIASNCLI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCAMPNET" runat="server" class="col-lg-2 text-center lbl">Campanha Excepção:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCCAMPNET" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbGCAMPNET" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>

            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Validação Cliente">Cross Selling</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCXSCONS" runat="server" class="col-lg-2 text-center lbl">Constituição:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCCXSCONS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCCXSCONS" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCXSVENC" runat="server" class="col-lg-2 text-center lbl">Vencimento:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCCXSVENC" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCCXSVENC" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-lg-12 titleAccordion">
                <a class="accordion" title="Validação Cliente">Atributos de Investimento</a>
            </div>
            <div class="row hidden">
                <br />
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCSUBFAM" runat="server" class="col-lg-2 text-center lbl">SubFamília:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCSUBFAM" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCLIQUIDPROD" runat="server" class="col-lg-2 text-center lbl">Liquidez:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCOMPLEXINV" runat="server" class="col-lg-2 text-center lbl">Complexidade:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCCOMPLEXINV" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCHORIZON" runat="server" class="col-lg-2 text-center lbl">Horizonte Temporal:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCHORIZON" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCHORIZON" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCZONGEOG" runat="server" class="col-lg-2 text-center lbl">Zona Geográfica:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCZONGEOG" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCONOFFREGU" runat="server" class="col-lg-2 text-center lbl">OnOff/Regular:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCIPAD" runat="server" class="col-lg-2 text-center lbl">iPAD:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCIPAD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCNIVELRISCO" runat="server" class="col-lg-2 text-center lbl">Nivel Risco:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblMVAR" runat="server" class="col-lg-2 text-center lbl">VaR:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtMVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblDVAR" runat="server" class="col-lg-2 text-center lbl">Data:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox runat="server" ID="txtDVAR" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblGOBSRV" runat="server" class="col-lg-2 text-center lbl">Descrição:</asp:Label>
                        <div class="col-lg-6 ">
                            <asp:TextBox ID="txtGOBSRV" runat="server" Style="resize: none" class="t-field-10" cols="20" Rows="2"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCLAACTI" runat="server" class="col-lg-2 text-center lbl">Cat./Class.activ.:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCLASSRISC" runat="server" class="col-lg-2 text-center lbl">Solicitar classificação de Risco:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox runat="server" ID="txtCCLASSRISC" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblDTACTIVA" runat="server" class="col-lg-2 text-center lbl">Data de Activação:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox runat="server" ID="txtDTACTIVA" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
            </div>

            <hr class="hr" />
            <br />
            <div class="divCollapseLeft">
                <button id="btnClear" class="btns" runat="server" onserverclick="btnClear_Click">Limpar</button>
                <button id="btnSave" class="btns" runat="server" onserverclick="btnSave_Click">Guardar</button>
            </div>
        </div>

    </div>

    <script type="text/javascript">
        $(document).ready(function () {

            JsServerSide();

            $.each($.find('.accordion'), function (index, value) {

                var val = $(value);

                val.click(function () {
                    var panel = val.parent().next();

                    if (panel.hasClass('hidden')) {
                        panel.removeClass('hidden');
                        val.addClass("active");
                    }
                    else {
                        panel.addClass('hidden');
                        val.removeClass("active");
                    }
                })
            });

            $("#CPH_btnOpenAll").on("click", function () {
                $(".row.hidden").each(function () {
                    $(this).removeClass('hidden');

                })
            });


        });


     



    </script>
</asp:Content>
