<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Form</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<%@include file="authheader.jsp"%>
	<c:choose>
		<c:when test="${IniClo}">
			<div class="formulario">
				<div class="container" style="margin-left: 150px;">
					<div class="row" style="margin-top: 50px">
						<div class="col-7">
							<div class="panel-heading">
								<h3 style="margin-top: 5px;">
									<b>Registro Productor</b>
								</h3>
							</div>
							<br>
							<form:form method="POST" modelAttribute="user"
								class="form-horizontal">
								<form:input type="hidden" path="id" id="id" />

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="firstName">Nombre</label>
										<div class="col-md-7">
											<form:input type="text" path="firstName" id="firstName"
												placeholder="Nombre" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="firstName" class="help-inline" />
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="lastName">Apellido</label>
										<div class="col-md-7">
											<form:input type="text" path="lastName" id="lastName"
												placeholder="apellido" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="lastName" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="rut">Rut</label>
										<div class="col-md-7">
											<form:input type="text" path="rut" id="rut"
												placeholder="xx.xxx.xxx-x" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="rut" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="telefono">telefono</label>
										<div class="col-md-7">
											<form:input type="text" path="telefono" id="telefono"
												placeholder="+569xxxxxxxx" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="telefono" class="help-inline" />
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="direccion">Direccion</label>
										<div class="col-md-7">
											<form:input type="text" path="direccion" id="direccion"
												placeholder="Villa-poblacion-calle" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="direccion" class="help-inline" />
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="ssoId">Nombre
											de usuario</label>
										<div class="col-md-7">

											<form:input type="text" path="ssoId" id="ssoId"
												placeholder="Juanito333" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="ssoId" class="help-inline" />
											</div>

										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="password">Contraseña</label>
										<div class="col-md-7">
											<form:input type="password" path="password" id="password"
												placeholder="****" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="password" class="help-inline" />
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label class="col-md-3 control-lable" for="email">Email</label>
										<div class="col-md-7">
											<form:input type="text" path="email" id="email"
												placeholder="ejemplo@ejemplo.cl" required="required"
												class="form-control input-sm" />
											<div class="has-error">
												<form:errors path="email" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								<!-- 
						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-3 control-lable" for="userProfiles">Roles</label>
								<div class="col-md-7">
									<form:select path="userProfiles" items="${roles}"
										multiple="true" itemValue="id" itemLabel="type"
										class="form-control input-sm" />
									<div class="has-error">
										<form:errors path="userProfiles" class="help-inline" />
									</div>
								</div>
							</div>
						</div> -->

								<div class="row">
									<div class="form-actions floatRight">

										<input type="submit" value="Registrarse"
											class="btn btn-danger" /> or <a href="vistaHome">Cancelar</a>

									</div>
								</div>
							</form:form>
						</div>
						<div class="row">
							<div class="col-5"></div>
							<img alt=""
								src="${pageContext.request.contextPath}/static/animado.gif">

						</div>
					</div>
				</div>
			</div>
			</section>
		</c:when>
		<c:otherwise>
		<br><br><br><br><br><br>
		<h3>Usted ya esta registrado</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>