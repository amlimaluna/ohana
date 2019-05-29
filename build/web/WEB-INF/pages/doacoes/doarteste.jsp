<%-- 
    Document   : doarteste
    Created on : 05/05/2019, 22:44:13
    Author     : amaaa
--%>

<%@page import="modelo.item.Item"%>
<%@page import="java.util.List"%>
<%@page import="modelo.carrinhodoacoes.carrinhodoacoes"%>

<!DOCTYPE html>
<html lang="pt-br">
		<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
                <link href="https://fonts.googleapis.com/css?family=Comfortaa&display=swap" rel="stylesheet">

		<meta name="viewport" content="width=device-width, user-scalable=no">

<script type="text/javascript"> 
                          /*  function confirmacaoTotal() {
                                alert("chamou");
                                var servlet = "FinalizarDoacaoServlet";
                                var data = document.getElementById("agendamento").value;
                                document.location = servlet + "?data=" + data; 
                                
                            } */
                </script> 
	</head>
<body class="gray">
		
                  
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
                <br><br> <br>
                                            
     
          
            
             <!-- div container -->
			<div class="card mx-auto col-md-6 m-0 p-0">
				
			  		<img class="card-img-top img-fluid bg-warning" src="images/img.jpg" alt="Card image cap">
			  
			  	<div class="card-body">
			    	<h5 class="card-title text-blue">Arrecadação de ração</h5>
			    	<h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro</h6>
                                
                                                <%
       
                   List<Item> itens = (List<Item>) request.getAttribute("itens");
                    for (Item i : itens) {
                %>
          
                    <input type="hidden" name="itemId" value="<%= i.getId()%>" />
			    	<p class="card-text"> <img class="icone" src="images/yração.png"> <%= i.getDescricao()%>
				    	
                                    <div class="def-number-input number-input safari_only">
							<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus btn btn-block bg-blue text-light">-</button>
							<input class="quantity btn-block text-center" min="0" name="quantidade" value="0" type="number">
							<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus btn btn-block bg-blue text-light">+</button>
                                    </div>
			    	</p>
                                
                                                                            <%
                    }
                %>
			    	<div class="form-group">
 						<label>Marcar entrega</label>
 						<input type="date" id="agendamento" name="data" max="3000-12-31" min="1000-01-01" class="form-control">
					</div>

					<!-- Button trigger modal -->
					<button type="button" class="btn btn-block nav-link bg-blue text-light"  data-toggle="modal" data-target="#exampleModal">
                                        Agendar</button>
                                       
                                          
                                    
					<br>
					<br>


					<!--Google map-->
					<h5 class="card-title text-blue">Local</h5>
					<h6 class="card-subtitle mb-2 text-muted">Endereço</h6>
					<div id="map-container-google-1" class="z-depth-1-half map-container btn-block">
					  <iframe class="btn-block" src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
					    style="border:0" allowfullscreen></iframe>
					</div>
					<!--Google Maps-->



					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
					    	<div class="modal-content">
					      		<div class="modal-header">
                                                            <form action="FinalizarDoacaoServlet">
					        		<h5 class="modal-title" id="exampleModalLabel text-blue">Agendado!</h5>
					        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          			<span aria-hidden="true">&times;</span>
					        		</button>
					      		</div>

					      		<div class="modal-body">
					        		Tire um print desta dela e mostra no local agendado.
                                                                
                                                                 <%
                List<carrinhodoacoes> carrinhoDoacoes = (List<carrinhodoacoes>) request.getAttribute("carrinhoDoacoes");
                   
                                     
                if (carrinhoDoacoes != null && carrinhoDoacoes.size() > 0) {
                        double total = 0;
                        for (carrinhodoacoes cci : carrinhoDoacoes) {
                    %>

                     <form action="FinalizarDoacaoServlet">
                    <h3><%= cci.getItem().getDescricao()%></h3>                
                    
                        
                        Unidade(s): <input type="number" class="form-control" name="quantidade" step="1" value="<%= cci.getQuantidade()%>" /> 
                       
                        <br><span>( Subtotal: <%=  cci.getQuantidade()%> )</span> <br> 
                   
                 <br>
                 <% }

%>

					        		<br>
					        		<p class="text-warning">Código: AbC234 </p>
					      		</div>
					      
<div class="modal-footer">
					      			<button type="button" class="btn btn-secundary" data-dismiss="modal">Cancelar</button>
					      			<button type="button" class="btn bg-blue text-light" data-dismiss="modal">Confirmar</button>
                                                        </div> 
                  </form> <% } %>

					    	</div>
					  	</div>
					</div>

				</div>
			</div>
		<br>
		<br>
		
		<%--
			<div class="card mx-auto" style="width: 18rem;"><a  href="arrecadaçãolázaro.html">
			  <img class="card-img-top img-fluid bg-warning" src="images/img.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title" style="color: #00AACC">Arrecadação de ração</h5></a>
                            <h6 class="card-subtitle mb-2 text-muted">Abrigo São Lázaro</h6>
			    

                
                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="card h-100" style="width:200px">
                 
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#"></a>
                            </h4>
                            <h5></h5>
                            <form action="AdicionarCarrinhoDoacoesServlet">
                                
                                Quantidade: <br><input class="form-control" id="exampleFormControlSelect1" style="width:60px; float:left;" type="number" name="quantidade" step="1" value="1" /> <input type="submit" class="btn btn-info" value="Adicionar" style="float:right; width:90px" />
                            </form>
                        </div> </div>
                       
             

                                 </div>
    
       </div>
                </div>
            
           <div class="form-group">
    <label>Marcar entrega</label>
    <input type="date" id="agendamento" name="agendar" max="3000-12-31" 
        min="1000-01-01" class="form-control">
    </div>

