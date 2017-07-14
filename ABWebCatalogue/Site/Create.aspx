<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="ABWebCatalogue.Site.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="row form-group">
                        <div class="col-xs-6">
                            <label class="col-xs-4 control-label">MicroFamilia</label>
                            <div class="col-xs-8 selectContainer">
                                <asp:DropDownList ID="ddlMicroFamilia" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="col-xs-12 pull-left">
                                <input type="button" runat="server" class="btn btn-default col-xs-offset-1 btn-success" id="btnCreate" value="Criar Produto" onserverclick="btnCreate_Click" />
                                <input type="button" runat="server" class="btn btn-default col-xs-offset-1 btn-success" id="btnVoltar" value="Voltar" onserverclick="btnVoltar_Click" />

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
