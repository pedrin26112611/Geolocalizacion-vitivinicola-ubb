<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>lista de viñas</title>

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
	href="${pageContext.request.contextPath}/resources/css/footer-distributed-with-address-and-phones.css">
</head>

<body>

	<%@include file="authheader.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="content-wrapper">

		<section class="container">
			<caption>
				<p>
					<a href="<c:url value="newVinias" />" class="btn btn-danger"><span
						class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						Agregar</a>
				</p>
				<table class="table" id="tabla">
					<thead class="thead-inverse table-bordered ">
						<tr>
							<th>Nombre</th>
							<th>Rut Empresa</th>
							<th>Comuna</th>
							<th>Ciudad</th>
							<th>Descripci&oacute;n</th>
							<th>Variedad</th>
							<th>Opcion</th>

						</tr>
					</thead>
					<tbody class="table-bordered table-hover ">
						<c:forEach items="${documents}" var="doc">
							<tr>

								<td>${doc.name}</td>
								<td>${doc.rut}</td>
								<td>${doc.comuna}</td>
								<td>${doc.ciudad}</td>
								<td>${doc.descripcion}</td>
								<td>${doc.variedad}</td>
								<td><a href="<c:url value='/edit-vinias-${doc.id}' />"
									class="btn btn-success custom-width">editar</a> <sec:authorize
										access="hasRole('USER')">
										<a href="<c:url value='/delete-vinia-${doc.id}' />"
											class="btn btn-danger custom-width">eliminar</a></td>
								</sec:authorize>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</caption>
		</section>
	</div>
	<%@include file="footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
		integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>