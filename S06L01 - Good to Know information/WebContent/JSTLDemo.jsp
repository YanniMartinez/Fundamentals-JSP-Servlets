<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	
	<%
	String URL="<a href='https://www.google.com'>Home</a>";
	ServletContext context  = getServletContext();
	context.setAttribute("url", URL);
	//La ventaja de usar el contexto de servlet es que estára disponible
	//para toda la aplicación
	
	
	//También podemos crear elemento basado en una sesion
	session.setAttribute("author", "Yann");
	%>
	${url}
	${author}
	
	<!--  Imprimirá todo el valor de la cadena -->
	<c:out value="${url}"></c:out>
	
</body>
</html>