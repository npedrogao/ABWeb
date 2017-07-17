<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AP34.aspx.cs" Inherits="ABWebCatalogue.Site.AP34" %>

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
        <div class="title"><asp:Label ID="lblTransaction" runat="server"></asp:Label></div>
        <div class="panel-content panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-xs-12 ">
                    <div class="row form-group">
                        <div class="col-xs-6">
                            <asp:Label ID="Label8" runat="server" class="col-xs-4 control-label">Código de Produto:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtCodProduto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCodProdutoDesc" runat="server" MaxLength="30" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <asp:Label ID="Label9" runat="server" class="col-xs-4 control-label">Código do SubProduto:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtCodSubProduto" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtCodSubProdutoDesc" runat="server" MaxLength="30" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group ">
                        <div class="col-xs-6">
                            <asp:Label ID="Label6" runat="server" class="col-xs-4 control-label">Classe:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtClasse" runat="server" MaxLength="3" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtClasseDesc" runat="server" MaxLength="30" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <asp:Label ID="Label7" runat="server" class="col-xs-4 control-label">Moeda:</asp:Label>
                            <div class="col-xs-2">
                                <asp:TextBox ID="txtMoeda" runat="server" MaxLength="3" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtMoeda2" runat="server" MaxLength="30" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group ">
                        <div class="col-xs-6">
                            <asp:Label ID="Label5" runat="server" class="col-xs-4 control-label">Estado:</asp:Label>
                            <div class="col-xs-2">
                                <asp:DropDownList ID="ddlEstado" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="txtEstadoDesc" runat="server" MaxLength="30" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group ">
                        <div class="col-xs-6">
                            <asp:Label ID="Label4" runat="server" class="col-xs-4 control-label">Data de Início:</asp:Label>
                            <div class="col-xs-6">
                                <asp:TextBox runat="server" ID="txtDataInicio" ReadOnly="true" Width="80px"></asp:TextBox>
                                <%--<input id="txtDataInicio" type="date" runat="server" class="form-control" />--%>
                            </div>

                        </div>
                        <div class="col-xs-6">
                            <asp:Label ID="Label3" runat="server" class="col-xs-4 control-label">Data de Fim:</asp:Label>
                            <div class="col-xs-6">
                                 <asp:TextBox runat="server" ID="txtDataFim" ReadOnly="true" Width="80px"></asp:TextBox>
                                <%--<input id="txtDataFim" type="date" runat="server" class="form-control" />--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-title">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" href="#collapse2">Características Gerais<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label2" runat="server" class="col-xs-4 control-label">Prazo Absoluto:</asp:Label>
                                    <div class="col-xs-4">
                                        <%--<select id="select" runat="server"></select>--%>
                                        <asp:DropDownList ID="ddlPrazoAbsoluto" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label1" runat="server" class="col-xs-4 control-label">Prod/SubP Contab:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtProdSubPContab" runat="server" MaxLength="1" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtProdSubPContab2" runat="server" MaxLength="1" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtProdSubPContabDesc" runat="server" MaxLength="1" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbFinalidade" runat="server" class="col-xs-4 control-label">Finalidade Bankinter:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtFinalidade" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtFinalidadeDesc" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-xs-6">
                                    <asp:Label ID="lbDeclaracao" runat="server" class="col-xs-4 control-label">Declaração IRS:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlDeclaracao" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbRepTranches" runat="server" class="col-xs-4 control-label">Rep. Tranches:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlRepTranches" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbCodAgregado" runat="server" class="col-xs-4 control-label">Cód. Agregado:</asp:Label>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCodAgregado" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse3">Renovações<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbRenovacoes" runat="server" class="col-xs-4 control-label">Renovações Automáticas:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlRenovacoes" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbNumRenovacoes" runat="server" class="col-xs-4 control-label">Nr. Máximo Renovações:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtNumRenovacoes" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse4">Operações<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbMobilizacaoAntecipada" runat="server" class="col-xs-4 control-label">Mobilização Antecipada:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlMobilizacaoAntecipada" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbReforcoAutorizado" runat="server" class="col-xs-4 control-label">Reforço Autorizado:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlReforcoAutorizado" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbDiasNUteis" runat="server" class="col-xs-4 control-label">Dias Não Úteis:</asp:Label>
                                    <div class="col-xs-4">

                                        <asp:DropDownList ID="DDLDiasNUteis" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbDiasAntecip" runat="server" class="col-xs-4 control-label">Dias Antecipação:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="DDLDiasAntecip" CssClass="form-control" runat="server">
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
                        <a data-toggle="collapse" href="#collapse5">Débito<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbDebito" runat="server" class="col-xs-4 control-label">Débito forçado:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlDebito" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbNumTentativas" runat="server" class="col-xs-4 control-label">Nr. Tentativas:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtNumTentativas" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse6">Validação Cliente <span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbProdNCliente" runat="server" class="col-xs-4 control-label">Prod. Novo Cliente:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlProdNCliente" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbNumDiasCliente" runat="server" class="col-xs-4 control-label">Nr. Dias Novo Cliente:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="txtNumDiasCliente" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbCampanahExcepcao" runat="server" class="col-xs-4 control-label">Campanha Excepção:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCampanhaExcepcao" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCampanhaExcepcaoDesc" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse7">Cross Selling<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12 ">
                            <div class="row form-group">
                                <div class="col-xs-6">
                                    <asp:Label ID="lbConstituicao" runat="server" class="col-xs-4 control-label">Constituição:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtConstituicao" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtConstituicaoDesc" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="lbVencimento" runat="server" class="col-xs-4 control-label">Vencimento:</asp:Label>
                                    <div class="col-xs-3">
                                        <asp:TextBox ID="txtVencimento" runat="server" CssClass="form-control" MaxLength="4"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-5">
                                        <asp:TextBox ID="txtVencimentoDesc" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
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
                        <a data-toggle="collapse" href="#collapse8">Atributos Investimento<span class="glyphicon glyphicon-plus pull-right"></span></a>
                    </h4>
                </div>
                <div id="collapse8" class="panel-content panel-collapse collapse">
                    <div class="row panel-body container-fluid form-horizontal">
                        <div class="col-xs-12">
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSubFamilia" runat="server" class="col-xs-4 control-label">SubFamilia:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtSubFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtSubFamiliaDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbLiquidez" runat="server" class="col-xs-4 control-label">Liquidez:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtLiquidez" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbComplexidade" runat="server" class="col-xs-4 control-label">Complexidade:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtComplexidade" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtComplexidadeDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbHorizonteTemporal" runat="server" class="col-xs-4 control-label">Horizonte Temporal:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtHorizonteTemporal" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtHorizonteTemporalDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbZonaGeografica" runat="server" class="col-xs-4 control-label">Zona Geográfica:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtZonaGeografica" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtZonaGeograficaDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbOnOffRegular" runat="server" class="col-xs-4 control-label">OnOff/Regular:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtOnOffRegular" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbIpad" runat="server" class="col-xs-4 control-label">iPAD:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtIpad" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbNivelRisco" runat="server" class="col-xs-4 control-label">Nivel Risco:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtNivelRisco" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbVaR" runat="server" class="col-xs-4 control-label">VaR:</asp:Label>
                                    <div class="col-xs-8">
                                        <asp:TextBox ID="txtVaR" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbData" runat="server" class="col-xs-4 control-label">Data:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox runat="server" ID="txtData" ReadOnly="true" Width="80px"></asp:TextBox>
                                        <%--input id="txtData" type="date" runat="server" class="form-control" />--%>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDescricao" runat="server" class="col-xs-4 control-label">Descrição:</asp:Label>
                                    <div class="col-xs-8">
                                        <textarea id="txtDescricao" runat="server" style="resize: none" class="form-control " cols="20" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-xs-4">
                                    <asp:Label ID="lbCatClass" runat="server" class="col-xs-4 control-label">Cat./Class.activ.:</asp:Label>
                                    <div class="col-xs-2">
                                        <asp:TextBox ID="txtCatClass" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox ID="txtCatClassDesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbSolicitarClassRisco" runat="server" class="col-xs-8 control-label">Solicitar classificação de Risco:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="ddlSolicitarClassRisco" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-xs-4">
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Label ID="lbDataActivacao" runat="server" class="col-xs-4 control-label">Data de Activação:</asp:Label>
                                    <div class="col-xs-4">
                                        <asp:TextBox runat="server" ID="txtDataActivacao" ReadOnly="true" Width="80px"></asp:TextBox>
                                        <%--<input id="txtDataActivacao" type="date" runat="server" class="form-control" />--%>
                                    </div>
                                </div>
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
