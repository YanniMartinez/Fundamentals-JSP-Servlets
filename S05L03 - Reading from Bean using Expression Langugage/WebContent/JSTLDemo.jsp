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

	<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="page"></jsp:useBean>
	<!-- Imprimiendo el valor de un atributo de nuestro Bean con lenguaje de expresion -->
	${user.getFirstName()}
	<!-- También podemos llamar atributos -->
	${user.fistName}
	${user.lastName}
	
	<!-- También podemos hacer uso de la tag c:out -->
	<c:out value="${user.firstName}"></c:out>

</body>
</html>