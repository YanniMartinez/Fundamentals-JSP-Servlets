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
		String URL="www.google.com.mx";
	
	%>
	
	<%-- En items se pondrá el String a usar, normalmente es grande
	en DELIM pondremos el valor por el cual lo separaremos: --%>
	<c:forTokens items="www.google.com.mx" delims="." var="temp">
		${temp}
		<br/>
	</c:forTokens>
	
	Usando una variable:
	
	<c:forTokens items="<%=URL %>" delims="." var="temp">
		${temp}
		<br/>
	</c:forTokens>
	
</body>
</html>