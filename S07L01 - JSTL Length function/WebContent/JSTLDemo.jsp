<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	
	<%
	
	String [] names = {"Yann", "Peter", "Tony"};
	%>
	
	<!-- Para hacer uso de las funciones de JSTL podemos ayudarnos del
	lenguaje de expresiones ${} -->
	${fn:length("Hello World") }
	<!-- También puede ser utilizado por otros objetos, pero para ello hay que
	declarar el contenido en una variable como se muestra a continuación -->
	<c:set var="namesArray" value="<%=names %>"></c:set>
	${fn:length(namesArray) }
	
	
</body>
</html>