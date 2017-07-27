<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="CA58.aspx.cs" Inherits="ABWebCatalogue.Site.CA58" %>
<%@ Import Namespace="Core.Utils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/commonAB.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">
    <div class="container">
        <div class="panel-content container-fluid form-horizontal">
<%--            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <div class="col-sm-8 col-md-8"></div>
                    <div class="col-sm-4 col-md-4 text-right">
                        <button name="button" type="button" id="btnCriar" class="btns" runat="server" onserverclick="btnCriar_Click">Criar</button>
                        <button name="button" type="button" id="btnEnd" class="btns">Sair</button>
                    </div>
                </div>
            </div>
            <br />
            <br />--%>

            
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
                    <div class="row gHdr">
                        <div class="col-sm-2"><input id="txtFamilia" type="text" runat="server" /></div>
                        <div class="col-sm-1"><input id="txtSubFamilia" type="text" runat="server" /></div>
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
                        <div class="col-sm-1">Acções</div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    
                </FooterTemplate>
            </asp:Repeater>

            <div class="row">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Familia
                            </th>
                            <th>Subfamilia
                            </th>
                            <th>Em comercializacao
                            </th>
                            <th>Estado
                            </th>
                            <th>Produto
                            </th>
                            <th>ISIN
                            </th>
                            <th>ultima alteração
                            </th>
                            <th>Data activacao
                            </th>
                            <th>Data inactivacao
                            </th>
                            <th>Accções
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
                            <td>clara.c.ibm</td>
                            <td>2015-02-05</td>
                            <td>N/A</td>
                            <td>
                                <div>
                                    <a class="glyphicon glyphicon-edit" title="Modificar"></a>
                                    <a class="glyphicon glyphicon-remove-circle" title="Anular"></a>
                                    <a class="glyphicon glyphicon-th-list" title="Visualizar"></a>
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
                        <td>clara.c.ibm</td>
                        <td>2015-02-05</td>
                        <td>N/A</td>
                        <td>
                            <div>
                                <a class="glyphicon glyphicon-edit" title="editar"></a>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
                            <td>clara.c.ibm</td>
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
                            <td>frederico.g.everis</td>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
                            <td>paulo.r.ibm</td>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
                            <td>frederico.g.everis</td>
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
                            <td>SYS</td>
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
                            <td>SYS</td>
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
    </div>
</asp:Content>
