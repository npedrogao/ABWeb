<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VC37.aspx.cs" Inherits="ABCatalogue.Site.VC37" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="~/JavaScript/GenericFramework.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <div class="content">
        <div class="row">
		    <div class="col-md-4">
			    <div class="col-md-2">
				    <asp:Label ID="lbProduct" runat="server" CssClass="t-label-1">Produto</asp:Label>
			    </div>
			    <div class="col-md-2">
				    <asp:TextBox ID="txtProd" runat="server" CssClass="t-field-1"></asp:TextBox>
			    </div>
			    <div class="col-md-2">
				    <asp:Label ID="lbSubProd" runat="server" CssClass="t-label-1">Sub Produto</asp:Label>
			    </div>
			    <div class="col-md-2">
				    <asp:TextBox ID="txtSubProd" runat="server" CssClass="t-field-1"></asp:TextBox>
			    </div>
		    </div>	
		    <div class="col-md-8">	
			    <div class="col-md-2">
				    <asp:Label ID="lbName" runat="server" CssClass="t-label-1">Nome</asp:Label>
			    </div>
			    <div class="col-md-6">
				   <asp:TextBox ID="txtName" runat="server" CssClass="t-field-1"></asp:TextBox>
			    </div>
		    </div>
	    </div>
    </div>
	<br/>
    <button class="titleAccordion">Parametros Gerais</button>
	<div class="panel">
    <div class="row">
			<div class="col-md-6">
				<div class="form-group"> 
					<div class="col-md-12">
						<div class="col-md-2">
							<asp:Label ID="lbTipoProd" runat="server" class="t-label-1">Tipo Produto</asp:Label>
						</div>
						<div class="col-md-2">
							<asp:TextBox ID="txtTipoProdutoCode" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>
						<div class="col-md-6">
							<asp:TextBox ID="txtTipoProdutoDescr" runat="server"  CssClass="t-field-1"></asp:TextBox>
						</div>
					</div>	
				</div>
				<br/><br/>
				<div class="form-group"> 
					<div class="col-md-12">
						<div class="col-md-2">
                            <asp:Label ID="lbContaProd" runat="server" class="t-label-1">Conta Produto</asp:Label>
						</div>
						<div class="col-md-2">
							<asp:TextBox ID="txtContaProduto" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>
						<div class="col-md-6">
							<asp:TextBox ID="txtContaProdDescr" runat="server"  CssClass="t-field-1"></asp:TextBox>
						</div>
					</div>	
				</div>
				<br/><br/>
				<div class="form-group"> 
					<div class="col-md-12">
						<div class="col-md-2">
                            <asp:Label ID="lbContaIT" runat="server" class="t-label-1">Conta IT'S</asp:Label>
						</div>
						<div class="col-md-2">
                            <asp:TextBox ID="txtContaIT1" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>
						<div class="col-md-6">	
                            <asp:TextBox ID="txtContaIT2" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>	
					</div>
				</div>
				<br/><br/>
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-2">					
                            <asp:Label ID="lbBase" runat="server" class="t-label-1">Base Calculo</asp:Label>
						</div>
						<div class="col-md-6">								
							<asp:TextBox ID="txtBaseCalculo" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>	
					</div>
				</div>	
				<br/><br/>
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-2">	
                            <asp:Label ID="lbDecimais" runat="server" class="t-label-1">Decimais UP'S</asp:Label>		
						</div>
						<div class="col-md-6">
                            <asp:TextBox ID="txtDecimais" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>
					</div>	
				</div>
				<br/><br/>
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-2">			
                            <asp:Label ID="lbNumAlter" runat="server" class="t-label-1">Número de Alterações</asp:Label>
						</div>
						<div class="col-md-6">
                            <asp:TextBox ID="txtNumAlter" runat="server"  CssClass="t-field-14"></asp:TextBox>
						</div>
					</div>	
				</div>
			</div>
				
			<%--<div class="col-md-6">
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-2">
							<label>
								Moeda
							</label>
						</div>
						<div class="col-md-2">
							<input class="form-control" id="exampleInputMoeda" type="text">
						</div>
						<div class="col-md-6">
							<input class="form-control" id="exampleInputMoeda" type="text">
						</div>
					</div>
				</div>	
				<br><br>
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-3">
							<div class="col-md-1">
								<label>
									CAPOANO
								</label>
							</div>	
							<div class="col-md-2">
								<input class="form-control" id="exampleInputCAPOANO" type="text">
							</div>
						</div>	
							
						<div class="col-md-3">
							<div class="col-md-1">
								<label>
									ZAPOLICE
								</label>
							</div>
							<div class="col-md-2">
								<input class="form-control" id="exampleInputZAPOLICE" type="text">
							</div>
						</div>
							
						<div class="col-md-3">
							<div class="col-md-1">
								<label>
									CCERTIF
								</label>
							</div>
							<div class="col-md-2">
								<input class="form-control" id="exampleInputCCERTIF" type="text">
							</div>
						</div>
							
						<div class="col-md-3">
							<div class="col-md-1">
								<label>
									CCERANO
								</label>
							</div>
							<div class="col-md-2">
								<input class="form-control" id="exampleInputCCERANO" type="text">
							</div>
						</div>
					</div>
				</div>
				<br><br>
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-2">
							<label>NIB da Conta GV</label>
						</div>
						<div class="col-md-6">
							<div class="col-md-12">
								<div class="col-md-2">
									<input class="form-control" id="exampleInputNIB" type="text">
								</div>
								<div class="col-md-2">
									<input class="form-control" id="exampleInputCONTAIT" type="text">
								</div>
								<div class="col-md-6">
									<input class="form-control" id="exampleInputCONTAIT" type="text">
								</div>
								<div class="col-md-2">
									<input class="form-control" id="exampleInputCONTAIT" type="text">
								</div>
							</div>
						</div>
					</div>
				</div>
				<br><br>
				<div class="form-group"> 
					<div class="col-md-12">
						<div class="col-md-2">
							<label>Sequenciador de Apolices</label>
						</div>
						<div class="col-md-6">							
							<input class="form-control" id="exampleInputSEQUENCE" type="text">
						</div>
					</div>	
				</div>
				<br><br>
				<div class="form-group">
					<div class="col-md-12">
						<div class="col-md-6">
							<div class="col-md-2">
								<label for="exampleInputVALIDADE">Validade Propostas</label>
							</div>
							<div class="col-md-4">
								<input class="form-control" id="exampleInputVALIDADE" type="text">dias
							</div>
						</div>
						<div class="col-md-6">
							<div class="col-md-2">
								<label>Dias Uteis</label>
							</div>
							<div class="col-md-4">
								<input class="form-control" id="exampleInputDIAS" type="text">(S/N)
							</div>
						</div>
					</div>
						
				</div>
			</div>--%>
		</div>
	</div>		

    <div class="clfx" style="margin-bottom: 5px; margin-right: 3px;">
            <div class="t-box-10">
                <asp:Button ID="btnClean" runat="server" CausesValidation="false" CssClass="t-btn-6"
                    OnClick="btnClean_Click" OnClientClick="javascript:ShowWait();" Text="Limpar" />
                <asp:Button ID="btnSave" runat="server" CausesValidation="false" CssClass="t-btn-1"
                    OnClick="btnSave_Click" OnClientClick="javascript:ShowWait();" Text="Gravar" />
            </div>
        </div>
</asp:Content>
