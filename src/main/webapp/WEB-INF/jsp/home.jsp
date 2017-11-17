<%-- 
    Document   : home
    Created on : 30/09/2017, 10:10:21
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
        <link href="<c:url value="/resources/exTemplate/css/text.css" />" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
       
    </head>

<body>

    <!-- Navigation -->
    <nav id="siteNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="cadastroUsuario">Cadastrar Usuario</a>
                    </li>

                </ul>
                
            </div><!-- /.navbar-collapse -->
            </div>
            </nav>
  
	<!-- Header -->
    <header>                
    <div class="header-content">
         
            <div class="header-content-inner">
                <h1>Web Canvas Project</h1>
                
              <form action="login" method="POST"> 
                  <div class="form-group col-md-4 col-md-offset-4">   
                      
                      <input type="email" name="email" id="email" placeholder="E-mail" class="form-control" required="">  
                  </div>
                  <div class = "form-group col-md-4 col-md-offset-4"> 
                       <input  type="password" name="senha" id="senha" placeholder="Senha" class="form-control" required="">
                    </div> 
                    <div class = "form-group col-md-4 col-md-offset-4">                       
                       <input type="submit" id="submit" class="btn btn-primary btn-lg"  value="Login"> 
                      
                       <c:if test="${not empty mensagem}">
                           
                        <script>
                            alert("Usuario ou senha inválidos");
                            
                        </script>
                        
                    </c:if>
                     
                    </div> 
               </div>
              </div>
        
       </form> 
                   
                
                
   </div> 

    </header>
                    
</body>

</html>
