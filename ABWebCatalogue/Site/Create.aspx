<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="ABWebCatalogue.Site.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="content">
        <div class="panel-body container-fluid form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="row form-group">
                        <div class="col-lg-4">
                            <label class="col-lg-4 lbl text-center">MicroFamilia</label>
                            <div class="col-lg-6">
                                <select id="cmbMicroFamilia" runat="server" class="form-control t-field-sel"></select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <input type="button" runat="server" class="btns col-lg-offset-1 " id="btnCreate" value="Criar Produto" onserverclick="btnCreate_Click" />
                            <input type="button" runat="server" class="btns" id="btnVoltar" value="Voltar" onserverclick="btnVoltar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
