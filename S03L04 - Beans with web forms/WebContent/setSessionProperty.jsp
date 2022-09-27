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
	<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="session"></jsp:useBean>
	
	<form action="getSessionProperty.jsp" method="post">
	
		<%-- Algo muy importante es que en name debemos poner el nombre del atributo en nuestro bean --%>
		First Name: <input type="text" name="firstName" value='<jsp:getProperty property="firstName" name="user"/>'/>  <br/>
		Last Name: <input type="text" name="lastName" value='<jsp:getProperty property="lastName" name="user"/>'/> <br/>
		<input type="submit" value="submit"/>
	</form>
	
</body>
</html>