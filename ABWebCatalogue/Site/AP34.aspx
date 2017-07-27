<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AP34.aspx.cs" Inherits="ABWebCatalogue.Site.AP34" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="titleTransaction">
            <asp:Label ID="lblTransaction" runat="server"> AP34C </asp:Label>
        </div>
        <div class="panel-content container-fluid form-horizontal">
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
                            <asp:Label ID="lblCMOEDA" runat="server" CssClass="col-lg-2  control-label">Moeda:</asp:Label>
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
                            <asp:Label ID="lblGESTADO" runat="server" CssClass="col-lg-2  control-label">Estado:</asp:Label>
                            <div class="col-lg-2 ">
                                <select id="cmbCEstado" runat="server" class="form-control t-field-t"></select>
                            </div>
                            <div class="col-lg-4 ">
                                <asp:TextBox ID="txtGESTADO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDINIVAL" runat="server" CssClass="col-lg-2  control-label">Data de Início:</asp:Label>
                            <div class="col-lg-4 ">
                                <asp:TextBox runat="server" ID="txtDINIVAL" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblDFIMVAL" runat="server" CssClass="col-lg-2  control-label">Data de Fim:</asp:Label>
                            <div class="col-lg-4 ">
                                <asp:TextBox runat="server" ID="txtDFIMVAL" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="divCollapseLeft">
                    <button id="btnCloseAll" class="btns" runat="server" onserverclick="btnCloseAll_Click">Fechar</button>
                    <button id="btnOpenAll" class="btns" runat="server" onserverclick="btnOpenAll_Click">Abrir</button>
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
                            <asp:Label ID="lblIPRZABS" runat="server" class="col-lg-2  control-label">Prazo Absoluto:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtIPRZABS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCPRODCNT" runat="server" class="col-lg-2  control-label">Prod/SubP Contab:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCPRODCNT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCFINBB" runat="server" class="col-lg-2  control-label">Finalidade Bankinter:</asp:Label>
                            <div class="col-lg-2 ">
                                <asp:TextBox ID="txtCFINBB" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 ">
                                <select id="cmbCFINBB" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblIIRS" runat="server" CssClass="col-lg-2  control-label">Declaração IRS:</asp:Label>
                            <div class="col-lg-4 ">
                                <select id="cmbIIRS" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblITRANCHE" runat="server" CssClass="col-lg-2  control-label">Rep. Tranches:</asp:Label>
                            <div class="col-lg-4 ">
                                <asp:TextBox ID="txtITRANCHE" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblCAGREGDP" runat="server" CssClass="col-lg-2  control-label">Cód. Agregado:</asp:Label>
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
                        <asp:Label ID="lblIRenovac" runat="server" class="col-lg-2  control-label">Renovações Automáticas:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIRenovac" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbQMAXREN" runat="server" class="col-lg-2  control-label">Nr. Máximo Renovações:</asp:Label>
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
                        <asp:Label ID="lblILEVANT" runat="server" class="col-lg-4  control-label">Mobilização Antecipada:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="TXTILEVANT" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIAUTREF" runat="server" class="col-lg-4  control-label">Reforço Autorizado:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtIAUTREF" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblIDiaNUt" runat="server" class="col-lg-4  control-label">Dias Não Úteis:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIDiaNUt" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQDiasAnt" runat="server" class="col-lg-4  control-label">Dias Antecipação:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbQDiasAnt" runat="server" class="form-control t-field-t"></select>
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
                        <asp:Label ID="lbIIDEBFOR" runat="server" class="col-lg-4  control-label">Débito forçado:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIIDEBFOR" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQTENTDEB" runat="server" class="col-lg-4  control-label">Nr. Tentativas:</asp:Label>
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
                        <asp:Label ID="lblIPRCLNEW" runat="server" class="col-lg-4  control-label">Prod. Novo Cliente:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbIPRCLNEW" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblQDIASNCLI" runat="server" class="col-lg-4  control-label">Nr. Dias Novo Cliente:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtQDIASNCLI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCAMPNET" runat="server" class="col-lg-4  control-label">Campanha Excepção:</asp:Label>
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
                        <asp:Label ID="lblCCXSCONS" runat="server" class="col-lg-2  control-label">Constituição:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCCXSCONS" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCCXSCONS" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblCCXSVENC" runat="server" class="col-lg-2  control-label">Vencimento:</asp:Label>
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
                        <asp:Label ID="lbCSUBFAM" runat="server" class="col-lg-2  control-label">SubFamília:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCSUBFAM" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCSUBFAM" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCLIQUIDPROD" runat="server" class="col-lg-2  control-label">Liquidez:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCLIQUIDPROD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCCOMPLEXINV" runat="server" class="col-lg-2  control-label">Complexidade:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCCOMPLEXINV" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCCOMPLEXINV" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCHORIZON" runat="server" class="col-lg-2  control-label">Horizonte Temporal:</asp:Label>
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
                        <asp:Label ID="lbCZONGEOG" runat="server" class="col-lg-2  control-label">Zona Geográfica:</asp:Label>
                        <div class="col-lg-2 ">
                            <asp:TextBox ID="txtCZONGEOG" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                        <div class="col-lg-4 ">
                            <select id="cmbCZONGEOG" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCONOFFREGU" runat="server" class="col-lg-2  control-label">OnOff/Regular:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCONOFFREGU" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCIPAD" runat="server" class="col-lg-2  control-label">iPAD:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCIPAD" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCNIVELRISCO" runat="server" class="col-lg-2  control-label">Nivel Risco:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCNIVELRISCO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbMVAR" runat="server" class="col-lg-2  control-label">VaR:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtMVAR" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbDVAR" runat="server" class="col-lg-2  control-label">Data:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox runat="server" ID="txtDVAR" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbGOBSRV" runat="server" class="col-lg-2  control-label">Descrição:</asp:Label>
                        <div class="col-lg-6 ">
                            <asp:TextBox ID="txtGOBSRV" runat="server" Style="resize: none" class="t-field-10" cols="20" Rows="2"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCCLAACTI" runat="server" class="col-lg-2  control-label">Cat./Class.activ.:</asp:Label>
                        <div class="col-lg-4 ">
                            <asp:TextBox ID="txtCCLAACTI" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <asp:Label ID="lbCCLASSRISC" runat="server" class="col-lg-2  control-label">Solicitar classificação de Risco:</asp:Label>
                        <div class="col-lg-4 ">
                            <select id="cmbCCLASSRISC" runat="server" class="form-control t-field-t"></select>
                        </div>
                    </div>
                </div>
                <div class="row form-group padding-row">
                    <div class="col-lg-6 ">
                        <asp:Label ID="lblDTACTIVA" runat="server" class="col-lg-2  control-label">Data de Activação:</asp:Label>
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


    </script>
</asp:Content>
