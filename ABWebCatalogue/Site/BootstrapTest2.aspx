<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapTest2.aspx.cs" Inherits="ABWebCatalogue.Site.BootstrapTest2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~\css\bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="~\css\bootstrap-ie7fix.css" type="text/css" rel="stylesheet" />
    <link href="~\css\bankinter.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <script src="../JavaScript/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="../JavaScript/bootstrap.js" type="text/javascript"></script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">

                <div class="col-xs-8 col-md-10">&nbsp;</div>
			    <div class="col-xs-2 col-md-1">	
                    <a href="filtrar.html">
                        <button class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" type="button">
                            Pesquisar
                        </button>
                    </a>
                </div>
                <div class="col-xs-2 col-md-1">
                    <a href="criar.html">
                        <button class="btn btn-primary btn-lg" style="background-color: #F06F24; border-color: #F06F24;" type="button">
                            Criar
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <br></br>
        <div class="row">
            <div class="col-md-12">
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
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
