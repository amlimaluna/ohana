<%-- 
    Document   : VerUsuario
    Created on : 22/04/2019, 12:54:57
    Author     : amaaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
                <link href="https://fonts.googleapis.com/css?family=Comfortaa&display=swap" rel="stylesheet">
                <title>Meus dados</title>
                    
		<meta name="viewport" content="width=device-width, user-scalable=no">

	</head>
	<body class="gray">
		<nav class="nav navbar-expand bg-light fixed-top justify-content-between">
			<div class="navbar-header nav-item m-2 dropleft">
				<a class=" navbar-brand dropdown-toggle text-blue" href="index.jsp">
				    Voltar
				  </a>
			</div>
		</nav>
			

            <br><br><br>
            
<div class="card mx-auto" style="width: 18rem;">
		  <div class="card-header bg-warning">
		    <h5 style="color: black; text-align: center">Perfil</h5>
		  </div>
		  				<div> 
                          <jsp:useBean id="usuario" class="modelo.usuario.Usuario" scope="request" />
                          
                          
                          <ul class="list-group list-group-flush">
		    <li class="list-group-item">
		    	<div class="form-group">
                            <h6 class="card-text">Nome:</h6>
    				<jsp:getProperty name="usuario" property="nome" />
  				</div>
  			</li>

  			<li class="list-group-item">
  				<div class="form-group">
                                    <h6 class="card-text">Email:</h6>
    				<jsp:getProperty name="usuario" property="email" />
  				</div>
		    </li>

		    <li class="list-group-item">
		    	<div class="form-group"> <h6 class="card-text">Senha:</h6>
                            <input type="password" value="<jsp:getProperty name="usuario" property="senha"/>"  readonly="readonly" style=" border: 0 none; outline: none " />
  				</div>
  			</li>
		</ul>
                          
                         
                        </div>
            
       <li class="list-group-item bg-blue text-center"><a class="text-light"href="ObterUsuarioServlet?email=<%= usuario.getEmail()%>">Editar</a></li>
</div>
		<br>
		<br>
		<br>
		

       
        <%
                if (request.getAttribute("mensagem") != null) {
            %>
            <div class="mensagem"><%= request.getAttribute("mensagem").toString()%></div>
            <br><br>
            <%
                }
            %>
            

                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>

       

