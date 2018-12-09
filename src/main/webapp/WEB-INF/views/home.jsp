<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido a Cinema</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<spring:url value="/resources" var="urlPublic" />
</head>
<body>


<div class="card text-center">
  <div class="card-header">
    Lista de Peliculas
  </div>
  
  <!-- Cuerpo -->
  <div class="card-body">

	<div class="container">
	<!-- Carousel boostratp 4 -->
	<div class ="container">
	<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-50"
						src="${urlPublic}/images/cinema2.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-50"
						src="${urlPublic}/images/cinema2.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-50"
						src="${urlPublic}/images/cinema2.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<hr>
	</div>
	
	<hr>

	<!-- Container movies -->
	<h5 class="card-title">Catálogo</h5>
	<div class="container">
		<div class="row">
		<c:forEach items="${peliculas}" var="pelicula">
		<div class="card col-xs-12 col-sm-6 col-md-3 ml-4" style="width: 18rem;">
				<img class="card-img-top" src="${urlPublic}/images/${pelicula.imagen}" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">${pelicula.titulo}</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make .</p>
					<span class="badge-success"> ${pelicula.clasificacion }</span>
					<span class="badge-success"> ${pelicula.duracion} mins.</span>
					<span class="badge-success"> ${pelicula.genero}</span>
					<a href="#" class="btn btn-primary">Consulta Horarios >></a>
				</div>
			</div>
		</c:forEach>

		</div>
	</div>    

  </div>
  
  
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>





	<!-- Bootstrap 4 -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>