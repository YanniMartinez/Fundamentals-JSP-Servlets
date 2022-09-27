<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Demo</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/Controller" method="get">
		Full name: <input type="text" name="name"> <br/>
		Gender: <input type="radio" name="gender" value="male"> Male
				<input type="radio" name="gender" value="female"> Female
		Languages know: <input type="checkbox" name="language" value="english"/> English
						<input type="checkbox" name="language" value="spanish"/> Spanish
						<input type="checkbox" name="language" value="french"/> French
		Country: <select name="country">
				 	<option value="mexico">México</option>
				 	<option value="spain">España</option>
				 	<option value="united">Estados Unidos</option>
				 	<option value="french">Francia</option>
				 	<option value="england">Inglaterra</option>
				 	<option value="swiss">Suiza</option>
				 	<option value="brazil">Brazil</option>
				 	<option value="germany">Alemania</option>
				 </select>
				 <input type="submit" value="submit"/>
	</form>
</body>
</html>