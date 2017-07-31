<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA58.aspx.cs" Inherits="ABWebCatalogue.Site.CA58" %>

<%@ Import Namespace="Core.Utils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="panel-content container-fluid form-horizontal">
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <div class="col-sm-8 col-md-8"></div>
                    <div class="col-sm-4 col-md-4 text-right">
                        <button name="button" type="button" id="btnCriar" class="btns" runat="server" onserverclick="btnCriar_Click">Criar</button>
                        <button name="button" type="button" id="btnEnd" class="btns">Sair</button>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <div class="row form-group">
                        <div class="col-sm-4 col-md-4 col-lg-2">
                            <label class="col-lg-2 text-right lbl">Familia:</label>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <select id="cmbFamilia" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-3">
                            <label class="col-lg-4 text-right lbl">Sub Familia:</label>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <select id="cmbSubFamilia" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-2">
                            <label class="col-lg-6 text-right lbl">Em Comercialização:</label>
                            <div class="col-sm-3 col-md-3 col-lg-3">
                                <select id="cmbEmComercializacao" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-2">
                            <label class="col-lg-2 text-right lbl">Estado:</label>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <select id="cmbEstado" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-3">
                            <label class="col-lg-2 text-right lbl">Produto:</label>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <select id="cmbProduto" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                    </div>
                    <div class="row text-right">
                        <button name="button" type="button" id="btnPesquisar" class="btns">Pesquisar</button>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <asp:Repeater runat="server" ID="rptLista">
                <HeaderTemplate>
                    <div class="row gHdr">
                        <div class="col-sm-2">Familia</div>
                        <div class="col-sm-1">SubFamilia</div>
                        <div class="col-sm-1" title="Em comercializacao">Em comercia.</div>
                        <div class="col-sm-1">Estado</div>
                        <div class="col-sm-2">Produto</div>
                        <div class="col-sm-1">ISIN</div>
                        <div class="col-sm-1" title="Utilizador da última alteração">Última alteração</div>
                        <div class="col-sm-1">Data activação</div>
                        <div class="col-sm-1">Data inactivação</div>
                        <div class="col-sm-1">Acções</div>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="<%# Container.ItemIndex % 2 == 0 ? "row gRow" : "row gRowAlt" %>">
                        <div class="col-sm-2"><%# Eval("Familia") %></div>
                        <div class="col-sm-1"><%# Eval("SubFamilia") %></div>
                        <div class="col-sm-1"><%# Eval("EmComercializacao") %></div>
                        <div class="col-sm-1"><%# Eval("Estado") %></div>
                        <div class="col-sm-2"><%# Eval("Produto") %></div>
                        <div class="col-sm-1"><%# Eval("ISIN") %></div>
                        <div class="col-sm-1"><%# Eval("UltimaAlteracao") %></div>
                        <div class="col-sm-1"><%# WebUtil.DtToStr(Eval("DataActivacao"), "N/A")%></div>
                        <div class="col-sm-1"><%# WebUtil.DtToStr(Eval("DataInactivacao"), "N/A")%></div>
                        <div class="col-sm-1 accoes">
                            <a class="glyphicon glyphicon-edit" title="Modificar"></a>
                            <a class="glyphicon glyphicon-remove-circle" title="Anular"></a>
                            <a class="glyphicon glyphicon-th-list" title="Visualizar"></a>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            <br />
            <hr class="hr" />
        </div>
    </div>
</asp:Content>
