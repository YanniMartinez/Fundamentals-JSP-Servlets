<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property</title>
</head>
<body>
	
	<%-- Indicando que usaremos un bean --%>
	<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="application"></jsp:useBean>
	
	<%-- Estableciendo valores a las propiedades del Bean --%>
	<jsp:setProperty property="firstName" name="user" value="Yanni"/>
	<jsp:setProperty property="lastName" name="user" value="Martinez"/>
	
	Values Have been set
	
</body>
</html>