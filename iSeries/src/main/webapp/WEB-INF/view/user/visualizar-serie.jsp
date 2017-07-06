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
<title>${serie.nome}</title>
</head>
<body>

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
		
		<li><a href="homeAdm"><i class="material-icons"> store
			</i> Home </a></li>
			
		<li><a href="listaUsuarios"><i class="material-icons">supervisor_account
			</i> Lista de Usuarios</a></li>
			
		<li><a href="listaSeries"><i class="material-icons">movie</i>
				Lista de Series</a></li>

		<li><div class="divider"></div></li>

		<li><a href="logout" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> Sair
		</a></li>
	</ul>
	
	<!-- -------------------------------------------------------------------------------- -->
	
	<div id="dados_serie" class="container">
		
		<div class="row">
		
			<div class="col s4">
				<figure class="branco">
 					<img width="200" height="250" src="resources/img/noticias/${serie.path}"> 
				</figure>
			</div>
			
			<div class="col s8 sinopse" >
				<p>${serie.sinopse}</p>
			</div>
			
			
			<br><hr><br>
		
			<div  class="col s4  informacoes">
				<div class="container cinza">
				<h5 style="text-align: center;">Informações</h5>
				<h6>
					Título Original: <label>${serie.nome}</label>
				</h6>
				<h6>
					Diretor: <label>${serie.diretor}</label>
				</h6>
				<h6>
					Gênero:  <label>${serie.genero}</label>
				</h6>
				<h6>
					Ano de Lançamento: <label>${serie.ano}</label>
				</h6>
				<h6>
					Origem: <label>${serie.origem}</label>
				</h6>
				
				<c:choose>
					<c:when test="${usuario.admin == true}">
		        		<a href="#" class="waves-effect waves-teal btn-flat right">
							<i id="button_edit" class="material-icons"> edit </i>
						</a>
		    		</c:when>
					<c:otherwise>
		        		<a href="#" class="waves-effect waves-teal btn-flat right">
							<i id="button_add" class="material-icons"> add </i>
						</a>
		    		</c:otherwise>
				</c:choose>
				</div>
			</div>
			
			<!-- Lista de Temporadas -->
			<div class="col s8">
			
			</div>
			
		</div>	
	</div>
	
	<!-- -------------------------------------------------------------------------------- -->
	<div id="form_update_serie" class="container">
		<div>
			<h6 id="dados_serie2" class="center"><a href="#"><i class="material-icons">keyboard_arrow_down</i></a></h6>
		</div>
		<jsp:include page="../forms/form_update_serie.jsp" />
	</div>
	<!-- -------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/script.js"/>"></script>

</body>
</html>