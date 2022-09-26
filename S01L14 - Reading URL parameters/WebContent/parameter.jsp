<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo Parameter</title>
</head>
<body>
	
	<%
	//http://localhost:8080/S01L14/parameter.jsp?getValue1=Hola&getValue2=Mundo
	out.println("Value 1: "+request.getParameter("getValue1"));
	out.println("Value 2: "+request.getParameter("getValue2"));
	
	%>
	
</body>
</html>