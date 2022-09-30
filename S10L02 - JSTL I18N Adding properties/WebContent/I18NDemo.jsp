<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>


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
	<p>Hello</p>
	<p>Welcome to our country</p>
	<p>We are plased with your presence</p>
	<p>Thank you</p>
	
</body>
</html>