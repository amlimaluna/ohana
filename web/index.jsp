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
                
            <title> Ohana </title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                <link rel="icon" href="images/Sobre-o-Ohana-4.jpg" />
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
                <link href="https://fonts.googleapis.com/css?family=Comfortaa&display=swap" rel="stylesheet">
		<meta name="viewport" content="width=device-width, user-scalable=no">
                <link rel="stylesheet" href="css/bootstrap-horizon.css">

	</head>
   <body class="">
        
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
                                                            </div>
                                   
                                     
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
		
		<div id="carouselExampleIndicators" class="carousel slide bg-blue" style="-webkit-overflow-scrolling: touch;" data-ride="carousel">
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
				    		<p class="text-light bg-blue col-md-3 float-md-right">
                                                            Ganhe um novo amigo dia 23/05!
						</p>
					</a>
			  		</div>
		    	</div>

		    	<div class="carousel-item"> <!-- Carousel item -->
		      		<a href="VerDoacoesServlet"><img class="d-block w-100 col-md-7" src="images/img.jpg" alt="Second slide"></a>
		      		<div class="carousel-caption text-md-right  mb-md-5">
			    		<a href="VerDoacoesServlet">
			    			<h4 class="text-light d-none d-sm-block">Arrecadação de ração</h4>
				    		<p>
							<img class="iconecat" src="images/yração.png">
							<img class="iconecat" src="images/yração.png">
							    
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
								<img class="iconecat" src="images/yalimento.png">
							    
							    <img class="iconecat" src="images/yração.png">
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
		
                <div class="container">
                    <div class="row p-0 m-0 justify-content-center">
                        <div class="col-sm-12 col-md-12 d-block m-4">
                            <h2 class="text-center text-warning">Bem-vindo ao Ohana!</h2>
                        </div>
                        <div class="col-md-2 col-sm-6 border-warning bordere rounded mr-md-3">
                            <img class="d-md-block d-none mx-auto w-75" src="images/Sobre-o-Ohana-1.jpg">
                            <img class="d-block d-md-none mx-auto w-25" src="images/Sobre-o-Ohana-1.jpg">
                            <p class="text-center">
                                <b>Rápido e prático</b>
                                <br> Escolha o que, quanto e quando doar rapidamente
                            </p>
                        </div>
                        <div class="col-md-2 col-sm-6 border-warning bordere rounded mr-md-3">
                            <img class="d-md-block d-none mx-auto w-75" src="images/Sobre-o-Ohana-2.jpg">
                            <img class="d-block d-md-none mx-auto w-25" src="images/Sobre-o-Ohana-2.jpg">
                            <p class="text-center">
                                <b>Sempre ativo</b>
                                <br> As necessidades das instituições são gerenciadas constantemente
                            </p>
                        </div>
                        <div class="col-md-2 col-sm-12 border-warning bordere rounded mr-md-3">
                            <img class="d-md-block d-none mx-auto w-75" src="images/Sobre-o-Ohana-3.jpg">
                            <img class="d-block d-md-none mx-auto w-25" src="images/Sobre-o-Ohana-3.jpg">
                            <p class="text-center">
                                <b>Ganhe pontos</b>
                                <br> Troque pontos por benefícios
                            </p>
                        </div>
                        <div class="col-md-2 col-sm-6 border-warning bordere rounded">
                            <img class="d-md-block d-none mx-auto w-75" src="images/Sobre-o-Ohana-4.jpg">
                            <img class="d-block d-md-none mx-auto w-25" src="images/Sobre-o-Ohana-4.jpg">
                            <p class="text-center">
                                <b>Gere sorrisos</b>
                                <br> Veja quantas vidas foram impactadas com as boas ações
                            </p>
                        </div>
                    </div>
                </div>
		
                
		<br>

                          <% } %>
		
            <div class="gray py-5">
		
		<!-- Título de cards de doção-->
		<div class="col-md-3 mx-md-auto mb-5 rounded">
				<h2 class="text-warning text-center">Doações ativas</h2>
                             
		</div>
		
                <div class="container col-md-7 d-none d-md-block">
  <div class="pagination-container" >
   <div data-page="1" >
      <div class="col-md-7 mx-auto">
					<div class="card mb-2 d-flex">
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
       
   </div>
   <div data-page="2" style="display:none;">
     <div class="col-md-7 mx-auto">
					<div class="card mb-2 d-flex">
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
   </div>
   <div data-page="3" style="display:none;">
 <div class="col-md-7 mx-auto">
					<div class="card mb-2 d-flex">
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
   </div>
   <div data-page="4" style="display:none;">
 <div class="col-md-7 mx-auto">
					<div class="card mb-2 d-flex">
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
   </div>
   <div data-page="5" style="display:none;">
 <div class="col-md-7 mx-auto">
					<div class="card mb-2 d-flex">
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
   </div>

   <div class="text-center">
   <div class="pagination pagination-centered">
       <ul class="pagination mx-auto">
            <li data-page="-" ><a href="#" class="btn bg-blue text-light px-3 mr-2">&lt;</a></li>
            <li data-page="1"><a href="#" class="btn bg-blue text-light px-3 mr-2">1</a></li>
            <li data-page="2"><a href="#" class="btn bg-blue text-light px-3 mr-2">2</a></li>
            <li data-page="3"><a href="#" class="btn bg-blue text-light px-3 mr-2">3</a></li>
            <li data-page="4"><a href="#" class="btn bg-blue text-light px-3 mr-2">4</a></li>
            <li data-page="5"><a href="#" class="btn bg-blue text-light px-3 mr-2">5</a></li>
            <li data-page="+"><a href="#" class="btn bg-blue text-light px-3 mr-2">&gt;</a></li>
      </ul>
       
   </div>
   <div class="d-none d-md-block mt-2"><!-- Botão ver mais desktop-->
                <div class="card mx-md-auto mt-4 mb-3 col-md-3 p-0 m-md-0">
					<a class="btn text-light bg-blue" href="doacoes.jsp">
					    Ver mais doações
					 </a>
				</div>
                </div>
   </div></div>
   
   
