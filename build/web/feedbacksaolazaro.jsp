<%-- 
    Document   : feedbacksaolazaro
    Created on : 12/05/2019, 19:59:24
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
                <title>FeedBack Abrigo São Lázaro</title>
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
                                  	
        
		
    <div class="mx-md-auto">
			<div class="card m-md-5">
				<div class="card-header bg-warning">
					<h5 class="text-dark text-center">Feedback São Lázaro</h5>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">
						<div class="card-body d-sm-inline d-md-flex row">
                                                    <div class="col-md-4 col-sm-12">
                                                    <img class="img-thumbnail bg-success rounded mr-3" src="images/fotos/Animais/Feedback/1.jpg">
                                                    </div>
                                                    <div class="col-md-8 col-sm-12">
                                                        <p class="card-text p-0 m-0 mt-sm-2">
								<h6 class="text-light bg-success"> Meta alcançada! </h6>
								<br>Conseguimos alcançar nossa meta dessa mês graças ao apoio dos usuários!
                                                                <br><br> Obrigado para:
                                                                <br>Miguel
                                                                <br>Sophia
                                                                <br>Arthur
                                                                <br>Helena
                                                                <br>Bernardo
                                                                <br>Valentina
                                                                
							</p>
                                                    </div>
						</div>
					</li>
					<li class="list-group-item bg-blue"><a href="feedbacks.jsp" class="btn text-light bg-blue w-100 text-center">Ver todos</a></li>
				</ul>
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
