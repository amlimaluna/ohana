<%-- 
    Document   : doacoes
    Created on : 12/05/2019, 16:46:24
    Author     : amaaa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
                <link href="https://fonts.googleapis.com/css?family=Comfortaa&display=swap" rel="stylesheet">
                <title>Doações em andamento</title>
		<meta name="viewport" content="width=device-width, user-scalable=no">

	</head>
        
    <body class="gray">
         <jsp:useBean id="usuario" class="modelo.usuario.Usuario" scope="request" />
        
				            <% String perfil = (String) session.getAttribute("perfil");
                        String email = (String) session.getAttribute("email");
                        String nome = (String) session.getAttribute("nome");
                      
                        if (email == null) { %> 
				  <nav class="nav navbar-expand bg-light fixed-top justify-content-between">
			<div class="navbar-header nav-item m-2">
                            <a class="navbar-brand" href="index.jsp"><img  class="logoohana pl-md-3" src="images/OhanaLogo.png"></a>
			</div>
                                      
                        <div>
				<ul  class="nav m-2">
				  <li class="nav-item d-none d-md-block">
				    <a class="nav-link  text-warning" href="doacoes.jsp">Doar</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link text-blue" href="novoUsuario.jsp">cadastrar</a>
				  </li>
				  <li class="nav-item">
				    <a class="rounded nav-link bg-blue text-light" href="login.jsp">login</a>
				  </li>
                                  
				</ul>
			</div>
                        
                                  </nav>

                                  
                                       <% } %> 
                                            <% if (email != null && perfil.equals("usuario")) { %>
                                            
               <nav class="nav navbar-expand bg-light fixed-top justify-content-between">
			<div class="navbar-header nav-item m-2">
                            <a class="navbar-brand" href="index.jsp"><img class="logoohana pl-md-3" src="images/OhanaLogo.png"></a>
			</div>
                               
				<ul  class="nav m-2">
                                    <li class="nav-item d-none d-md-block">
				    <a class="nav-link  text-warning" href="doacoes.jsp">Doar</a>
				  </li>
                                  <li class="nav-item nav-brand d-none d-md-block">
                                    <a class="nav-link text-blue" href="VerRecompensasServlet">Recompensas</a>
                                  </li>
                                  <li class="nav-item nav-brand d-none d-md-block">
                                    <a class="nav-link text-blue" href="VerDoacaoUsuarioServlet">Minhas Doações</a>
                                  </li>
				  <li class="nav-brand">
				  </li>
				  <li class="nav-item nav-link nav-brand text-blue">
					  	<div class="dropdown">
						  <a class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   Teste                                       
						  </a>
                                                
						  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						    <button class="dropdown-item" type="button"> <a class="text-blue" href="VerUsuarioServlet"> Perfil </a></button>
						    <button class="dropdown-item" type="button"> <a class="text-blue" href="LogoutServlet"> Sair</a></button>
						  </div>
                                                 </div>   
                                  </li>

                                                  
					
				</ul>
                                                          
                                   
                                     
                                            </nav>
                                            
                                            
                                            <ul class="nav nav-tabs navbar-expand bg-light fixed-bottom text-center b-shadow d-md-none">
		  <li class="nav-item mx-auto wds5 border-right">
		    <a class="nav-link text-blue" href="VerRecompensasServlet">Recompensas</a>
		  </li>
		  <li class="nav-item mx-auto wds5">
		    <a class="nav-link text-blue" href="VerDoacaoUsuarioServlet">Minhas Doações</a>
		  </li>
		</ul>
                                  <% } %> 
        
        
