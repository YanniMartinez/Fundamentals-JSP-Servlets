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
	<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="request"></jsp:useBean>
	
	<%-- Estableciendo valores a las propiedades del Bean --%>
	<jsp:setProperty property="firstName" name="user" value="Yanni"/>
	<jsp:setProperty property="lastName" name="user" value="Martinez"/>
	
	Values Have been set
	
	<%-- Haciendo un forward del GET para poder ver el cambio dentro de la misma petición
	Recordemos que en el forward nos mantenemos en este JSP pero desplegamos la información
	del JSP que tiene GET --%>
	<%
		request.getRequestDispatcher("getRequestProperty.jsp").forward(request, response);
	%>
	
</body>
</html>