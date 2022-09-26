<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo</title>
</head>
<body>
	It's from the original page
	<%-- La siguiente sentencia carga el JSP de Forward, contenido y titulo sin cambiar la ruta
	<jsp:forward page="forward.jsp"></jsp:forward> --%>
	
	<%
		//Equivalente al anterior ejemplo:
		//request.getRequestDispatcher("forward.jsp").forward(request, response);
		
		//Redireccionando a otra página
		response.sendRedirect("redirect.jsp");
		//Notamos que cambió la URL, titulo y contenido
		
		
	%>
</body>
</html>