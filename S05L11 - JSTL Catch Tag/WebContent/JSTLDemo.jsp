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
	
	<c:catch var="exception">
		<% int x=10/0; %>
	</c:catch>
	${exception} <!-- Podemos ver la exception -->
	<br/>
	${exception.message} <!-- Podemos ver S�lo el mensaje de la exception -->
	
	<br/>
	
	Testing...
	
</body>
</html>