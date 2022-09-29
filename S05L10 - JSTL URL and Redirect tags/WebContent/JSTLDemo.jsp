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
	
	<%-- Value es el valor de la URL de otra página JSTL generará los links
	y esto nos puede ayudar mucho para enviar a otras pagina--%>
	<a href="<c:url value="/anotherPage.jsp"/>">Another Page</a>
	
	<%-- Usando Refirect
	<c:redirect url="https://www.google.com"></c:redirect>  --%>
	
	<%-- Tambien podemos hacerlo sobre nuestras propias página --%>
	<c:redirect url="/anotherPage.jsp"></c:redirect> 
</body>
</html>