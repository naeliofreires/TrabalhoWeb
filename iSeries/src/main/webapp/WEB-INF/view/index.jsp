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
<link href="<c:url value='resources/css/estilo.css' />" rel="stylesheet" type="text/css" />

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
	
	<!-- slide -->
      
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
	<script type="text/javascript" src="<c:url value="resources/js/jquery.min.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="resources/js/materialize.min.js"/>"></script>
		
	<script type="text/javascript" src="<c:url value="resources/js/script.js"/>"></script>

</body>
</html>