</div>
                    
                
                
		<!-- Cards de doação -->
                <div class="container-fluid padding d-md-none" > <!-- div container -->
			<div class="row padding">
				<!-- Card-->
				<div class="col-md-4 d-inline">
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
				<div class="col-md-4 d-none d-md-block">
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
			</div>
				
                </div>
                
                
                <div class="d-md-none"><!-- Botão ver mais mobile-->
                <div class="mx-auto mt-md-5 mt-2 mb-3 p-0 m-0 text-center">
					<a class="btn text-light bg-blue" href="doacoes.jsp">
					    Ver mais doações
					 </a>
				</div>
                </div>
</div>
                          
		<!-- Feedback-->
                <div style="background: url('images/fotos/Animais/Feedback/1.jpg'); background-repeat: no-repeat; background-size: cover;">
                    <div class="py-md-5 py-3">
                        <div class="mx-md-auto col-md-7">
			<div class="card bg-warning p-2">
				
					<h5 class="text-dark text-center">Feedback</h5>
				
				<ul class="list-group list-group-flush">
					<li class="list-group-item">
                                            <div class="card-body d-sm-inline d-md-flex row">
                                                    <div class="mt-sm-2">
                                                        <p class="card-text p-0 m-0"> 
							<h5 class="card-title">Arrecadação Lázaro</h5>	
                                                        Conseguimos alcançar nossa meta dessa mês graças ao apoio dos usuários!
                                                        </p>    
							
                                                        <a href="feedbacksaolazaro.jsp" class="card-link text-blue">Ver mais</a>
                                                    </div>
                                            </div>	
					</li>
                                </ul>
                        </div>
                            <div class="col-md-5 mx-auto bg-blue mt-2 rounded">
                            <a class="btn text-light bg-blue w-100" href="feedbacks.jsp">
                                                Ver todos
                                            </a>
                                </div>
                            </div> 
                    </div>
                </div>
                            
                <!-- Eventos -->
                <br>
                <div class="bg-white text-center p-md-3 p-0 m-0">
		<div class="mx-md-auto col-md-7">
                    <h2 class="text-warning text-center mb-5">Últimos Eventos</h2>
			<div class="card">
				<div class="">
					
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><a href="https://facebook.com.br">Evento de adoção (23/05)</a></li>
					<li class="list-group-item"><a href="https://facebook.com.br">Visita ao Abrigo Três Irmãs (20/05)</a></li>
					<li class="list-group-item"><a href="https://facebook.com.br">Evento de doação (31/04)</a></li>
					<li class="list-group-item bg-blue"><a href="eventos.jsp" class="btn text-light bg-blue w-100">Mais eventos</a></li>
				</ul>
                        </div>
                </div> 
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

		
                  
		<script src="jquery.bcSwipe.js"></script>
                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                
	
    </body>
</html>
