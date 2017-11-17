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

    <form action="gravarCanvas" method="POST" class="body-content Canvas"> 
        <div class="form-group input">          
                <input type="text" name="Portfolio" id="Portfolio" class="form-control portfolio" placeholder="Portfolio" required="">
                <input type="text" name="descricao" id="descricao" class="form-control portfolio" placeholder="Descrição" required="">
        </div> 
        <div class="externoTable">    
            <div class="externoLeft">                 
                <div class="externoTable">
                        <div class="box first left Justificativa ">
                            <textarea class="textArea first Justificativa" name="Justificativa" id="Justificativa" maxlength="255"></textarea> 
                        </div>
                        <div class="box first left Produto">
                            <textarea class="textArea first Justificativa" name="Produto" id="Produto" maxlength="255"></textarea>
                        </div>
                </div>                
                <div class="externoTable">
                        <div class="box first left ObjSmart">
                          <textarea class="textArea first Justificativa" name="ObjSmart" id="ObjSmart" maxlength="255"></textarea> 
                        </div> 
                        <div class="box first left Requisitos">
                            <textarea class="textArea first Requisitos" name="Requisitos" id="Requisitos" maxlength="255"></textarea>
                        </div>
                        <div class="box first left Beneficios">
                            <textarea class="textArea first Beneficios" name="Beneficios" id="Beneficios" maxlength="255"></textarea>
                        </div>                   
                </div>
            </div>
            <div class="externoLeft">
                 <div class="externoTable">
                        <div class="box right Stakeholders">
                            <textarea class="textArea second" name="Stakeholders" id="Stakeholders" maxlength="255"></textarea> 
                        </div>
                        <div class="box right Premissas">
                            <textarea class="textArea second" name="Premissas" id="Premissas" maxlength="255"></textarea> 
                        </div>
                            <div class="box right Riscos">
                            <textarea class="textArea second" name="Riscos" id="Riscos" maxlength="255"></textarea> 
                        </div>                     
                </div> 
                <div class="externoLeft">
                        <div class="box right Equipe">
                            <textarea class="textArea second" name="Equipe" id="Equipe" maxlength="255"></textarea> 
                        </div>
                        <div class="box right GrEntregas">
                            <textarea class="textArea second" name="GrupoEntregas" id="GrupoEntregas" maxlength="255"></textarea> 
                        </div>
                        <div class="box right LinhaTempo">
                            <textarea class="textArea LinhaTempo" name="LinhaTempo" id="LinhaTempo" maxlength="255"></textarea>
                        </div>
                        <div class="box right Custos"> 
                            <textarea class="textArea Custos" name="Custos" id="Custos" maxlength="255"></textarea> 
                        </div>                    
                        <div class="box right Restricoes">
                            <textarea class="textArea Restricoes" name="Restricoes" id="Restricoes" maxlength="255"></textarea> 
                        </div>                       
                </div>
        </div>
        </form>
        <c:if test="${not empty mensagem}">                 
                        <script>
                            alert("Cadastrado com sucesso");
                            
                        </script>                        
                    </c:if>
                                        
                <div class="form-group btcanvas">
                    <input type="submit" id="submit" class="btn Botoes btcanvas" value="Cadastrar">
                    <input type="reset" id="reset" class="btn Botoes btcanvas" value="Limpar">
                </div>
    </body>
</html>
