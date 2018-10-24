<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenidos a Cineapp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<spring:url value ="/resources/" var = "urlPublic"/>	
</head>
<body>

	<%-- <o1> <c:forEach items="${peliculas }" var="pelicula">
		<li>${pelicula }</li>
	</c:forEach> </o1>--%>
	<div class="card">
		<div class="card-header">Lista de Películas</div>

		<table class="table table-hover">
			<thread>
			<tr>
				<th>Id</th>
				<th>Titulo</th>
				<th>Duracion</th>
				<th>Clasificacion</th>
				<th>Genero</th>
				<th>Imagen</th>
				<th>Fecha de Estreno</th>
				<th>Estatus</th>

			</tr>
			</thread>
			<tbody>
				<c:forEach items="${peliculas }" var="pelicula">
					<tr>
						<td>${pelicula.id }</td>
						<td>${pelicula.titulo }</td>
						<td>${pelicula.duracion }min.</td>
						<td>${pelicula.clasificacion }</td>
						<td>${pelicula.genero }</td>
						<td><img src="${urlPublic}images/${pelicula.imagen}" width="80" height="100"></td>
						<td>${pelicula.genero }</td>
						<td>${pelicula.fechaEstreno }</td>
						<td>${pelicula.status }</td>
					</tr>
				</c:forEach>
				</o1>

			</tbody>
		</table>
	</div>
</body>
</html>