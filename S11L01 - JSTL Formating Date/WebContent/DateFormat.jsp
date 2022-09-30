<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formating Demo</title>
</head>
<body>
	
	<c:set var="date" value="<%= new java.util.Date() %>"/>
	<c:out value="${date }"/>
	
	<br/>Time: <strong> <fmt:formatDate type="time" value="${date }"/> </strong>
	<br/>Date: <strong> <fmt:formatDate type="date" value="${date }"/> </strong>
	<br/>Date and Time: <strong> <fmt:formatDate type="both" value="${date }"/> </strong>
	<br/>Date and Time: <strong> <fmt:formatDate type="both" value="${date }" timeZone="GMT-1"/> </strong>
	
	<br/>
	<!-- Información basado en el Locale -->
	<fmt:setLocale value="en_UK"/>
	<br/>Date and Time UK: <strong> <fmt:formatDate type="both" value="${date }"/> </strong>
	
</body>
</html>