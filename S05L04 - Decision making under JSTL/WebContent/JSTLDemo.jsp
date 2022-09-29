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

	<!-- Forma de realizar decisiones dentro de JSTL -->
	<c:if test="${param.name == 'Yann'}">
		<img src="https://i.pinimg.com/736x/7f/d8/56/7fd856547e66d5d1dfc90525e7a0123d.jpg"/>
	</c:if>
	
	Hello user
</body>
</html>