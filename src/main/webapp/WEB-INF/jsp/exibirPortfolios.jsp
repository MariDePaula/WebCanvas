<%-- 
    Document   : exibirPortfolios
    Created on : 12/11/2017, 20:56:22
    Author     : Mari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" />
        <script src="<c:url value="/resources/js/jquery-3.2.1.js" />"></script>
        
        <link href="<c:url value="/resources/exTemplate/css/bootstrap.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/exTemplate/css/custom.css" />" rel="stylesheet" />
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

        <script>
 $(document).ready(function(){
               $.ajax({
                  url:"portfolios",
                  dataType: 'json',
                      success:function(data){
                      $.each(data, function (idx,obj){
                          $('#tabela > tbody').append('<tr><td>'+obj.descricao +'</td><td>'
                                                                +obj.periodo+'</td><td>'
                                                                +obj.situacao+'</td><td>'
                                                                +'<a>Add Usuario</a>'+'</td><td>'
                                                                +'<a href="cadastrarCanvas">Add Usuario</a>'+'</td></tr>');
                      });
                  }
               }); 
            });
        </script>
        <title>Portfolios</title>
    </head>
  <body>  
    <!-- Navigation -->
    <nav id="siteNav" class="navbar navbar-default navbar-fixed-top BarraSuperior" role="navigation">
        <p class="navbar-text pull-left tituloPagina">Usuario <% out.print(session.getAttribute("nome")); %></p>
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
                        <a href="cadastroUsuario">Cadastrar Canvas</a>
                    </li>
                                       
                    <li>
                        <a href="painelUsuario">Voltar</a>
                    </li>
			
                    <li>
                        <a href="logout">Logout</a>
                    </li>
                </ul>
                
            </div>
        </div>
    </nav>
        
        <div class="body-contentListaPortfolio">
        <div class="container">
            <table class="table" id="tabela">
                <thead>
                    <tr>
                        <th>Descrição</th> 
                        <th>Periodo</th>
                        <th>Situação</th>
                        <th>Adiciona Usuário</th>
                        <th>Adiciona Projeto</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${lista}" var="atributo">
                        <tr>
                            <td>${atributo.descricao}</td>
                            <td>${atributo.periodo}</td>
                            <td>${atributo.situacao}</td>
                            
                        </tr>
                    
                    </c:forEach>
                </tbody>
            </table>
            
        </div>
        </div>        
    </body>
</html>
