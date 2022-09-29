<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	<!-- Primero hay que importar nuestro XML -->
	<c:import url="/Users.xml" var="XMLFile"></c:import>
	<!-- Uso de tags XML -->
	<x:parse xml="${XMLFile }" var="XMLDoc"></x:parse>
	<!-- Este out es simular, sin embargo debemos indicar los nodos o valores a imprimr -->
	<x:out select="$XMLDoc/users/user/name"/><br/>
	
	<!-- Si no queremos especificar el nodo entonces podemos usar: -->
	Name: <x:out select="$XMLDoc/users/user[2]/name"/> <br/>
	Gender: <x:out select="$XMLDoc/users/user[2]/gender"/><br/>
	Age: <x:out select="$XMLDoc/users/user[2]/age"/><br/>
	
	
</body>
</html>