<!-- Button trigger modal -->
<button type="button" class="btn nav-link" style="background: #00AACC; color: white; width: 100%" data-toggle="modal" data-target="#exampleModal">
  Agendar
    </button>

<br>
<br>


   
                <%
                    List<carrinhodoacoes> carrinhoDoacoes = (List<carrinhodoacoes>) request.getAttribute("carrinhoDoacoes");
                    if (carrinhoDoacoes==null || carrinhoDoacoes.size()==0) {
                    %>  
                Seu carrinho de doacoes está vazio.
            <%
                    }
                    
                    if (carrinhoDoacoes != null && carrinhoDoacoes.size() > 0) {
                %>
 

                   
                    <%
                        double total = 0;
                        for (carrinhodoacoes cci : carrinhoDoacoes) {
                    %>

                    <h3><%= cci.getItem().getDescricao()%></h3>
                    <h5>Preço <%= cci.getItem().getCategoriaId()%></h5>
                    <form action="AdicionarCarrinhoDoacoesServlet">
                        <input type="hidden" name="itemId" value="<%= cci.getItem().getId()%>" />
                        Unidade(s): <input type="number" class="form-control" style="width:100px" id="exampleFormControlSelect1" name="quantidade" step="1" value="<%= cci.getQuantidade()%>" /> 
                        <input type="submit" class="btn btn-info" value="Adicionar ou Atualizar" style="float:right;" />
                        <br><span>( Subtotal: <%=  cci.getQuantidade()%> )</span> <br> 
                    </form> <a href="RemoverCarrinhoDoacoesServlet?produtoId=<%= cci.getItem().getId()%>"><img src="images/delete.png" width="20px" style="float:right"></a>
                 <br>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color: #0AC">Agendado!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>

      </div>
      <div class="modal-body">
      
          
                
                <%
                      
                    }
                %>
                <br><br>
                <h2><u><strong>Total: <% %></strong></u></h2>
                <%
                    }
                %>

             
        
            </div> 
          
        <br>
     
      </div>
      <div class="modal-footer">
      
                          <% if (session.getAttribute("email") != null && session.getAttribute("perfil") != null && session.getAttribute("perfil").toString().equals("usuario")) {
                        if (carrinhoDoacoes.size()>0) {
                %>
             <p class="text-warning">
        		Código: AbC234
        </p>
                <button type="button" class="btn btn-secundary" data-dismiss="modal">Cancelar</button>
                <a id="confirma" href="#" ><input type="button" id="botao" style="background: #0AC; color: white" value="Okay777"/></a>
          
        <%       }
                } %>
                
                               <%     
                                   if (session.getAttribute("login") != null && session.getAttribute("perfil") != null && session.getAttribute("perfil").toString().equals("administrdor")) { %>
                <div> Você está logado como adm, para fazer doacão precisa ser um usuário! </div>
                <% } else { %><br>
                <div><i>Você não está identificado</i></div>
                <% }%>
      </div>
    </div>
  </div>


			 </div>
			
			
		
		</div>	
			---%> 
                <br>	
		<br>
                <br>
		
                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                <script type="text/javascript">
                   /* $("botao").click(function() {
                       alert("sabia que era o bootstrap"); 
                    });*/
                    </script>
        </body>
</html>