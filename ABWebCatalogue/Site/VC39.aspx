<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VC39.aspx.cs" Inherits="ABWebCatalogue.Site.VC39" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap-datepicker.min.js"></script>
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
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="title">
            <asp:Label ID="lblTransaction" runat="server"></asp:Label>
        </div>
        <div class="panel-content panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row form-group">
                        <div class="col-xs-6">
                            <label class="col-xs-4 control-label">Produto</label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtProd" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <label class="col-xs-4 control-label">Sub Produto</label>
                            <div class="col-xs-4">
                                <asp:TextBox ID="txtSubProd" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-xs-6">
                            <label class="col-xs-4 control-label">Nome</label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse1">Parametros Gerais<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-8">
                                    <label class="col-xs-4 control-label">Tipo Produto</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTipo" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtGtip" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <div class="col-xs-8">
                                    <label class="col-xs-4 control-label">Moeda</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCmoe" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtGmoe" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row from-group">
                                <div class="col-xs-8">
                                    <label class="col-xs-4 control-label">Conta Produto</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCbal" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNcta" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">CAPOANO</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCapo" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">ZAPOLICE</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtZapo" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">CCERTIF</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCeti" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">CCERANO</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCera" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Conta IT'S</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCba1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNct1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">NIB da Conta GV</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtBank" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtBalc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCnum" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtDigc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Base Cálculo</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQbas" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Sequenciador de Apolices</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCseq" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Decimais UP'S</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQdec" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Número de Alterações</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQalt" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Validade Propostas:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtQprp" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Dias úteis:</label>
                                    <div class="col-xs-4">
                                        <select id="cmbDuti" runat="server" class="form-control"></select>
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
                        <a data-toggle="collapse" href="#collapse2">Durações<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-2 control-label">Minimo:</label>
                                    <div class="col-xs-5">
                                        <div class="col-xs-8">
                                            <asp:TextBox ID="txtQANOMIN" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <label class="col-xs-1 control-label">Anos</label>
                                        <div class="col-xs-3"></div>
                                    </div>
                                    <div class="col-xs-5">
                                        <div class="col-xs-8">
                                            <asp:TextBox ID="txtQMINDIA" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <label class="col-xs-1 control-label">Dias</label>
                                        <div class="col-xs-3"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-2 control-label">Maximo:</label>
                                    <div class="col-xs-5">
                                        <div class="col-xs-8">
                                            <asp:TextBox ID="txtQANOMAX" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <label class="col-xs-1 control-label">Anos</label>
                                        <div class="col-xs-3"></div>
                                    </div>
                                    <div class="col-xs-5">
                                        <div class="col-xs-8">
                                            <asp:TextBox ID="txtQMAXDIA" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <label class="col-xs-1 control-label">Dias</label>
                                        <div class="col-xs-3"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-6 control-label">Data De Vencimento:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDVENCIM" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse3">Taxas e Encargos<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Tx.Bonific.:</label>
                                    <div class="col-xs-8 input-group">
                                        <asp:TextBox ID="txtTBONEMP" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Tx.Comissão:</label>
                                    <div class="col-xs-8 input-group">
                                        <asp:TextBox ID="txtTCOMISS" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Tx.Par.Resg.:</label>
                                    <div class="col-xs-8 input-group">
                                        <asp:TextBox ID="txtTPARRESG" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Tx.Garant.:</label>
                                    <div class="col-xs-8 input-group">
                                        <asp:TextBox ID="txtTGARANT" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Tx.Pen.Trfo:</label>
                                    <div class="col-xs-8 input-group">
                                        <asp:TextBox ID="txtTPENTRFO" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Vl.Resg.Min.:</label>
                                    <div class="col-xs-8 input-group">
                                        <asp:TextBox ID="txtMRESGMIN" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon">Eur.</span>
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
                        <a data-toggle="collapse" href="#collapse3">Atributos de Investimento<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbSubFamilia" class="col-xs-4 control-label">SubFamilia:</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtSubFamiliaDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label id="lbLiquidez" class="col-xs-4 control-label">Liquidez:</label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtLiquidez" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbComplexidade" class="col-xs-4 control-label">Complexidade:</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtComplexidade" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbHorizonteTemporal" class="col-xs-4 control-label">Horizonte Temporal:</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtHorizonteTemporal" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label id="lbZonaGeografica" class="col-xs-4 control-label">Zona Geográfica:</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtZonaGeografica" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbOnOffRegular" class="col-xs-4 control-label">OnOff/Regular:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtOnOffRegular" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-4">
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label id="lbIpad" class="col-xs-4 control-label">iPAD:</label>
                                    <div class="col-xs-4">
                                        <select id="cmbIpad" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbNivelRisco" class="col-xs-4 control-label">Nivel Risco:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNivelRisco" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label id="lbVaR" class="col-xs-4 control-label">VaR:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtVaR" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbData" class="col-xs-4 control-label">Data:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtData" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label id="lbDescricao" class="col-xs-2 control-label">Descrição:</label>
                                <div class="col-xs-10">
                                    <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbCatClass" class="col-xs-4 control-label">Cat./Class.activ.:</label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCatClassActiv" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCatClassActivDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label id="lbSolicitarClassRisco" class="col-xs-8 control-label">Solicitar classificação de Risco:</label>
                                    <div class="col-xs-4">
                                        <select id="cmbSolicitarClassRisco" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <label id="lbDataActivacao" class="col-xs-6 control-label">Data de Activação:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtDataActivacao" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse5">Incentivos<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-6 control-label">Comissão de Distribuição:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtComDistrib" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse6">Tomador e Pessoas Seguras<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Idade Minima:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtQIDADMIN" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Idade Máxima:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtQIDADMAX" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Idade Default:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQIDADDEF" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Idade Max. Subs.:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtQIDADSUB" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Nº Pessoas Seguras:</label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtNPESSSEG" runat="server" CssClass="form-control"></asp:TextBox>%
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
                        <a data-toggle="collapse" href="#collapse7">Resseguro<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Cód. Tratado:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCTRATADO" runat="server" CssClass="form-control"></asp:TextBox>%
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
                        <a data-toggle="collapse" href="#collapse8">Custos<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse8" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Acta:</label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtMACTA" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Apólice:</label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtMCAPOL" runat="server" CssClass="form-control"></asp:TextBox>%
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
                        <a data-toggle="collapse" href="#collapse9">Coperacs<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse9" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                            </div>
                            <div class="row from-group">
                                <label class="col-xs-4 control-label">Tx.Penalização:</label>
                                <div class="col-xs-8">
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTPARESG1" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTPARESG2" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTPARESG3" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTPARESG4" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTPARESG5" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtTPARESG6" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <label class="col-xs-4 control-label">Até:</label>
                                <div class="col-xs-8">
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtQANORES1" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtQANORES2" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtQANORES3" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtQANORES4" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtQANORES5" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtQANORES6" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <label class="col-xs-4 control-label">Data:</label>
                                <div class="col-xs-8">
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDPRESG1" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDPRESG2" runat="server" CssClass="form-control"></asp:TextBox>ºAno
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtDPRESG3" runat="server" CssClass="form-control"></asp:TextBox>ºAno
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
                        <a data-toggle="collapse" href="#collapse10">Contabilidade<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse10" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">COPERSG.:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCopersg" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">Prod.c/ PPP:</label>
                                    <div class="col-xs-4">
                                        <select id="cmbCopersgppp" runat="server" class="form-control"></select>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">COPERSG PPP:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtIcobppp" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse11">Fundo Associado<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse11" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-4">
                                    <label class="col-xs-4 control-label">SubProduto:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtSubpfund" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Conta:</label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCbalfund" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtCtafundo" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse12">Encargos de Alterção Modalidade<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse12" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-3 control-label">ENC1:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtTencmod1" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <label class="col-xs-3 control-label">MONT1:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtMencmod1" runat="server" CssClass="form-control"></asp:TextBox>Eur
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-3 control-label">ENC4:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtTencmod4" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <label class="col-xs-3 control-label">MONT4:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtMencmod4" runat="server" CssClass="form-control"></asp:TextBox>Eur
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-3 control-label">ENC2:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtTencmod2" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <label class="col-xs-3 control-label">MONT2:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtMencmod2" runat="server" CssClass="form-control"></asp:TextBox>Eur
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-3 control-label">ENC5:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtTencmod5" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <label class="col-xs-3 control-label">MONT5:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtMencmod5" runat="server" CssClass="form-control"></asp:TextBox>Eur
                                    </div>
                                </div>
                            </div>
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-3 control-label">ENC3:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtTencmod3" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <label class="col-xs-3 control-label">MONT3:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtMencmod3" runat="server" CssClass="form-control"></asp:TextBox>Eur
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-3 control-label">ENC6:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtTencmod6" runat="server" CssClass="form-control"></asp:TextBox>%
                                    </div>
                                    <label class="col-xs-3 control-label">MONT6:</label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtMencmod6" runat="server" CssClass="form-control"></asp:TextBox>Eur
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
                        <a data-toggle="collapse" href="#collapse13">PRORROGAMENTO<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse13" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <label class="col-xs-4 control-label">Anos:</label>
                                <div class="col-xs-4">
                                    <asp:TextBox ID="txtQprorrog" runat="server" CssClass="form-control"></asp:TextBox>%
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse16">VALIDAÇÕES (vida risco)<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse14" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                                <div class="col-xs-6">
                                    <label class="col-xs-6 control-label">Validade de Duração de Contrato:</label>
                                    <div class="col-xs-6">
                                        <select id="cmbIvaldur" runat="server" class="form-control"></select>
                                        </div>
                                </div>
                                <div class="col-xs-6">
                                    <label class="col-xs-4 control-label">Base de Cálculo:</label>
                                    <div class="col-xs-6">
                                        <select id="cmbIbasecal" runat="server" class="form-control"></select>
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
                        <a data-toggle="collapse" href="#collapse16">REVALIDAÇÃO de CAPITAL<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse15" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse16">INDICADORES<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse16" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row from-group">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    </div>
    <div class="row">
        <hr class="hr" />
    </div>


</asp:Content>
