<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Materialize -->
<link href="<c:url value='resources/css/materialize.min.css' />" rel="stylesheet"
	type="text/css" />
<!-- Icones -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- CSS -->
<link href="<c:url value='resources/css/estilo.css' />" rel="stylesheet"
	type="text/css" />
<title> Profile </title>
</head>
<body>

	<!-- Header -->
	<nav>
		<div class="nav-wrapper">
			<a href="#" class="brand-logo right">
				<img width="50" height="50" src="img/logo.png" alt="logo do site" class="responsive-img">
			</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="#" id="ativa_side_nav" data-activates="slide-out"><i
						class="material-icons">menu</i></a></li>
			</ul>
		</div>
	</nav>
	
	<br>
	
	<!-- Menu -->
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
					<span style="padding-left: 30px;"></span> ${usuario.login}
				</a> <br> <a href="#!email"> <i class="material-icons">email</i>
					<span style="padding-left: 30px;"></span> ${usuario.email}
				</a>
			</div>
		</li>

		<li><div class="divider"></div></li>

		<li><a href="homeUsuario"><i class="material-icons"> store
			</i> Home </a></li>
		<c:if test="${usuario.admin == false}">
			<li><a href="myProfile"><i class="material-icons"> store
				</i> My Profile </a></li>
			<li><a href="mySeries"><i class="material-icons"> store
				</i> My Series </a></li>
		</c:if>
		<c:if test="${usuario.admin == true}">
			<li><a href="listOfUsers"><i class="material-icons"> store
				</i> List Of Users </a></li>s
		</c:if>
		<li><div class="divider"></div></li>
		
		<li><a href="about" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> About Us
		</a></li>
		
		<li><a href="logout" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> Exit
		</a></li>
	</ul>
	
	<!-- -------------------------------------------------------------------------------- -->
	
	<div class="container">
		<div class="container">
			<div class="branco borda-r">
				<div class="row">
					<div class=" col s4">
						<div>
							<figure class="figure-profile">
								<img class="responsive-img borda-r" width="150" height="150" src="<c:url value="/img/cinema.jpg"/>" />
								<fieldset><a href="">alterar imagem</a></fieldset>
							</figure>
						</div>
					</div>
					<div class="col s6">
						<br>
						<h6>Nome/Login <label>${usuario.login}</label></h6>
						<hr>
						<h6>Email <label>${usuario.email}</label> </h6>
						<hr>
						<h6>Administrador: <label>${usuario.admin}</label> </h6>
						<hr>
						<br>
						<button class="btn right">edit</button>
					</div>
				</div>
			</div>
		</div>
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