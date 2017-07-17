﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA58.aspx.cs" Inherits="ABWebCatalogue.Site.CA58" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
	 <div class="container-fluid">
		<div class="row">
				<div class="col-md-12">
			
					<div class="col-md-1 col-md-offset-10" >	
                        <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" OnClick="btnPesquisar_Click" />
						<%--<a href="filtrar.html">					
						<button class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" type="button">
							Pesquisar
						</button>
						</a>--%>
					</div>
						<div class="col-md-1">
                            <asp:Button ID="btnCriar" runat="server" Text="Criar" class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" OnClick="btnCriar_Click" />
						<%--<a href="criar.html">
						<button class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" type="button">
							Criar
						</button>
						</a>--%>
					</div>
				</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>
								Familia
							</th>
							<th>
								Subfamilia
							</th>
							<th>
								Em comercializacao
							</th>
							<th>
								Estado
							</th>
							<th>
								Produto
							</th>
							<th>
								ISIN
							</th>
							<th>
								ultima alteração
							</th>
							<th>
								Data activacao
							</th>
								<th>
								Data inactivacao
							</th>
								<th>
								Accções
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Rendimento Fixo</td>
							<td>Obrigações</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>1310 - TITULOS</td>
							<td>ISIN TESTE</td>
							<td >clara.c.ibm</td>
							<td>2015-02-05</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Rendimento Variável</td>
							<td>Acções</td>
							<td>Sim</td>
							<td>Activo</td>
							<td>13A5 - TCRV-RESIDENTES</td>
							<td>ISIN TESTE</td>
							<td>SYS</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
							<td>Rendimento Fixo</td>
							<td>Obrigações</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>1310 - TITULOS</td>
							<td>ISIN TESTE</td>
							<td >clara.c.ibm</td>
							<td>2015-02-05</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Rendimento Fixo</td>
							<td>Obrigações Estruturadas</td>
							<td>Sim</td>
							<td>Activo</td>
							<td>113A9 - TC-MEDIUM TERM NOTES</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Rendimento Variável</td>
							<td>Acções</td>
							<td>Sim</td>
							<td>Activo</td>
							<td>13E4 - I-SHARE/ETF-NAO RESIDENTE</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Rendimento Fixo</td>
							<td>Obrigações</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>1310 - TITULOS</td>
							<td>ISIN TESTE</td>
							<td >clara.c.ibm</td>
							<td>2015-02-05</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Seguros de Investimento</td>
							<td>Seguros Unit Linked</td>
							<td>Sim</td>
							<td>Em Modificação</td>
							<td>3501 - B I TESOURARIA</td>
							<td>ISIN TESTE</td>
							<td >frederico.g.everis</td>
							<td>2015-01-24</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Seguros de Investimento</td>
							<td>Seguros Unit Linked</td>
							<td>Não</td>
							<td>Activo</td>
							<td>3506 - SEVEN II</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td>2015-01-24</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Seguros de Investimento</td>
							<td>Seguros Unit Linked</td>
							<td>Não</td>
							<td>Activo</td>
							<td>3516 - REND. UTILITIES 2</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td>2015-01-24</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Seguros de Investimento</td>
							<td>Seguros de Poupança</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>3511 - REND. FIXO 2013 S5</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Depósitos Complexos</td>
							<td>Depósitos Indexados</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>6002 - DEPOSITO BARCLAYS MULTI-DIVISA</td>
							<td>ISIN TESTE</td>
							<td >paulo.r.ibm</td>
							<td>2017-06-02</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
									<td>Depósitos Complexos</td>
							<td>Depósitos Indexados</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>6079 - DP SETE MAIS SERIE PREMIUM</td>
							<td></td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
								<td>Depósitos Complexos</td>
							<td>Depósitos Indexados</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>60M5 - DEPOSITO ESPECIAL EMPRESAS</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>			
						<tr>
							<td>Fundos de Investimento</td>
							<td>Fundos Monetários </td>
							<td>Sim</td>
							<td>Activo</td>
							<td>150C - SISF INDIAN EQTY/B</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td>2015-01-24</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>			
						<tr>
							<td>Fundos de Investimento</td>
							<td>Fundos Obrigações</td>
							<td>Sim</td>
							<td>Activo</td>
							<td>61552 - BARCLAYS GLOBAL MODERADO</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>					
						<tr>
							<td>Fundos de Investimento</td>
							<td>Fundos Obrigações</td>
							<td>Sim</td>
							<td>Em Modificação</td>
							<td>15ZQ - SISF G C C EQ EUH/B</td>
							<td>ISIN TESTE</td>
							<td >frederico.g.everis</td>
							<td>2015-01-24</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>				
						<tr>
							<td>Fundos de Investimento</td>
							<td>Fundos Investimento Alternativos (FIA)</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>1501 - FP MULTIMANA GER F.</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td>2015-01-24</td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
						<tr>
							<td>Fundos de Investimento</td>
							<td>Fundos Capital de Risco</td>
							<td>Não</td>
							<td>Em Criação</td>
							<td>15BL - UBS LUX ABS.R.MED/B</td>
							<td>ISIN TESTE</td>
							<td >SYS</td>
							<td></td>
							<td>N/A</td>
							<td> 
								<div>
									<a class="glyphicon glyphicon-edit"></a>
									<a class="glyphicon glyphicon-remove-circle"></a>
									<a class="glyphicon glyphicon-th-list"></a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</asp:Content>