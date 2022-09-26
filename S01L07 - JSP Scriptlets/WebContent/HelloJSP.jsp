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
	es un Script cap�z de leer instrucciones JAVA --%>
	<% 
	int x=25;
	out.println(x); //Permite imprimirlo dentro del JSP
	
	out.print("<hr/>");
	
	//Tambi�n podemos hacer uso de m�s l�gica como condicionales
	if(x>25){
		out.println("X is greater than 25 ");
	}else{
		out.println("X is not greater than 25 ");
	}
	
	out.print("<hr/>");
	
	//Uso de un Loop
	for(int i=0;i<10;i++){
		out.print("<br/>"); //Podemos imprimir HTML as�
		out.print(i);
	}
	
	out.print("<hr/>");
	
	%>
	
	<br/>
	
	<%-- Adem�s podemos usar variables fuera del SCOPE
	por lo que resulta muy �til, como vemos en el sig ejemplo --%>
	<%= x %>
</body>
</html>