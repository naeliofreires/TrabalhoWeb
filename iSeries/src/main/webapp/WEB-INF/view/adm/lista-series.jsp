<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Materialize -->
<link href="<c:url value='/css/materialize.min.css' />" rel="stylesheet"
	type="text/css" />
<!-- Icones -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- CSS -->
<link href="<c:url value='/css/estilo.css' />" rel="stylesheet"
	type="text/css" />
<title> Lista de Series - ${usuario_logado.login}</title>
</head>
<body>

	<nav>
		<div class="nav-wrapper">
			<a href="#" class="brand-logo right">iSeries</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="#" id="ativa_side_nav" data-activates="slide-out"><i
						class="material-icons">menu</i></a></li>
				<li>
					<!-- Modal Add Serie -->
					<a href="#modal1">Add Series</a>
				</li>
			</ul>
		</div>
	</nav>

	<hr> <br>
	<!-- -------------------------------------------------------------------------------- -->
	<ul id="slide-out" class="side-nav">
		<li>
			<div class="userView">
				<div class="background">
					<img class="responsive-img" src="<c:url value="/img/cinema.jpg"/>" />
				</div>

				<br>
				<br>
				<br>
				
				<br> <a href="#!name"> <i class="material-icons">perm_identity</i>
					<span style="padding-left: 30px;"></span> ${usuario_logado.login}
				</a> <br> <a href="#!email"> <i class="material-icons">email</i>
					<span style="padding-left: 30px;"></span> ${usuario_logado.email}
				</a>
			</div>
		</li>

		<li><div class="divider"></div></li>

		<li><a href="homeAdm"><i class="material-icons"> store
			</i> Home </a></li>
			
		<li><a href="listaUsuarios"><i class="material-icons">supervisor_account
			</i> Lista de Usuarios</a></li>

		<li><div class="divider"></div></li>

		<li><a href="logout" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> Sair
		</a></li>
	</ul>
	
	<!-- -------------------------------------------------------------------------------- -->
	
	<!-- Modal Add Serie -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<p style="text-align: center">
				<img width="50" height="50" src="img/logo.png" alt=""
					class="responsive-img"> <br> Add Serie
			</p>
			<form action="cadastraSerie" method="POST" enctype="multipart/form-data">
				<div class="container">

					<i class="material-icons">movie</i>
					<div class="input-field col s12">
						<input id="nome" name="nome" type="text"> <label
							for="nome" class="center-align">Nome da Serie</label>
					</div>

					<i class="material-icons">description</i>
					<div class="input-field col s12">
						<input id="sinopse" name="sinopse" type="text"> <label
							for="sinopse" class="center-align">Sinopse</label>
					</div>

					<i class="material-icons">today</i>
					<div class="input-field col s12">
						<input id="ano" name="ano" type="text" maxlength="4"> <label
							for="ano" class="center-align">Ano de Lançamento</label>
					</div>

					<i class="material-icons">change_history</i>
					<div class="input-field col s12">
						<input id="genero" name="genero" type="text" maxlength="8">
						<label for="genero" class="center-align">Genero</label>
					</div>
					
					<!-- File Imagem -->
					<div class="file-field input-field" align="right">
				    	<div class="btn">
				        	<span>Imagem</span>
				        	<input name="imagem" type="file">
				      	</div>
				      	<div class="file-path-wrapper">
				        	<input class="file-path validate" type="text">
				    	</div>
	    			</div>
	    			
					<div class="row">
						<div class="input-field">
							<button class="btn waves-effect waves-light col s12">Register</button>
						</div>
					</div>
				</div>
			</form>

		</div>
	</div>

	<!-- -------------------------------------------------------------------------------- -->
		
	<div class="row container">
		<c:forEach var="serie" items="${lista_series}">
		<div class="col s3 container">
			<div class="card">
				<div class="card-image">
					<img width="100" height="100" src="resources/img/noticias/${serie.path}"> 
					<span class="card-title">${serie.nome}</span>
				</div>
				<div class="card-content">
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
	<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/script.js"/>"></script>

</body>
</html>