<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/estilos.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/slider.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/secciones.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/login.css">
</head>

<body>
	<%@include file="authheader.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container ">
		<div class="row">
			<div class="col-6">
				<div class="panel-heading">
					<c:choose>
						<c:when test="${edit}">
							<h3 class="panel-title">Confirmacion de Registro</h3>
						</c:when>
						<c:otherwise>
							<h3 class="panel-title">Confirmacion de Actualizaci&oacute;n</h3>
						</c:otherwise>
					</c:choose>
					<p>${success}</p>
				</div>
				<br> <span> <c:choose>
						<c:when test="${IniClo}">
			ir a <a href="<c:url value='login' />"> Iniciar Sesi&oacute;n </a>
						</c:when>
						<c:otherwise>
							ir a <a href="<c:url value='listVinias' />"> ir a Lista de Viñas </a>
						</c:otherwise>
					</c:choose>

				</span> <img alt=""
					src="${pageContext.request.contextPath}/resources/img/like.jpg">
			</div>
</body>

</html>