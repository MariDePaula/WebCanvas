<%-- 
    Document   : gerenciarProjeto
    Created on : 29/10/2017, 13:08:57
    Author     : Mari
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<c:url value="/resources/PgGerenciaUser/vendor/bootstrap/css/bootstrap.css" />" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="<c:url value="/resources/PgGerenciaUser/vendor/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/resources/PgGerenciaUser/vendor/devicons/css/devicons.min.css"  />" rel="stylesheet" />
    <link href="<c:url value="/resources/PgGerenciaUser/vendor/simple-line-icons/css/simple-line-icons.css"  />" rel="stylesheet" />
    <link href="<c:url value="/resources/PgGerenciaUser/css/resume.min.css" />" rel="stylesheet" />
    <c:set var="user" value="${usuario}" scope="session" />
    <c:set var="nome" value="${nome}" scope="session" />
    
    <script src="<c:url value="/resources/js/jquery-3.2.1.js" />"></script>
    
    </head>
   <body id="page-top">
     <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-none d-lg-block">
            <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="resources/Image/profile.jpg" alt="">
            <p><% out.print(session.getAttribute("nome")); %> </p>
        </span>
      </a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="cadastrarCanvas">Canvas</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#projetos">Projetos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#cadastrarUsuario">Cadastrar Usuario</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#cadastroPortifolio">Cadastro Portfolio</a>
          </li>
        </ul>
      </div>
         <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="logout">Sair</a>
          </li>
       </ul>
    </nav>
<!-- CADASTRO PORTFOLIO -->

    <div class="container-fluid p-0">
      <section class="resume-section p-3 p-lg-5 d-flex " id="cadastroPortifolio">
   <div class="my-auto">                
       <form action="gravacadastrarPortfolio" method="POST" > 
                <div class="form-group">
                Descrição 
                
                <input type="text" name="descricao" id="descricao" class="form-control" required="">
                </div> 
                
                <div class="form-group">
                Período 
                <input type="text" name="periodo" id="periodo" class="form-control" required="">
                </div>
                <div class="form-group">
                Situação
                <br>
                <input type="radio" name="ativo" id="ativo" value="true" required=""> Ativo
                <div>
                <input type="radio" name="ativo" id="ativo" value="false" required=""> Inativo
                </div>
                </div>                
                <div class="form-group">
                    <input type="submit" id="submit" class="btn Botoes" value="Cadastrar">
                    <a href="home" class="btn Botoes">Cancelar</a>
                <c:if test="${not empty mensagem}">                           
                        <script>
                            alert("Cadastrado Com Sucesso");
                            
                        </script>
                    </c:if>
             </form>
            </div>          
          
           
            </div>
      </section>
    </div>
<!-- BUSCA PROJETOS -->
      <section class="resume-section p-3 p-lg-5 d-flex " id="projetos" > 
        
        <script>
            
            $(document).ready(function(){
                          $.ajax({
                            url:"retorno",
                             dataType: 'json',
                             success:function(data){
                                 $.each(data, function (obj){
                                     $('#tabela > tbody').append('<tr><td>'
                                             +obj.descricao+'</td><td>'
                                             +obj.periodo+'</td><td>'
                                             +obj.ativo+'</td><td>');
                                 });
                             }
                         
                          }); 
                       });
        </script>
   <div class="my-auto">                
    <div class="container">
                <table class="table" id="tabela">
                    <thead>
                        <tr>
                            <th>DESCRICAO</th> 
                            <th>PERÍODO</th>
                            <th>ATIVO</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${lista}" var="atributo">
                            <tr>
                                <td>${atributo.descricao}</td>
                                <td>${atributo.periodo}</td>
                                <td>${atributo.ativo}</td>
                            </tr>

                        </c:forEach>
                </table>

       </div>
   </div>
          </section>



<!-- CADASTRO USUARIO PROJETO -->   
<section class="resume-section p-3 p-lg-5 d-flex " id="cadastrarUsuario">
   <div class="my-auto">
        
                
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
                <input type="radio" name="tipo" id="tipo" value="admin" onclick= 'exibeCampo();' required=""> Administrador
                <div>
                <input type="radio" name="tipo" id="tipo" value="user" onclick= "exibeCampo();" required=""> Integrante

                <div class="form-group">
                    <input type="submit" id="submit" class="btn Botoes" value="Cadastrar">
                    <a href="home" class="btn Botoes">Cancelar</a>
             </form>

        </div>
       
   </div>
      </section>
   </div>
        
  </body>

</html>