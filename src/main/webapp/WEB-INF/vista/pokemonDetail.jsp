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

	<div class="container d-flex justify-content-center">
	
		<div class="row">
			<div class="card text-center">
			<img class="card-img-top"  src="${pokemonJson.image }" alt="${pokemonJson.name }"> 
			<div class="card-body">
				<h5 class="card-title">Nombre: ${pokemonJson.name }</h5>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Id: ${pokemonJson.id}</li>
					
	                <li class="list-group-item">Types: 
		                <c:forEach var="pokemonTypes" items="${pokemonJson.types}">
		                ${pokemonTypes}, 
		                </c:forEach>
	                </li>
	                
	                <li class="list-group-item">Weight: ${pokemonJson.weight}</li>
	                <li class="list-group-item">Abilities: 
		                <c:forEach var="pokemonAbilities" items="${pokemonJson.abilities}">
		                ${pokemonAbilities}, 
		                </c:forEach>
	                </li>
	            </ul>
	            
			</div>
			<div class="card-footer">
                  <a class="btn btn-primary btn-block" href="/PokemonMvc">
                    <i class="fad fa-backward"></i> Back
                  </a>
                  <a class="btn btn-success btn-block" href="evolucion/${pokemonJson.id}">
                     Evoluciones
                  </a>
            </div>
           
		</div>
			
		</div>
	
	</div>

</body>
</html>