<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pokemon</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/estilos/estilo.css">
<link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300&display=swap" rel="stylesheet">

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container p-5">
	
		<div class="row">
			
		</div>
	
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Imagen</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Ver</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  <c:forEach var="pokemon" items="${pokemones}">
		   <tr>
			<td>${pokemon.id}</td>
			<td>
				<img src="${pokemon.sprites.front_default}" width="60px" height="60px"></div>
			</td>
			
			<td>${pokemon.name}</td>
			<td>
	            <a class="btn btn-primary" href="pokemon/${pokemon.id}"><i class="fas fa-eye"></i></a>
  
	        </td>
			
			</tr>
		  </c:forEach>
		  
		  
		    
		   
		  </tbody>
		</table>
	</div>


</body>
</html>