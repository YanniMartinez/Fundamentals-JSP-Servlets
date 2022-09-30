<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Number Demo</title>
</head>
<body>

	<c:set var="someNumber" value="654321.123456"/>
	<b><c:out value="${someNumber }"></c:out></b>
	<br/>
	<br/>
	Max Integer Digits: <fmt:formatNumber type="number" maxIntegerDigits="3" value="${someNumber }"/>
	<br/>
	Max Fraction Digits: <fmt:formatNumber type="number" maxFractionDigits="3" value="${someNumber }"/>
	<br/>
	Currency: <fmt:formatNumber value="${someNumber }" type="currency"/>
	<br/>
	<fmt:setLocale value="es_MX"/>
	Currency: <fmt:formatNumber value="${someNumber }" type="currency"/>

</body>
</html>