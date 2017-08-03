<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/DefaultMaster.Master" CodeBehind="ABTest.aspx.cs" Inherits="ABWebCatalogue.Site.ABTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">

    <div class="row form-group padding-row">
        <div class="col-lg-6 ">
            <asp:Label ID="lblIRenovac" runat="server" class="col-lg-2 text-right lbl">Renovações Automáticas:</asp:Label>
            <div class="col-lg-1">
                <select id="cmbIRenovac" runat="server" class="form-control t-field-t"></select>
            </div>
        </div>
        <div class="col-lg-6 ">
            <asp:Label ID="lblQMAXREN" runat="server" class="col-lg-2 text-right lbl">Nr. Máximo Renovações:</asp:Label>
            <div class="col-lg-1">
                <asp:TextBox ID="txtQMAXREN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
            </div>
        </div>
    </div>
</asp:Content>
