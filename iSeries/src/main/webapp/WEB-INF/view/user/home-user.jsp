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
<title>Home</title>
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

		<li><a href="#"><i class="material-icons"> store
			</i> Home </a></li>
			
		<li><a href="#"><i class="material-icons">account_circle
			</i> Meu Perfil </a></li>
			
		<li><a href="#"><i class="material-icons">movie
			</i> Minhas Series </a></li>

		<li><div class="divider"></div></li>
		
		<li><a href="#"><i class="material-icons">new_releases
			</i> Sobre Nós</a></li>
			
		<li><a href="logout" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> Sair
		</a></li>
	</ul>
	
	<!-- -------------------------------------------------------------------------------- -->
		<div id="listagem_series_adm" class="row container">
			<c:forEach var="serie" items="${lista_series}">
			<div class="col s4 ">
				<div class="card">
					<div class="card-image">
						<img width="100" height="200" src="resources/img/noticias/${serie.path}"> 
					</div>
					<div class="card-content">
						<span class="card-title">${serie.nome}</span>
						<label>Genero: ${serie.genero}</label> <br> 
						<label>Ano de Lançamento: ${serie.ano}</label>
					</div>
					<div class="card-action">
						<a href="viewSerie?id=${serie.id}">View more</a>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	<!-- -------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="<c:url value="resources/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="resources/js/materialize.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="resources/js/script.js"/>"></script>

</body>
</html>