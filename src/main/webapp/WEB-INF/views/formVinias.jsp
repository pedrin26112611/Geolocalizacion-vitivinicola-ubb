<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title></title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<%@include file="authheader.jsp"%>
	<section>
		<div class="formulario">
			<div class="container" style="margin-left: 150px;">
				<div class="row" style="margin-top: 50px">
					<div class="col-7">
						<div class="panel-heading">
							<h3 style="margin-top: 5px;">
							<c:choose>
								<c:when test="${edit}">
								<b>Registrar Viñas</b>
								</c:when>
										<c:otherwise>
										Actualizar Viña
											</c:otherwise>
									</c:choose>
							</h3>
						</div>
						<br>
						<form:form method="POST" modelAttribute="vinias"
							class="form-horizontal">
							<form:input type="hidden" path="id" id="id" />

							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="name">Nombre</label>
									<div class="col-md-7">
										<form:input type="text" path="name" id="name"
											placeholder="Nombre Viña" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="name" class="help-inline" />
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
									<label class="col-md-3 control-lable" for="comuna">Comuna</label>
									<div class="col-md-7">
										<form:input type="text" path="comuna" id="comuna"
											placeholder="Comuna" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="comuna" class="help-inline" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="ciudad">Ciudad</label>
									<div class="col-md-7">
										<form:input type="text" path="ciudad" id="ciudad"
											placeholder="ciudad" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="ciudad" class="help-inline" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="direccion">Direcci&oacute;n</label>
									<div class="col-md-7">
										<form:input type="text" path="direccion" id="direccion"
											placeholder="direccion viña" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="direccion" class="help-inline" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="longitud">Longitud</label>
									<div class="col-md-7">
										<form:input type="text" path="longitud" id="longitud"
											placeholder="longitud" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="longitud" class="help-inline" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="latitud">Latitud</label>
									<div class="col-md-7">
										<form:input type="text" path="latitud" id="latitud"
											placeholder="latitud" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="latitud" class="help-inline" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="variedad">Variedad</label>
									<div class="col-md-7">
										<form:input type="text" path="variedad" id="variedad"
											placeholder="variedad" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="variedad" class="help-inline" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-3 control-lable" for="descripcion">descripci&oacute;n</label>
									<div class="col-md-7">
										<form:input type="text" path="descripcion" id="descripcion"
											placeholder="descripcion" required="required"
											class="form-control input-sm" />
										<div class="has-error">
											<form:errors path="descripcion" class="help-inline" />
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

							<div class="row">
								<div class="form-actions floatRight">
									<c:choose>
										<c:when test="${edit}">
											<input type="submit" value="Agregar Viña" class="btn btn-danger" /> or <a
												href="vistaHome">Cancelar</a>
										</c:when>
										<c:otherwise>
											<input type="submit" value="Acualizar" class="btn btn-danger" /> 
										</c:otherwise>
									</c:choose>

								</div>
							</div>

						</form:form>
					</div>
					<div class="row">
							<div class="col-5"></div>
							<img alt=""
								src="${pageContext.request.contextPath}/static/vinia.gif">

						</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>