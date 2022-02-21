<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>



		  			
					
			  
			<div class="container">
			
				
				<div class="row">
					<c:forEach var="evolucionPokemon" items="${pokemonesEvolucionJson}">
					<div class="col-md-4">
						<div class="card text-center mb-10 ">
						
							<img src="${evolucionPokemon.image}" class="card-img-top">
							<div class="card-body">
								<p class="card-text">Nombre: ${evolucionPokemon.name}</p>
								<p class="card-text">Id: ${evolucionPokemon.id}</p>
								<p class="card-text">Weight: ${evolucionPokemon.weight}</p>
								<p class="card-text">Types: ${evolucionPokemon.types}</p>
								<p class="card-text">Abilities: ${evolucionPokemon.abilities}</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				
			
		
			</div>
			
			
			
		  
	
</body>
</html>