<%-- 
    Document   : listar
    Created on : 27/05/2019, 15:00:50
    Author     : amaaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="modelo.usuario.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários Cadastrados</title>
    </head>
    <body>
        <center>
    <div id="titulo">Cadastro de Usuários:</div><br><br>
<% List<Usuario> resultado = (List<Usuario>) request.getAttribute("resultado"); %>
<% if (resultado != null && resultado.size() > 0) { %>
<table>
    <tr>
        <th>&nbsp;&nbsp;Login</th>
        <th>&nbsp;&nbsp;Nome</th>
        <th class="controles"></th>
    </tr>
    <% for (Usuario item : resultado) {%>
    <tr>
        <td>&nbsp;&nbsp;<%= item.getEmail()%></td>
        <td>&nbsp;&nbsp;<%= item.getNome()%></td>
        <td>
          &nbsp;&nbsp;  <a class="btn btn-warning" href="ObterUsuarioServlet?login=<%= item.getEmail()%>">Editar</a>&nbsp;<a class="btn btn-danger" href="ExcluirUsuarioServlet?login=<%= item.getEmail()%>">Excluir</a>&nbsp;&nbsp;</td>
        
    </tr>
    <% } %>
    </table></center> <br><br>
    <% }%>
    </body>
</html>
