<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="ABCatalogue.Site.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1 col-md-offset-11 " >
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" OnClick="btnVoltar_Click"/>	
                </div>
            </div>
        </div>
    </div>
	<br/>
	<div class="row">
		<div class="col-md-12 ">
		    <h1 class="col-md-offset-5">Criar novo produto</h1>
		    <br/>
            <%--<div class="form-group">
                <label class="col-xs-3 control-label">Familia</label>
                <div class="col-xs-2 selectContainer">
                    <select class="form-control" name="size">
                        <option value="">selecione</option>
                        <option value="s">Títulos (Z4, Z5, Z6, Z11, Z12, Z13 e Z14)</option>
                        <option value="m">Depósitos (Z9 e Z10)</option>
                        <option value="l">Seguros (Z7 e Z8)</option>
                        <option value="xl">Fundos de Investimento (Z1 e Z2)</option>
                    </select>
                </div>
            </div>--%>

            <div class="form-group">
                <label class="col-xs-3 control-label">SubFamilia</label>
                <div class="col-xs-2 selectContainer">
                    <asp:DropDownList ID="ddlSubFamilia" runat="server" CssClass="form-control"></asp:DropDownList>
                   <%-- <select class="form-control" name="color">
                        <option value="">selecione</option>
                        <option value="black">SubFamilia teste</option>
                        <option value="green">SubFamilia teste</option>
                        <option value="red">SubFamilia teste</option>
                        <option value="yellow">SubFamilia teste</option>
                        <option value="white">SubFamilia teste</option>
                    </select>--%>
                </div>
            </div>

	       <%-- <div class="form-group">
                <label class="col-xs-3 control-label">Produto/SubProduto</label>
                <div class="col-xs-2 selectContainer">
                <select class="form-control" name="color">
                    <option value="">selecione</option>
                    <option value="black">Produto teste</option>
                    <option value="green">Produto teste</option>
                    <option value="red">Produto teste</option>
                    <option value="yellow">Produto teste</option>
                    <option value="white">Produto teste</option>
                </select>
            </div>
            </div>--%>

            <div class="form-group">
                <div class="col-xs-5 col-xs-offset-5">
	            <a href="index.html">	
                    <button  class="btn btn-default btn-danger">Cancelar</button>
		            </a>
		            <button class="btn btn-default col-xs-offset-1 btn-success">Criar produto</button>
                </div>
            </div>
		</div>
	</div>
</asp:Content>
