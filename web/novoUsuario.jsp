<%-- 
    Document   : novoUsuario
    Created on : 22/04/2019, 01:44:10
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
                <title>Novo usuário</title>
                    
		<meta name="viewport" content="width=device-width, user-scalable=no">

	</head>
	<body class="gray" >
		
            		<nav class="nav navbar-expand bg-light fixed-top justify-content-between">
                            <div class="navbar-header nav-item m-2 dropleft">
                                    <a class=" navbar-brand dropdown-toggle text-blue" href="index.jsp">
                                        Voltar
                                      </a>
                            </div>
                        </nav>

		
		
                	<div class="col-md-6 p-md-0 m-md-0 mx-md-auto m-sm-4">
                            <div class="m-4">
			<br>
			<br>
                        <br> <br>
                    <form action="IncluirUsuarioServlet" method="post">
                             	<div class="mx-auto col-md-7">
					<p class="text-center">
						<img class="mx-auto" src="images/OhanaLogo.png">
					</p>
	
                        <br>
                        <div class="form-group">
                        <input type="text" class="form-control" name="nome" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nome">

                      </div>
                      <div class="form-group">
                        <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">

                      </div>
                      <div class="form-group">

                        <input type="password" class="form-control" name="senha" id="exampleInputPassword1" placeholder="Senha">
                      </div>

                      <button type="submit" class="btn btn-warning btn-block text-light">Cadastrar</button>
                            <a class="text-warning" href="login.jsp"><p class="text-center mt-3"> Login </p></a>
                        
                    </div>
                 </form> 

                </div>
        </div>
		
                
               
			
		

		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>

