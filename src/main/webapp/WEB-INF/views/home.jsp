<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido a Cinema</title>
</head>
<body>
	<h1>Lista de peliculas</h1>
	
	<ol>
		<c:forEach items="${peliculas}" var="pelicula">
			<li>${pelicula} </li>
		</c:forEach> 
	</ol>
	
	<hr>
	<table border="1">
	<tr>
		<td>Id</td>
		<td>Titulo</td>
		<td>Duracion</td>
		<td>Clasificacion</td>
		<td>Genero</td>
		
	</tr>
	<c:forEach items="${peliculas}" var="pelicula">
		<tr>
				<td>${pelicula.id}</td>
				<td>${pelicula.titulo}</td>
				<td>${pelicula.duracion}</td>
				<td>${pelicula.clasificacion}</td>
				<td>${pelicula.genero}</td>
		</tr>
	</c:forEach>
	
	</table>
	
	
	
</body>
</html>