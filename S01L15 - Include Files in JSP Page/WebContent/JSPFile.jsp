<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP File</title>
</head>
<body>
	<%-- Para agregar contenido EST�TICO! No se reflejaran cambios, ideal para archivos est�ticos --%>
	<%-- Podemos incluir archivo haciendo uso de Directive elements --%>
	<%@ include file="file1.txt" %> <%-- En este caso podemos directo porque est� dentro del WebContet --%>
	
	<br/>
	
	<%-- Para agregar contenido DIN�MICO!, se ver�n los cambios, consume m�s recursos por ir a preguntar el contenido--%>
	<%-- Otra manera de incluirlo es con la tag JSP:include --%>
	<jsp:include page="file2.txt"></jsp:include>
	
</body>
</html>