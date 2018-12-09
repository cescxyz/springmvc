<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido a Cinema</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
	

	
	<div class="container">
	<div class="card-header mt-5">Lista de Peliculas</div>
	
	<hr>
	<table class="table table-striped table-bordered table-hover" border="1">
	<thead>
	<tr>
		<td>Id</td>
		<td>Titulo</td>
		<td>Duracion</td>
		<td>Clasificacion</td>
		<td>Genero</td>
		<td>Imagen</td>
		<td>Fecha Estreno</td>
		<td>Estatus</td>
	</tr>
	</thead>
	<c:forEach items="${peliculas}" var="pelicula">
		<tr>
				<td>${pelicula.id}</td>
				<td>${pelicula.titulo}</td>
				<td>${pelicula.duracion}</td>
				<td>${pelicula.clasificacion}</td>
				<td>${pelicula.genero}</td>
				
				<td>${pelicula.imagen}</td>
				<td>${pelicula.fechaEstreno}</td>
				<td>${pelicula.status}</td>
		</tr>
	</c:forEach>
	
	</table>
	
	</div>
	
</body>
</html>