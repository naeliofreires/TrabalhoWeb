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
<title>Página Inicial</title>
</head>
<body>

	<nav>
		<div class="nav-wrapper">
			<a href="#" class="brand-logo right">iSeries</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="cadastro">Cadastre-se</a></li>
			</ul>
		</div>
	</nav>
	
	<hr> <br>
	
	<!-- -------------------------------------------------------------------------------- -->
	<div class="container">
		<div class="form-login">
			<form action="logar">
				<div>
					<p style="text-align: center">
						<img src="img/logo.png" alt="" class="responsive-img">
					</p>
				</div>
				<div class="container">
					<div><i class="material-icons">perm_identity</i></div>
					<div class="input-field col s12"> 
						<input id="login" name="login" type="text"> 
						<label for="login" class="center-align">Username</label>
					</div>
					
					<div><i class="material-icons">lock_outline</i></div>
					<div class="input-field col s12"> 
						<input id="senha" name="senha" type="password"> 
						<label for="senha" class="center-align">Password</label>
					</div>

					<div class="row">
						<div class="input-field">
							<button class="btn waves-effect waves-light col s12">Login</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/js/materialize.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/script.js"/>"></script>

</body>
</html>