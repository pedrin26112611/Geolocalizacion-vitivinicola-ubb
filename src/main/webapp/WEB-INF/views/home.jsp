<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Geolocalizacion Vitivinicolas</title>
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
	href="${pageContext.request.contextPath}/resources/css/barra.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/footer-distributed-with-address-and-phones.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/busqueda.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">




</head>
<body>
	<%@include file="authheader.jsp"%>



	<section class="carusel">
		<div class="container fondo">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" style="position: center">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/static/Carrusell/carrusell1.jpg"
							alt="First slide" width="100" height="500">
							<c:choose>
								<c:when test="${IniClo}">
						<div class="banner-info" style="position: center">
						
							<h4 style="color: white">si quieres ser parte de nuestro
								sistema de geolocalizaci&oacute;n</h4>
							<a href="newuser">Registrate aqu&iacute; 
							<i
								class="fa fa-user-plus fa-2x" aria-hidden="true"></i></a>
								
						</div>
						</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
					</div>
					<div class="carousel-item" style="position: center">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/static/Carrusell/carrusell2.jpg"
							alt="Second slide" width="100" height="500">
							<c:choose>
								<c:when test="${IniClo}">
						<div class="banner-info" style="position: center">
							
									<h4 style="color: white">si quieres ser parte de nuestro
										sistema de geolocalizaci&oacute;n</h4>
								
							<a href="newuser"> Registrate aqu&iacute; <i
								class="fa fa-user-plus fa-2x" aria-hidden="true"></i></a>
								
						</div>
						</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
					</div>
					<div class="carousel-item" style="position: center">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/static/Carrusell/carrusell3.jpg"
							alt="Third slide" width="100" height="500">
							<c:choose>
								<c:when test="${IniClo}">
						<div class="banner-info" style="position: center">
						
							<h4 style="color: white">si quieres ser parte de nuestro
								sistema de geolocalizaci&oacute;n</h4>
								
							<a href="newuser"> Registrate aqu&iacute; <i
								class="fa fa-user-plus fa-2x" aria-hidden="true"></i></a>
						</div>
						</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="wap">
		<br> <br>
		<section class="contenedor-columnas">

			<div class="columnasx2" id="googleMap"
				style="width: 50%; height: 500px;"></div>
			<script>
				function initMap() {
					//Se le asigna la latitud y longitud inicial
					var myLatLng = {
						lat : -36.61,
						lng : -72.11
					};
					var stringContent = "Esta es una oración de relleno, por favor, cierrela ;)";

					//Inicializa el mapa
					var map = new google.maps.Map(
							document.getElementById("googleMap"),
							{
								zoom : 13,
								center : myLatLng,
								zoomControl : true,
								scaleControl : true,
								mapTypeControl : true,
								mapTypeControlOptions : {
									style : google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
									position : google.maps.ControlPosition.TOP_LEFT,
									mapTypeIds : [ "roadmap", "terrain",
											"satellite", "hybrid" ]
								}
							});

					//Carga los marcadores desde la base de datos (Aún no implementada la base de datos)
					for (var i = 0; i < 2; i++) {
						//myLatLng = consultar
						//stringContent = consultar

						//Añade un marcador al mapa con la ubicación de una viña
						var marker = new google.maps.Marker({
							position : myLatLng,
							map : map,
							title : "Marcador 1",
							animation : google.maps.Animation.DROP
						});

						//Añade la información de la viña al marcador
						var infoWindow = new google.maps.InfoWindow({
							content : stringContent,
							maxWidth : 200
						});

						//Añade un recuadro con información al marcador
						marker.addListener('click', function() {
							infoWindow.open(map, marker);
						});
					}
				}
			</script>

			<div class="columnasx2">
				<form class="webdesigntuts-workshop" style="margin-left: 60px"
					action="" method="">
					<input type="search" placeholder="buscar productor...">
					<button>Buscar</button>
				</form>


			</div>


		</section>

	</section>

	<br />

	<%@include file="footer.jsp"%>


	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAShdoO5WP63SzbJikaAk21riBk5EVWUPs&callback=initMap"></script>

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