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

	<c:set var="name" value="Yann"></c:set>
	<c:out value="name"></c:out>
	
	<!-- Usando lenguaje de expresión: -->
	<c:out value="${name}"></c:out>
	
	<!-- Otra manera de imprimir el valor por lenguaje de expresion es la siguiente -->
	${name}

	<!-- Liberando memoria usada por una variable -->
	<c:remove var="name"/>
	<!-- Nunca se imprimirá porque no existe la variable -->
	${name}
	
	<!-- Forma de imprimir el valor de un parametro por URL llamado msg, basarnos
	en el siguiente ejemplo: 
	http://localhost:8080/S05L02_-_JSTL_Set_and_remove_Tags/JSTLDemo.jsp?msg=HelloWorld 
	Notese que imprime el valor del parametro llamado msg-->
	${param.msg}

</body>
</html>