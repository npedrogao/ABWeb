<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPages/DefaultMaster.Master"  CodeBehind="Ap34BootstrapTest.aspx.cs" Inherits="ABWebCatalogue.Site.Ap34BootstrapTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<script src="../js/util.js"></script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    
    <asp:Label ID="lblCProduto" runat="server" CssClass="col-lg-2 text-right lbl">Produto:</asp:Label>
    <div class="col-lg-1">
        <asp:TextBox ID="txtCPRODUTO" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
    </div>
    <div class="col-lg-4">
        <select id="cmbCPRODUTO" runat="server" class="form-control t-field-t"></select>
        <%--<asp:TextBox ID="txtGProduto" runat="server" CssClass="form-control t-field-t"></asp:TextBox>--%>
    </div>
</asp:Content>
