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
	
	<%-- Este es un comentario JSP --%>
	<%-- response.sendRedirect("https://www.facebook.com") //Nunca se ejecutará--%>
	<% response.sendRedirect("https://www.google.com"); %>
	
</body>
</html>