<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%-- importando elementos Header y Footer --%>   

<c:import url="/include/header.jsp">
	<c:param name="title" value="Titulo desde parametro JSTL"></c:param>
</c:import>
Contenido del Header importado

<c:import url="/include/footer.jsp"></c:import>