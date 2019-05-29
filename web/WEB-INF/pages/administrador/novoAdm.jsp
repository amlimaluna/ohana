<%-- 
    Document   : novoAdm
    Created on : 24/04/2019, 23:54:38
    Author     : amaaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
<div class="container">
           <div id="titulo">Adicione um novo funcionário:</div> <br>
        <form action="IncluirAdmServlet" method="post">
            <p> <input class="form-control" type="text" name="nome" placeholder="Nome" /> </p> <br>
            <p> <input class="form-control" type="text" name="login" placeholder="Login" /> </p> <br>
            <p> <input class="form-control" type="password" name="senha" placeholder="Senha" /> </p> <br>
 
            <div> <a class="btn btn-default" href="ListarAdmServlet" >Voltar</a> <button type="submit" class="btn btn-success" />Adicionar</button></div>           
        </form>
           
 </div>
                <% } %> <br><br> </center>
    </body>
</html>
