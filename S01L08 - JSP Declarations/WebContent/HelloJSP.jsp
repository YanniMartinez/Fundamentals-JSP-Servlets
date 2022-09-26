<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>Hello JSP</h1>
	
	<%-- La siguiente sintaxis permite declarar métodos
	o variables con diferentes modos de acceso como:
	Publicas, privadas, etc, sin el <%! no es posible --%>
	
	<%-- Variable pública --%>
	<%! public int x=33; %>
	<%= x %>
	
	<%-- Función --%>
	<%! 
		String message(){
			return "I love JSPs";
		}
	%>
	
	<hr/>
	<%= message() %>
</body>
</html>