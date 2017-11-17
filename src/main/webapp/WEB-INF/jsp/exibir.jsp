<%-- 
    Document   : exibir
    Created on : 27/09/2017, 20:56:22
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
        <script>
 $(document).ready(function(){
               $.ajax({
                  url:"retorno",
                  dataType: 'json',
                      success:function(data){
                      $.each(data, function (idx,obj){
                          $('#tabela > tbody').append('<tr><td>'+obj.nome+'</td><td>'
                                                                +obj.telefone+'</td><td>'
                                                                +obj.email+'</td><td>'
                                                                +obj.tipo+'</td><td>'
                                                                +obj.login+'</td><td>'
                                                                +obj.senha+'</td></tr>');
                      });
                  }
               }); 
            });
        </script>
        <title>Cadastros</title>
    </head>
    <body>
        <div class="container">
            <table class="table" id="tabela">
                <thead>
                    <tr>
                        <th>NOME</th> 
                        <th>E-MAIL</th>
                        <th>TELEFONE</th>
                        <th>TIPO USER</th>    
                        <th>SENHA</th> 
                        <th>LOGIN</th> 
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${lista}" var="atributo">
                        <tr>
                            <td>${atributo.nome}</td>
                            <td>${atributo.email}</td>
                            <td>${atributo.telefone}</td>
                            <td>${atributo.tipo}</td>
                            <td>${atributo.login}</td>
                            <td>${atributo.senha}</td>
                        </tr>
                    
                    </c:forEach>
                </tbody>
            </table>
            
        </div>
    </body>
</html>
