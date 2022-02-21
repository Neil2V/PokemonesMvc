<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/estilos/estilo.css">

</head>
<body>

	<div class="container d-flex justify-content-center">
	
		<!--  <h1>Pokemon ${pokemonJson }</h1>-->
		
		<div class="card text-center">
			<img class="card-img-top"  src="${pokemonJson.image }" alt="${pokemonJson.name }"> 
			<div class="card-body">
				<h5 class="card-title">Nombre: ${pokemonJson.name }</h5>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Id: ${pokemonJson.id}</li>
	                <li class="list-group-item">types: ${pokemonJson.types}</li>
	                <li class="list-group-item">weight: ${pokemonJson.weight} gr</li>
	                <li class="list-group-item">abilities: ${pokemonJson.abilities}</li>
	            </ul>
	            
			</div>
			<div class="card-footer">
                  <div class="btn btn-primary btn-block"">
                    <i class="fad fa-backward"></i> Back
                  </div>
                  <div class="btn btn-success btn-block"">
                     Evoluciones
                  </div>
            </div>
           
		</div>
	
	</div>

</body>
</html>