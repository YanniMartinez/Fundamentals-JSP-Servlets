<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP File</title>
</head>
<body>
	<%-- Para agregar contenido ESTÁTICO! No se reflejaran cambios, ideal para archivos estáticos --%>
	<%-- Podemos incluir archivo haciendo uso de Directive elements --%>
	<%@ include file="file1.txt" %> <%-- En este caso podemos directo porque está dentro del WebContet --%>
	
	<br/>
	
	<%-- Para agregar contenido DINÁMICO!, se verán los cambios, consume más recursos por ir a preguntar el contenido--%>
	<%-- Otra manera de incluirlo es con la tag JSP:include --%>
	<jsp:include page="file2.txt"></jsp:include>
	
</body>
</html>