<br>
		<br>
                <br> <br>
                <div class="col-md-3 mx-md-auto rounded">
				<h2 class="text-warning text-center">Doações ativas</h2>
                                <br>         
                </div>
		<!-- Barra de pesquisa-->
		<div>
			<form class="p-0 m-0">
			  <div class="form-row col-11 col-md-4 mx-md-auto">
			    <div class="col-9 col-md-10">
			      <input type="search" class="form-control" placeholder="Digite sua consulta">
			    </div>
			    <div class="col-3 col-md-2">
			      <button class="btn bg-blue text-light" type="submit">Pesquisar</button>
			    </div>
			  </div>
			</form>
		</div>
		<br>

		<!-- Instituições estão apagadas porque não tem ícone-->

                
		<div class="container-fluid">
			<h5 class="text-center"> Categorias </h5>
			<div class="row">
				<div class="mx-auto">
					<div class="col-sm-6 col-md-12">
						<a href=""><img class="iconecat" src="images/alimento.png" alt="alimento"></a>
						<a href=""><img class="iconecat" src="images/brinquedo.png" alt="brinquedo"></a>
						<a href=""><img class="iconecat" src="images/higiene.png" alt="higiene"></a>
						<a href=""><img class="iconecat" src="images/lençois.png" alt="lençois"></a>
						<a href=""><img class="iconecat" src="images/ração.png" alt="ração"></a>
						<a href=""><img class="iconecat" src="images/roupa.png" alt="roupa"></a>
					</div>
				</div>
			</div>
		</div>
		
		<br>
		<br>

	<!-- Lista de doações-->
		<div> 
			
			<div class="dropdown mb-5 d-flex justify-content-center text-light">
				<!-- Filtro-->
			  	<a class="dropdown-toggle bg-blue p-2 rounded" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    	Filtro
			  	</a>
			  	<!-- Opções dropdown de filtro-->
			  	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			    	<a class="dropdown-item" href="#">Mais urgente</a>
			    	<a class="dropdown-item" href="#">Mais recente</a>
			    	<a class="dropdown-item" href="#">Mais antigo</a>
			  	</div>
			</div>
			
		</div>
        		<!-- Cards -->
		<!-- Cards de doação -->
		<div class="container-fluid padding col-md-7"> <!-- div container -->
			<div class="row padding">
				<!-- Card-->
				<div class="col-md-6">
					<div class="card mb-2">
						<a href="VerDoacoesServlet">
						  	<img class="card-img-top img-fluid bg-blue" src="images/fotos/Animais/Doações/1.jpg" alt="Card image cap" style="padding: 20px;">
						</a>
						<div class="card-body">
							<a href="VerDoacoesServlet"><h5 class="card-title text-blue">Arrecadação de ração</h5></a>
						    <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro</h6>
					<p class="card-text"> <img class="icone" src="images/cardração.png"> Ração para filhotes </p> 
						    <p class="card-text"> <img class="icone" src="images/cardração.png"> Ração para adultos </p> 
					  	</div>
					</div>
				</div>
				<br>

				<!-- Card-->
				<div class="col-md-6">
					<div class="card mb-2">
						<a href="VerDoacoesServlet">
						  	<img class="card-img-top img-fluid bg-blue btn-block" src="images/fotos/Idosos/Doações/1.jpg" alt="Card image cap" style="padding: 20px;">
						</a>
						<div class="card-body">
							<a href="VerDoacoesServlet"><h5 class="card-title text-blue">Arrecadação de alimentos e roupa</h5></a>
						    <h6 class="card-subtitle mb-2 text-muted">Abrigo Três Irmãs</h6>
					<p class="card-text"> <img class="icone" src="images/cardalimento.png"> Alimentos não perecíveis </p> 
						    <p class="card-text"> <img class="icone" src="images/cardroupa.png"> Roupas de vários tamanhos </p> 
					  	</div>
					</div>
				</div>
				<br>


				<!-- Card-->
				<div class="col-md-6">
					<div class="card mb-2">
						<a href="VerDoacoesServlet">
						  	<img class="card-img-top img-fluid bg-blue" src="images/fotos/Crianças/Feedback/2.jpg" alt="Card image cap" style="padding: 20px;">
						</a>
						<div class="card-body">
							<a href="VerDoacoesServlet"><h5 class="card-title text-blue">Arrecadação de brinquedos</h5></a>
						    <h6 class="card-subtitle mb-2 text-muted">Abrigo de Crianças</h6>
						<p class="card-text"> <img class="icone" src="images/cardbrinquedo.png"> Brinquedos variados </p>
						    <p class="card-text"> <img class="icone" src="images/cardroupa.png"> Roupas infantis </p> 
					  	</div>
					</div>
				</div>
				<br>

				<!-- Card-->
				<div class="col-md-6">
					<div class="card mb-2">
						<a href="VerDoacoesServlet">
						  	<img class="card-img-top img-fluid bg-blue" src="images/img.jpg" alt="Card image cap" style="padding: 20px;">
						</a>
						<div class="card-body">
							<a href="VerDoacoesServlet"><h5 class="card-title text-blue">Arrecadação de ração</h5></a>
						    <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro</h6>
						    <p class="card-text"> <img class="icone" src="images/cardração.png"> Ração para filhotes </p>
						    <p class="card-text"> <img class="icone" src="images/cardração.png"> Ração para adultos </p>
					  	</div>
					</div>
				</div>
				<br>

				<!-- Card-->
				<div class="col-md-6">
					<div class="card mb-2">
						<a href="VerDoacoesServlet">
						  	<img class="card-img-top img-fluid bg-blue" src="images/img.jpg" alt="Card image cap" style="padding: 20px;">
						</a>
						<div class="card-body">
							<a href="VerDoacoesServlet"><h5 class="card-title text-blue">Arrecadação de ração</h5></a>
						    <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro</h6>
						    <p class="card-text"> <img class="icone" src="images/cardração.png"> Ração sem sódio </p>
						    <p class="card-text"> <img class="icone" src="images/cardração.png"> Ração para adultos </p>
					  	</div>
					</div>
				</div>
				<br>

				<!-- Card-->
				<div class="col-md-6">
					<div class="card mb-2">
						<a href="VerDoacoesServlet">
						  	<img class="card-img-top img-fluid bg-blue" src="images/fotos/Crianças/Eventos/1.jpg" alt="Card image cap" style="padding: 20px;">
						</a>
						<div class="card-body">
							<a href="VerDoacoesServlet"><h5 class="card-title text-blue">Arrecadação de alimento</h5></a>
						    <h6 class="card-subtitle mb-2 text-muted">Abrigo das Crianças</h6>
						    <p class="card-text"> <img class="icone" src="images/cardalimento.png"> Alimentos não perecíveis </p>
						    <p class="card-text"> <img class="icone" src="images/cardalimento.png"> Leite sem lactose </p>
					  	</div>
					</div>
				</div>
				<br>


				
				
			</div>
		</div>

			
			<br>


        
                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
    </body>
</html>
