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
			<a href="#" class="brand-logo right">
				<img width="50" height="50" src="img/logo.png" alt="logo do site" class="responsive-img">
			</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li> <a href="#modal1">Sign In</a></li>
			</ul>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="#modal2">Sign Up</a></li>
			</ul>
		</div>
	</nav>

	<br><br>
	
	<!-- -------------------------------------------------------------------------------- -->
	
	<div class="container">
		<div class="slider">
			<ul class="slides">
			
				<li>
					<img src="/img/carousel/frontier.jpg">
					<div class="caption center-align">
						<h3>Frontier</h3>
						<h5 class="light grey-text text-lighten-3">Diversos jogadores se
							envolvem no comércio de peles da fronteira entre o Canadá e os
							Estados Unidos.</h5>
					</div>
				</li>
	
				<li>
					<img src="/img/carousel/hemlock.jpg">
					<div class="caption left-align">
						<h3>Hemlock Grove</h3>
						<h5 class="light grey-text text-lighten-3">Hemlock Grove é um
							conto de mistério, assassinato e monstros que se passa em uma
							cidade da Pennsylvania.</h5>
					</div>
				</li>
				
				<li>
					<img src="/img/carousel/sons.jpeg"> 
					<div class="caption right-align">
						<h3>Sons of Anarchy</h3>
						<h5 class="light grey-text text-lighten-3">Charming, uma pequena
							cidade fictícia no norte da Califórnia, habita o clube de
							motociclistas Sons of Anarchy. O grupo lida com atividades
							ilícitas como o tráfico de drogas e filmes pornô e é liderado por
							Clay Morrow e Jax Teller.</h5>
					</div>
				</li>
					
				<li>
					<img src="/img/carousel/ranch.jpg"> 
					<div class="caption center-align">
							<h3>The Ranch</h3>
						<h5 class="light grey-text text-lighten-3">The Ranch, é uma
							websérie de comédia da Netflix, estrelando Ashton Kutcher, Debra
							Winger, Sam Elliot e Danny Masterson nos papeis principais, e
							Elisha Cuthbert e Kelli Goss nos papeis recorrentes, foi estreada
							no dia 1 de abril de 2016 na Netflix.</h5>
					</div>
				</li>
				
				<li>
					<img src="/img/carousel/american.jpg">
					<div class="caption center-align">
							<h3>American Horror Story</h3>
							<h5 class="light grey-text text-lighten-3">American Horror
								Story é uma	série de televisão norte-americana de horror-drama criada e
								produzida por Ryan Murphy e Brad Falchuk. Descrita como uma série
								antológica, cada temporada é concebida como uma história
								independente, seguindo um conjunto de personagens e ambientações
								distintas, e um enredo com o seu próprio "começo, meio e fim."</h5>
					</div>
				</li>
				
				<li>
					<img src="/img/carousel/bb.jpg"> 
					<div class="caption center-align">
							<h3>Breaking Bad</h3>
						<h5 class="light grey-text text-lighten-3">Breaking Bad é uma
							premiada série de televisão que retrata a vida do químico Walter
							White, um homem brilhante frustrado em dar aulas para
							adolescentes do ensino médio enquanto lida com um filho sofrendo
							de paralisia cerebral, uma esposa grávida e dívidas
							intermináveis.</h5>
					</div>
				</li>
				
				<li>
					<img src="/img/carousel/mr-robot.jpg"> 
					<div class="caption center-align">
							<h3>Mr. Robot</h3>
						<h5 class="light grey-text text-lighten-3">Mr. Robot é uma
							série de televisão dramática americana criada por Sam Esmail. É
							estrelada por Rami Malek como Elliot Alderson, um engenheiro de
							cibersegurança e hacker que sofre de transtorno de ansiedade
							social e depressão clínica.</h5>
					</div>
				</li>
				
			</ul>
		</div>
	</div>
      
	<!-- -------------------------------------------------------------------------------- -->

	<!-- Modal Log In -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<jsp:include page="forms/form_login.jsp" />
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------- -->
	
	<!-- Modal Sign Up -->
	<div id="modal2" class="modal">
		<div class="modal-content">
			<jsp:include page="forms/form_add_user.jsp" />
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
		
	<script type="text/javascript" src="<c:url value="/js/script.js"/>"></script>

</body>
</html>