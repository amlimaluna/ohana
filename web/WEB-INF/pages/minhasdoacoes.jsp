<%-- 
    Document   : minhasdoacoes
    Created on : 12/05/2019, 20:33:27
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
                <title>Minhas Doações</title>
                <meta name="viewport" content="width=device-width, user-scalable=no">

	</head>
	<body class="gray">
        <br>
        
         		<div class="text-center btn-doar d-md-none">
		<button class="btn rounded-circle p-3 bg-blue b-shadow" ><a href="doacoes.jsp" class="text-light">Doar</a></button>
		</div>
     
	
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
				  
				  <li class="nav-item">
				    <a class="nav-link text-blue" href="novoUsuario.jsp">cadastrar</a>
				  </li>
				  <li class="nav-item">
				    <a class="rounded nav-link bg-blue text-light" href="login.jsp">login</a>
				  </li>
                                  <li class="rounded nav-item d-none bg-warning d-md-block px-3 ml-4">
				    <a class="nav-link  text-light" href="doacoes.jsp">Doar</a>
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
                                  <li class="nav-item nav-brand d-none d-md-block">
                                    <a class="nav-link text-blue" href="VerRecompensasServlet">Recompensas</a>
                                  </li>
                                  <li class="nav-item nav-brand d-none d-md-block">
                                    <a class="nav-link text-blue" href="VerDoacaoUsuarioServlet">Agendamentos</a>
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

                                                  <li class="rounded nav-item d-none bg-warning d-md-block px-3 ml-4">
                                                    <a class="nav-link  text-light" href="doacoes.jsp">Doar</a>
                                                  </li>
					
				</ul>
                                                            </div>
                                   
                                     
                                            </nav>
                                            
                                            
                                            <ul class="nav nav-tabs navbar-expand bg-light fixed-bottom text-center b-shadow d-md-none">
		  <li class="nav-item mx-auto wds5 border-right">
		    <a class="nav-link text-blue" href="VerRecompensasServlet">Recompensas</a>
		  </li>
		  <li class="nav-item mx-auto wds5">
		    <a class="nav-link text-blue" href="VerDoacaoUsuarioServlet">Agendamentos</a>
		  </li>
		</ul>
                                  <% } %>
                                  
                                  
                                  
      <br>
		<br>
		<br>
		<div class="">
			<h5 class="text-center"> Minhas Doações</h5>
		</div>
		<div class="mx-md-auto p-0 m-0 col-md-8">
			<div class="card m-md-5">
  <div class="card-header bg-warning"> 
    <ul class="nav nav-tabs card-header-tabs pull-right"  id="myTab" role="tablist">
      <li class="nav-item">
       <a class="nav-link active text-dark" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Agendadas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-dark" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Concluídas</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
   <div class="tab-content" id="myTabContent">
             <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
             	<div>
			<div class="card">
			  <div class="card-body">
			  	<p class="text-warning">
        		Código: AbC234
        		</p>
			    <h5 class="card-title text-blue">Arrecadação de ração</h5>
			    <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro
				    <small>
				    	<p class="card-text"> <br> Ração para filhotes, ração para adultos </p>
				    	<p class="card-text"> 23/07/2020</p>
				    </small>
			    </h6>
			 </div>
			</div>
		</div>
		<div>
			<div class="card">
			  <div class="card-body">
			  	<p class="text-warning">
        		Código: AbC234
        		</p>
			    <h5 class="card-title text-blue">Arrecadação de ração</h5>
			    <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro
				    <small>
				    	<p class="card-text"> <br> Ração para filhotes, ração para adultos </p>
				    	<p class="card-text"> 23/07/2020</p>
				    </small>
			    </h6>
			 </div>
			</div>
		</div>
             </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
  	<div>
			<div class="card">
			  
			  <div class="card-body">
			  	<p class="text-warning">
        		Código: AbC234
        		</p>
			    <h5 class="card-title text-blue">Arrecadação de ração</h5>
			    <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro
			    <small>
				    <p class="card-text"> <br> Ração para filhotes, ração para adultos </p>
				    <p class="card-text"> 23/07/2020</p>
				</small>
				</h6>
			 </div>
			</div>
		</div>
  </div>
  
        </div>
  </div>
</div>
</div>
		
			<br>
			<br>
                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>        
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>
