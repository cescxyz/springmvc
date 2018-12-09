<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
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
    
    <ul class="nav">
  <li class="nav-item">
    <a class="nav-link active" href="#">My Site</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">About</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#">Login</a>
  </li>
</ul>
    
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



	<h5 class="card-title mt-5">Noticias y novedades</h5>

	<div class="container">
		<div class="alert alert-dark" role="alert">
  		Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
		</div>
		
		<div class="alert alert-dark" role="alert">
  		Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
		</div>
		
	</div>

  </div>
  
  
  <div class="card-footer text-muted">
    Pokreador Derechos Reservados *
  </div>
</div>





	<!-- Bootstrap 4 -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>