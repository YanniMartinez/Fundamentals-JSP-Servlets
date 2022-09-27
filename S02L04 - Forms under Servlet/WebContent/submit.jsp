<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Name: <%= request.getParameter("name") %> <br/>
	Gender: <%= request.getParameter("gender") %>  <br/>
	Languages Known: <% 
						String[] countries = request.getParameterValues("language"); 
						if(countries !=null){
							for(String country: countries){
								out.print(country);
								out.print("<br/>");
							}
						}else{
							out.print("None selected");
						}
					 %>  <br/>
	Country: <%= request.getParameter("country") %>  <br/>
	
</body>
</html>