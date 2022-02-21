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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/estilos/paginacioncss.css">
<link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/recursos/js/jqueryy.js"></script>
<script src="${pageContext.request.contextPath}/recursos/js/bootstrapp.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container p-5">
	
		<div class="row">
			<nav class="navbar navbar-expand-md navbar-dark bg-dark">
				<a class="navbar-brand text-monospace"><i class="fas fa-search"></i></a>
					<input type="text" onkeyup="doSearch()" class="form-control"  id="buscar" placeholder="buscar...">
			</nav>
		</div>
	
		<table id="datos" class="table table-hover" number-per-page="3" current-page="">
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
	
	<script type="text/javascript">
	$(function(){
		$("#datos").pagination();
	});
	</script>
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-36251023-1']);
	  _gaq.push(['_setDomainName', 'jqueryscript.net']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>   
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/recursos/js/buscador.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/recursos/js/paginacion.js" ></script>
		

</body>
</html>