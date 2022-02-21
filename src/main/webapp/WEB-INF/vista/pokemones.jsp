<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 

</head>
<body>


	<div class="container p-5">
	
		<div class="row">
			
		</div>
	
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">id</th>
		      <th scope="col">imagen</th>
		      <th scope="col">nombre</th>
		      
		    </tr>
		  </thead>
		  <tbody>
		  
		  <c:forEach var="pokemon" items="${pokemones}">
		   <tr>
			<td>${pokemon.id}</td>
			<td>
				<img src="${pokemon.sprites.front_default }"></div>
			</td>
			
			<td>${pokemon.name}</td>
			
			
			</tr>
		  </c:forEach>
		  
		  
		    
		   
		  </tbody>
		</table>
	</div>


</body>
</html>