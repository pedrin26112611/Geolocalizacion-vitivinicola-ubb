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
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/footer-distributed-with-address-and-phones.css">
	
</head>


<body>
	<header>
		<div class="ancho">
			
			<nav class="active">
				<ul>
					<li><a href="vistaHome">Home <i class="fa fa-home  fa-2x"
							aria-hidden="true"></i></a></li>
					<!--  <li><a href="Login">Iniciar Sesion <i
							class="fa fa-futbol-o fa-2x" aria-hidden="true"></i></a></li>-->
				</ul>
			</nav>
		</div>
	</header>
	<div>

		<div class="container" style="margin-top: 80px;">
			<div class="row">
				<div class="col-md-5 center">
					<div class="panel panel-default" id="">
						<div class="panel-heading">
							<h3 class="panel-title">Login</h3>
						</div>
						<div class="panel-body">
							<c:url var="loginUrl" value="/login" />
							<form action="${loginUrl}" method="post">
								<c:if test="${param.error != null}">
									<div class="alert alert-danger">
										<p>nombre de usuario y contraseña inválidos.</p>
									</div>
								</c:if>
								<c:if test="${param.logout != null}">
									<div class="alert alert-success">
										<p>Has cerrado la sesión con éxito.</p>
									</div>
								</c:if>
								<input type="hidden" name="" value="">

								<div class="form-group">
									<label for="username">Nombre de usuario <i
										class="fa fa-user fa-lg" aria-hidden="true"></i></label> <input
										type="text" class="form-control" id="username" name="ssoId"
										placeholder="Nombre de Usuario" required="required">
								</div>
								<div class="form-group">
									<label for="password">Contraseña <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></label> <input
										type="password" class="form-control" id="password"
										name="password" placeholder="Contraseña" autocomplete="off"
										required="required">
								</div>
								<div class="form-group">
									<div class="checkbox">
										<label><input type="checkbox" id="rememberme"
											name="remember-me"> Recordar </label>
									</div>
								</div>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />

								<button type="submit" class="btn btn-outline-danger separacion"
									data-toggle="" data-target="">
									<i class="fa fa-sign-in fa-2x" aria-hidden="true"></i></i> Iniciar
									sesion
								</button>
								<a href="newuser"> Registrate aqu&iacute; <i
									class="fa fa-user-plus fa-lg" aria-hidden="true"></i></a>
						</div>
						</form>
					</div>
				</div>



			</div>

		</div>

	</div>
	

</body>
</html>