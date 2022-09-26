<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>Hello JSP</h1>
	<%-- Declaración de un objeto para el Date --%>
	<%=new java.util.Date() %>
	<br/>
	
	<%-- Mostrando el valor directo de una variable --%>
	<%= 25*4 %>
	<br>
	
	<%-- Mostrando el valor de un booleano --%>	
	<%= 25>4 %>
</body>
</html>