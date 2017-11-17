<%-- 
    Document   : CadastroUsuario
    Created on : 24/09/2017, 23:11:05
    Author     : Mari
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/exTemplate/css/bootstrap.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/exTemplate/css/custom.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
    <body>        
    <!-- Navigation -->
    <nav id="siteNav" class="navbar navbar-default navbar-fixed-top BarraSuperior" role="navigation">
        <p class="navbar-text pull-left tituloPagina"><% out.print(session.getAttribute("nome")); %></p>
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
    <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">               
                <ul class="nav navbar-nav navbar-right ">

                    <li class="active">
                        <a href="cadastroUsuario">Painel Usuário</a>
                    </li>			
                    <li>
                        <a href="logout">Logout</a>
                    </li>
                </ul>
                
            </div>
        </div>
    </nav>
        <div class="body-contentPainel">
            <table>
                <tr class="col-auto">
                    <td >
                        <a href="cadastroUsuario">
                            <img class="img-responsive" src="resources/exTemplate/images/cadUser.jpg"></imagem>
                        </a>
                        <h5 class="h5">Cadatrar Usuário</h5>
                    </td>
                    <td>
                      <a href="cadastrarPortfolio">
                          <img class="img-responsive" src="resources/exTemplate/images/addPortifolios_2.jpg"></imagem>
                      </a>
                            <h5 class="h5">Adicionar Portfolio</h5>                
                </td>
                <td>
                   <a href="cadastrarCanvas">
                    <img class="img-responsive" src="resources/exTemplate/images/cadUser.jpg"></imagem>
                   </a>
                   <h5 class="h5Canvas">Canvas</h5>                
                </td>
                <td>
                   <a href="listaPortfolio">
                    <img class="img-responsive" src="resources/exTemplate/images/cadUser.jpg"></imagem>
                   </a>
                   <h5 class="h5">Visualizar Portfolios</h5>                
                </td>
                </tr>
                
            </table>
            </div>

    </body>
</html>