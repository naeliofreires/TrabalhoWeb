<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Materialize -->
<link href="<c:url value='resources/css/materialize.min.css' />" rel="stylesheet" type="text/css" />
<!-- Icones -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- CSS -->
<link href="<c:url value='resources/css/estilo.css' />" rel="stylesheet"	type="text/css" />
<title>Minhas Series</title>
</head>
<body>

	<nav>
		<div class="nav-wrapper">
			<a href="#" class="brand-logo right">
				<img width="50" height="50" src="img/logo.png" alt="logo do site" class="responsive-img">
			</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="#" id="ativa_side_nav" data-activates="slide-out"><i
						class="material-icons">menu</i></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<br>
	<div  id="msg" class="container texto-centro">
		<h6 class="msgOK">${msgOk}</h6>
		<h6 class="msgErro">${msgErro}</h6>
	</div>
	<br>
	
	<!-- Menu -->
	<!-- -------------------------------------------------------------------------------- -->
	<ul id="slide-out" class="side-nav">
		<li>
			<div class="userView">
				<div class="background">
					<img class="responsive-img" src="<c:url value="/img/cinema.jpg"/>" />
				</div>

				<br><br>
				
				<br> <a href="#!name"> <i class="material-icons">perm_identity</i>
					<span style="padding-left: 30px;"></span> ${usuario.login}
				</a> <br> <a href="#!email"> <i class="material-icons">email</i>
					<span style="padding-left: 30px;"></span> ${usuario.email}
				</a>
			</div>
		</li>

		<li><div class="divider"></div></li>

		<li><a href="homeUsuario"><i class="material-icons"> store
			</i> Home </a></li>
			
		<li><a href="myProfile"><i class="material-icons">account_circle
			</i> Meu Perfil </a></li>

		<li><div class="divider"></div></li>
		
		<li><a href="AboutUs"><i class="material-icons">new_releases
			</i> Sobre Nós</a></li>
			
		<li><a href="logout" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> Sair
		</a></li>
	</ul>
	
	<!-- Lista de Series -->
	<!-- -------------------------------------------------------------------------------- -->
	<div class="container borda-r-b"> <br>
		<c:forEach var="s" items="${usuario.minhas_series}">
			<div class="container ">
				<div class="row branco borda-r">
					<div class="col s4">
						<figure class="yfigure">
							<img width="100" height="100"
								src="resources/img/noticias/${s.path}">
						</figure>
					</div>
					<div class="col s6">
						<h6>Titulo: <label>${s.nome}</label> </h6>
						<h6>Diretor: <label>${s.diretor}</label></h6>
						<h6>Origem: <label>${s.origem}</label></h6>
						
						<a href="viewSerie?id=${s.id}">look</a>
						<a href="removeSerieMyList?ids=${s.id}" >remover</a>
						
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- -------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="<c:url value="resources/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="resources/js/materialize.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="resources/js/script.js"/>"></script>
	<!-- Controllers -->
	<script type="text/javascript"
		src="<c:url value="resources/js/controllers/materializeController.js"/>"></script>

</body>
</html>