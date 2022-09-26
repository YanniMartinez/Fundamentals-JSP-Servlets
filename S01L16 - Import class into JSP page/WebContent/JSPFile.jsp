<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date, org.ymartinezm.UserDefined" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP File</title>
</head>
<body>
	<%-- Para incluir un elemento solemos poner lo siguiente 
	Para solucionarlo podemos hacer uso de un Directive Element
	<% out.print(new java.util.Date());%>  --%>
	
	<%-- El uso de la directiva page import nos sirve para importar
	un paquete en espec�fico de forma sencilla --%>
	<%= new Date() %>
	
	<br/>
	<%-- Sin embargo tambi�n podemos importar m�todos Custom por ejemplo: --%>
	<% out.print( new UserDefined().Demo()); %>
	
</body>
</html>