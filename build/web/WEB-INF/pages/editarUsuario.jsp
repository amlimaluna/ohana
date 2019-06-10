<%-- 
    Document   : editarUsuario
    Created on : 24/04/2019, 14:47:19
    Author     : amaaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.usuario.Usuario"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
                <link href="https://fonts.googleapis.com/css?family=Comfortaa&display=swap" rel="stylesheet">
                <title>Editar dados</title>
                    
		<meta name="viewport" content="width=device-width, user-scalable=no">

	</head>
	<body class="gray">
        <nav class="nav navbar-expand bg-light fixed-top justify-content-between">
			<div class="navbar-header nav-item m-2 dropleft">
				<a class=" navbar-brand dropdown-toggle text-blue" href="VerUsuarioServlet">
				    Voltar
				  </a>
			</div>
		</nav>
            <br><br><br>

<div class="card mx-auto" style="width: 18rem;">
<div class="card-header bg-warning">
	<h5 class="text-dark text-center">Editar Perfil</h5>
</div>
<% Usuario usuario = (Usuario) request.getAttribute("usuario"); %>
<% if (usuario != null) {%>

 
     <form class="form-horizontal" action="AlterarUsuarioServlet" method="post">
     	<ul class="list-group list-group-flush">
		    <li class="list-group-item">
		    	<div class="form-group">
                            <h6 class="card-text">Nome</h6>
    				<input type="text" class="form-control" id="exampleInputEmail1" name="nome" aria-describedby="emailHelp" value="<%= usuario.getNome()%>">
  				</div>
  			</li>

  			<li class="list-group-item">
  				<div class="form-group">
                                     <h6 class="card-text">Email</h6>
    				<input type="text" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" value="<%= usuario.getEmail()%>" readonly="readonly">
  				</div>
		    </li>

		    <li class="list-group-item">
		    	<div class="form-group">
                             <h6 class="card-text">Senha</h6>
    				<input type="text" class="form-control" id="exampleInputEmail1" name="senha" aria-describedby="emailHelp" value="<%= usuario.getSenha()%>">
  				</div>
  			</li>
<button class="bg-blue rounded">
                        <li class="list-group-item bg-blue text-center"><a href="VerUsuarioServlet" class="text-light">Salvar</button></a></li>
		</ul>
  
  </form>
 
<% }%>

            <script src="js/script.js"></script>
            <script src="bootstrap/js/bootstrap.js"></script>
           <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
    </body>
</html>
