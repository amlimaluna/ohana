<%-- 
    Document   : alterar
    Created on : 27/05/2019, 15:17:45
    Author     : amaaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.usuario.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar usuário</title>
    </head>
    <body>
        <center>
<div id="titulo">Cadastro de Usuários</div>
<% Usuario usuario = (Usuario) request.getAttribute("usuario"); %>
<% if (usuario != null) {%>

     <form class="form-horizontal" action="AlterarUsuarioServlet" method="post">
         <p> <div class="campo"><input class="form-control" type="text" name="nome" value="<%= usuario.getNome()%>" /></div> </p>
     <p> <div class="campo"><input class="form-control" type="text" name="login" value="<%= usuario.getEmail()%>" readonly="readonly" /></div></p>
<p> <div class="campo"><input class="form-control" type="password" name="senha" value="<%= usuario.getSenha()%>" /></div></p>
         <p> <div class="controles"> <a class="btn btn-default" href="ListarUsuarioServlet" >Voltar</a> <button class="btn btn-success" type="submit" />Salvar</button>
    </form>
 </div>
<% }%>
</center>

    </body>
</html>
