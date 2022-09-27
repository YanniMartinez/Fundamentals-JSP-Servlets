<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Property</title>
</head>
<body>

	<%-- Buscaremos comunicar el JSP con nuestro BEAN,
	para ello podemos usar la siguiente forma, donde
	indicamos que se trata de un Bean, le asignamos un ID
	y le mancionamos de que clase proviene (path completo)
	Finalmente se le menciona el Scope, en este caso la sesion--%>
	<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="page"></jsp:useBean>
	
	<%-- Para leer información de nuestra clase usamos getProperty, algo importante
	en el nombre debe ir el ID que le dimos a nuestro bean anteriormente y en 
	property va el nombre de la propiedad proveniente de nuestra clase--%>
	First Name: <jsp:getProperty property="firstName" name="user"/> 
	<br/>
	Last Name:  <jsp:getProperty property="lastName" name="user"/>
	

</body>
</html>