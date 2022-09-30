<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I18N Demo</title>
</head>
<body>

	View Website in: <br/>
	<a href="?locale=en_US">English(US)</a>  
	<a href="?locale=es_AR">Argentina(ES)</a>  
	<a href="?locale=ru_RU">Russia(RU)</a> 
	<a href="?locale=hi_IN">India(HI)</a> 
	
	<hr/>
	
	<fmt:setLocale value="${param.locale }"/>
	
	<%--Base name será el nombre del package y el nombre de la propiedad --%>
	<fmt:bundle basename="i18n/website">
	
		<!-- Mostrando el valor de las etiquetas con FMT -->
		<p><fmt:message key="label.hello">Yann</fmt:message></p>
		<p><fmt:message key="label.welcome"></fmt:message></p>
		<p><fmt:message key="label.message"></fmt:message></p>
		<p><fmt:message key="label.thanks"></fmt:message></p>
	
	</fmt:bundle>
	
	Locale: ${param.locale}
</body>
</html>