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
        <p class="navbar-text pull-left tituloPagina">Cadastro Usuário</p>
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
                   
                    <li>
                        <a href="home">Home</a>
                    </li>
                    <li class="active">
                        <a href="cadastroUsuario">Cadastrar</a>
                    </li>
			
                    <li>
                        <a href="#">Contato</a>
                    </li>
                </ul>
                
            </div>
        </div>
    </nav>

        <div class=" col-lg-6 cadastro">
                
                <form action="gravar" method="POST"> 
            
                <div class="form-group">
                Nome 
                <input type="text" name="nome" id="nome" class="form-control" required="">
                </div> 
                
                <div class="form-group">
                E-mail 
                <input type="email" name="email" id="email" class="form-control" required="">
                </div>
                
                <div class="form-group">
                Telefone 
                <input type="number" name="telefone" id="telefone" class="form-control" required="">
                </div>
                
                <div class="form-group">
                Senha 
                <input type="password" name="senha" id="senha" class="form-control" required="">
                </div>
                
                <div class="form-group">
                Tipo de Usuário
                <br>
                <input type="radio" name="tipo" id="tipo" value="admin" required=""> Administrador
                <div>
                <input type="radio" name="tipo" id="tipo" value="user" required=""> Integrante
                </div>
                </div>
                <div class="form-group">
                    <input type="submit" id="submit" class="btn Botoes" value="Cadastrar">
                    <a href="home" class="btn Botoes">Cancelar</a>
                                                                    
                <c:if test="${not empty mensagem}">                 
                        <script>
                            alert("<c:out value="${requestScope.mensagem}"/>"); 
                            
                        </script>                        
                </c:if>

        <c:if test="${not empty mensagemError}">                 
                        <script>
                            alert("<c:out value="${requestScope.mensagemError}"/>");  
                        </script> 
                        
        </c:if>
             </form>

        </div>
    
    </body>
</html>
