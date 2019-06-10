<%-- 
    Document   : vamosdoar
    Created on : 01/06/2019, 20:54:51
    Author     : amaaa
--%>

<%@page import="modelo.item.Item"%>
<%@page import="modelo.carrinhodoacoes.carrinhodoacoes"%>
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
				    <a class="nav-link  text-light" href="doacoes.jsp">doar</a>
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
                                                    <a class="nav-link  text-light" href="doacoes.jsp">doar</a>
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
                               
                
            <%
                if (request.getAttribute("mensagem") != null) {
            %>
            <div class="mensagem"><%= request.getAttribute("mensagem").toString()%></div>
            <br><br>
            <%
                }
            %>

        <center> <img class="card-img-top img-fluid" src="images/fotos/Animais/Doações/1.jpg" alt="Card image cap" style="padding: 20px; width:60%">
              </center>
<h5 class="card-title text-blue text-center" style="font-size: 40px">Arrecadação de ração</h5>
              <h6 class="card-subtitle mb-2 text-muted text-center" style="font-size: 20px">Abrigo São Lázaro</h6><br>
              
          <div class="row justify-content-md-center">

            <br>
          
                <%
                        
                    List<Item> itens = (List<Item>) request.getAttribute("itens");
                    for (Item i : itens) {
                %>

             
				
             
                <div class="col-lg-2 col-sm-3 mb-4">

                  
                                
                    <div class="card h-150">
                    
                        <div class="card-body">
                            <h4 class="card-title">
                               <img class="icone" src="images/cardração.png"> <a href="#"><%= i.getDescricao()%></a>
                            </h4>
                       
                        
                            <form action="AdicionarCarrinhoDoacoesServlet">
                                <input type="hidden" name="itemId" value="<%= i.getId()%>" />
                                Quantidade: <br><input class="form-control" id="exampleFormControlSelect1" style="width:100px;" type="number" name="quantidade" step="1" value="1" /><br> <input type="submit" class="btn btn-info" value="Adicionar" style=" width:100px" />
                            </form>
                        </div>
                        <div class="card-footer">    
                        </div>
                    </div>
                                
                </div> 
                <%
                    }
                %>
                <br> 
                <!-- /.container -->
                                </div>
                <!--Google map-->
                <br>
                 <div class="row justify-content-md-center">
                <div  class="col-lg-8 col-lg-6 mb-2">
					<h5 class="card-title text-blue" style="font-size: 30px">Local</h5>
					<h6 class="card-subtitle mb-2 text-muted">Endereço</h6>
					<div id="map-container-google-1" class="z-depth-1-half map-container btn-block">
					  <iframe class="btn-block" src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
					    style="border:0" allowfullscreen></iframe>
					</div>  </div></div>
                                        <!--Google Maps-->  <br><br>
                
            <!-- /.row -->
            <br style="clear: both;"/>
            <div class="row justify-content-md-center" >
            <div  class="col-lg-8" >
            <div class="card h-100" >
                <h2 style="text-transform: uppercase"> <img src="images/lista.png" style="width:10%"> Seus itens selecionados: </h2>
                <br> <br>
                 
                
                <%
                    List<carrinhodoacoes> carrinhoDoacoes = (List<carrinhodoacoes>) request.getAttribute("carrinhoDoacoes");
                    if (carrinhoDoacoes==null || carrinhoDoacoes.size()==0) {
                    %>  
                Ainda não há nenhum item selecionado para sua doação.
            <%
                    }
                    
                    if (carrinhoDoacoes != null && carrinhoDoacoes.size() > 0) {
                %>
 

                   
                    <%
                        double total = 0;
                        for (carrinhodoacoes cci : carrinhoDoacoes) {
                    %>

                    <h3><%= cci.getItem().getDescricao()%></h3>
                    <div>
                    <form action="AdicionarCarrinhoDoacoesServlet" method="post">
                        <input type="hidden" name="itemId" value="<%= cci.getItem().getId()%>" />
                        Unidade(s): <input type="number" class="form-control" style="width:100px" id="exampleFormControlSelect1" name="quantidade" step="1" value="<%= cci.getQuantidade()%>" /> 
                        <input type="submit" class="btn btn-info" value="Atualizar" style="float:right;  width:250px; margin-top:-38px" />
                        
                    </form> <a href="RemoverCarrinhoDoacoesServlet?itemId=<%= cci.getItem().getId()%>"><img src="images/delete.png" width="20px" style="float:right"></a>
                    <br> </div>
                 
            

                <%
                       
                    }
                %>
                <br> <div> 
                              <br> <h1>DATA</h1> <form action="FinalizarDoacaoServlet" method="post">
                                    
    <input type="date" name="data" max="3000-12-31" min="1000-01-01" class="form-control" style="width: 50%">
                <%
                    }
                %>
                <% if (session.getAttribute("email") != null && session.getAttribute("perfil") != null && session.getAttribute("perfil").toString().equals("usuario")) {
                        if (carrinhoDoacoes.size()>0) {
                %>
                <br> <br> <br> <button type="submit" class="btn btn-primary">Agendar sua doação </button> </form> 
                <%       }
                } else if (session.getAttribute("login") != null && session.getAttribute("perfil") != null && session.getAttribute("perfil").toString().equals("administrador")) { %>
                <div> Você está logado como administrador, para fazer um agendamento precisa ser um usuário! </div>
                <% } else { %>
                <div style="color:#ccc"><i><br><br>Você não está identificado</i></div>
                <% }%>
                
                </div> </div>
                
        </div>
            </div> 
                <br><br><br>
                
                                <script src="js/script.js"></script>
                <script src="bootstrap/js/bootstrap.js"></script>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      
    </body>
    
    
</html>
