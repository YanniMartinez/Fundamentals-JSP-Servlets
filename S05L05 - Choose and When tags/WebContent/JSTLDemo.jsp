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

	<c:choose>
	
		<c:when test="${param.lang == 'Java'}">
			Learning Java
		</c:when>
		<c:when test="${param.lang == 'Python'}">
			Learning Python
		</c:when>
		
		<%-- Opción para poner que un valor sea null 
		<c:when test="${param.lang == null}">
			Learning something good!
		</c:when>
		--%>
		
		<%-- Este es el caso ideal para considerar todos los demás
		casos --%>
		<c:otherwise>
			Learning something Good!
		</c:otherwise>
		
	</c:choose>
	
</body>
</html>