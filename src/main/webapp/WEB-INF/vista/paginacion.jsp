<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<meta charset="ISO-8859-1">

<script type="text/javascript" src="${pageContext.request.contextPath}/recursos/js/paginacion.js" ></script>	

<style>
  
ulll {
  list-style: none;
  margin-top: 10px;
  padding: 0;
}

liii {
  border-radius: 3px;
  color: black;
  background: #eee;
  cursor: pointer;
  display: inline;
  font-weight: 200;
  margin: 10px 5px 0px 2px;
  padding: 10px;
  text-align: center;
  width: 10px;
}

.activeee {
  background: teal;
  color: white;
}
</style>


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