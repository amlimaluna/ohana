<%-- 
    Document   : index
    Created on : 17/04/2019, 00:32:40
    Author     : amaaa
--%>
<%@page import="java.util.List"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
                <link href="https://fonts.googleapis.com/css?family=Comfortaa&display=swap" rel="stylesheet">
		<meta name="viewport" content="width=device-width, user-scalable=no">

	</head>
   <body class="bg-dark">
        

                                  
                       		<div class="text-center btn-doar d-md-none">
		<button class="btn rounded-circle p-3 bg-blue b-shadow" ><a href="doacoes.jsp" class="text-light">Doar</a></button>
		</div>
     
	
				            <% String perfil = (String) session.getAttribute("perfil");
                        String email = (String) session.getAttribute("email");
                        String nome = (String) session.getAttribute("nome");
                        String login= (String) session.getAttribute("login");
                      
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

                                  
                                       <% } if ((email == null) && (login !=null) && (perfil.equals("administrador"))) { %> 
                                       
                                       <ul  class="nav m-2">
				  
				  <li class="nav-item">
				    <a class="nav-link text-blue" href="ListarDoacoesServlet">Doações</a>
				  </li>
				  <li class="nav-item">
				    <a class="rounded nav-link bg-blue text-light" href="ListarUsuarioServlet">Usuários</a>
			
				</ul>
                                       
                                            <% } if (email != null && perfil.equals("usuario")) { %>
                                            
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
		
        
         
            <%
                if (request.getAttribute("mensagem") != null) {
            %>
            <div class="mensagem"><%= request.getAttribute("mensagem").toString()%></div>
            <br><br>
            <%
                }
            %>
            
            
            
		
		<!-- Carousel -->
                <br>
		
		<div id="carouselExampleIndicators" class="carousel slide mx-md-auto justify-content-center bg-blue" style="-webkit-overflow-scrolling: touch;" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active"> <!-- Carousel item -->
		      		<a href="http://www.facebook.com.br/"><img class="d-block w-100 col-md-7" src="images/fotos/Animais/Eventos/1.jpg" alt="First slide"></a>
		      		<div class="carousel-caption text-md-right mb-md-5 pl-mb-5 ">
			    		<a href="VerDoacoesServlet">
			    			<h4 class="text-light d-none d-sm-block">Evento de adoção</h4>
				    		<p class="text-light bg-bluea col-md-3 float-md-right">
                                                            Ganhe um novo amigo dia 23/05!
						</p>
					</a>
			  		</div>
		    	</div>

		    	<div class="carousel-item"> <!-- Carousel item -->
		      		<a href="VerDoacoesServlet"><img class="d-block w-100 col-md-7" src="images/img.jpg" alt="Second slide"></a>
		      		<div class="carousel-caption text-md-right mb-md-5">
			    		<a href="VerDoacoesServlet">
			    			<h4 class="text-light d-none d-sm-block">Arrecadação de ração</h4>
				    		<p>
							<img class="icone" src="images/yração.png">
							<img class="icone" src="images/yração.png">
							    
							</p>
						</a>
			  		</div>
		    	</div>

			    <div class="carousel-item"> <!-- Carousel item -->
		      		<a href="VerDoacoesServlet"><img class="d-block w-100 col-md-7" src="images/fotos/Animais/Doações/1.jpg" alt="Third slide"></a>
		      		<div class="carousel-caption text-md-right mb-md-5">
			    		<a href="VerDoacoesServlet">
			    			<h4 class="text-light d-none d-sm-block">Arrecadação de ração</h4>
				    		<p>
								<img class="icone" src="images/yalimento.png">
							    
							    <img class="icone" src="images/yração.png">
							</p>
						</a>
			  		</div>
		    	</div>

			</div>

			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			</a>

		</div>


		<br>
                <%  if (email == null) { %>
		<!-- Bem vindo -->
		<br>
		<div class="border border-warning bordere col-md-4 mx-md-auto">
			<p>
			  <h3 class="text-center text-warning">Bem-vindo ao Ohana!</h3>
			  <div class="d-flex justify-content-center">
				 <button class="btn bg-blue"> <a class="text-light" href="sobre.jsp"> Conheça </a></button>
			  </div>
			</p>

			
			</div>
                
		<br>

                          <% } %>
		
            <div class="bg-white">
		<hr class="border-warning h-1">
		<!-- Título de cards de doção-->
		<div class="card-header bg-warning col-md-3 mx-md-auto mb-2 rounded">
				<h5 class="text-dark text-center">Doações ativas</h5>
                             
		</div>
		
                
                    
                
                
		<!-- Cards de doação -->
		<div class="container-fluid padding"> <!-- div container -->
			<div class="row padding">
				<!-- Card-->
				<div class="col-md-4">
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
				<div class="col-md-4 d-none d-md-block ">
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
				<div class="col-md-4 d-none d-md-block">
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



				
				
			</div>
				
                </div>
                <div class="card mx-auto mt-2 mb-3 col-md-3 p-0 m-0 "><!-- Botão ver mais-->
					<a class="btn text-light bg-blue" href="doacoes.jsp">
					    Ver mais doações
					 </a>
				</div>
                


		
                <hr class="border-warning h-1">
</div>
                
			
		<!-- Feedback-->
                <br>
                            <div class="mx-md-auto p-0 m-0 col-md-8">
			<div class="card bg-dark">
				<div class="card-header bg-warning">
					<h5 class="text-dark">Feedback</h5>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">
						<div class="card-body d-block">
							<h5 class="card-title">Arrecadação Lázaro</h5>
							<img class="float-left wds rounded mr-3" src="images/fotos/Animais/Feedback/1.jpg">
							<p class="card-text">Conseguimos alcançar nossa meta desse mês!</p>
							<a href="feedbacksaolazaro.jsp" class="card-link text-blue">Ver mais</a>
						</div>
					</li>
					<li class="list-group-item bg-blue "><a href="feedbacks.jsp" class="text-light">Ver todos</a></li>
                                </ul>
                        </div>
                            </div> 
	
                <div class="bg-white">		
                <hr class="border-warning h-1">
		<!-- Eventos --> 
                <br>
                            		<div class="mx-md-auto p-0 m-0 col-md-8">
			<div class="card">
				<div class="card-header bg-warning">
					<h5 class="text-dark">Últimos Eventos</h5>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><a href="https://facebook.com.br">Evento de adoção (23/05)</a></li>
					<li class="list-group-item"><a href="https://facebook.com.br">Visita ao Abrigo Três Irmãs (20/05)</a></li>
					<li class="list-group-item"><a href="https://facebook.com.br">Evento de doação (31/04)</a></li>
					<li class="list-group-item bg-blue"><a href="eventos.jsp" class="text-light">Mais eventos</a></li>
				</ul>
                        </div> </div> 
		<br>
		
                
		
                </div>
		

				<!-- Footer -->
		<footer class="page-footer font-small blue pt-4 bg-dark text-blue">

		    <!-- Footer Links -->
		    <div class="container-fluid text-center text-md-left">

		      <!-- Grid row -->
		      <div class="row">

		        <!-- Grid column -->
		        <div class="col-md-6 mt-md-0 mt-3">

		          <!-- Content -->
		          <h5 class="text-uppercase">Ohana</h5>
		          <p>Marcando os corações com nossa digital.</p>

		        </div>
		        <!-- Grid column -->

		        <hr class="clearfix w-100 d-md-none pb-3">

		        <!-- Grid column -->
		        <div class="col-md-3 mb-md-0 mb-3">

		            <!-- Links -->
		            <h5 class="text-uppercase">Sobre</h5>

		            <ul class="list-unstyled">
		              <li>
		                <a href="sobre.jsp">Conheça</a>
		              </li>
		            </ul>

		          </div>
		          <!-- Grid column -->

		          <!-- Grid column -->
		          <div class="col-md-3 mb-md-0 mb-3">

		            <!-- Links -->
		            <h5 class="text-uppercase">Parceiros</h5>

		            <ul class="list-unstyled">
		              <li>
		                <a href="#!">Abrigo São Lázaro</a>
		              </li>
		              <li>
		                <a href="#!">Abrigo Três Irmãs</a>
		              </li>
		              <li>
		                <a href="#!">Abrigo das Crianças</a>
		              </li>
		              
		            </ul>

		          </div>
		          <!-- Grid column -->

		      </div>
		      <!-- Grid row -->

		    </div>
		    <!-- Footer Links -->

		    <!-- Copyright -->
		    <div class="footer-copyright text-center py-3">© 2019.1 Copyright:
		      <a href=""> Ohana - Equipe Aloha - Projeto Integrado 2</a>
		    </div>
		    <!-- Copyright -->

		  </footer>
		  <!-- Footer -->

		
	
		
                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                
	
    </body>
</html>
