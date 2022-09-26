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
	
	<%-- A esto se le conoce como Scriptlet, ya que
	es un Script capáz de leer instrucciones JAVA --%>
	<% 
	int x=25;
	out.println(x); //Permite imprimirlo dentro del JSP
	
	out.print("<hr/>");
	
	//También podemos hacer uso de más lógica como condicionales
	if(x>25){
		out.println("X is greater than 25 ");
	}else{
		out.println("X is not greater than 25 ");
	}
	
	out.print("<hr/>");
	
	//Uso de un Loop
	for(int i=0;i<10;i++){
		out.print("<br/>"); //Podemos imprimir HTML así
		out.print(i);
	}
	
	out.print("<hr/>");
	
	%>
	
	<br/>
	
	<%-- Además podemos usar variables fuera del SCOPE
	por lo que resulta muy útil, como vemos en el sig ejemplo --%>
	<%= x %>
</body>
</html>