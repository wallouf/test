<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test</title>
</head>
<body>
	test avec :
	${requestScope.coyote.prenom }
	${requestScope.coyote.nom }<br/>
	
	Affichage valeur en JSTL : <c:out value="texte" /><br/>
	Affichage valeur en JSTL : <c:out value="${texte }" /><br/>
	
	Boucle pour une liste sans EL/JSP :
	<%
		List<Integer> liste = (List<Integer>) request.getAttribute("liste");
		for(Integer i : liste){
			out.println(i + " : ");
		}
	%><br/>
	
	Boucle pour une liste avec EL/JSP :
	<c:forEach items="${liste }" var="items">
		<c:out value="${items }"></c:out>
	</c:forEach>
	<br/>
	
	Condition impair/pair sans EL/JSP :
	<%
		Integer jour = (Integer) request.getAttribute("jour");
		if (jour % 2 == 0){
			out.println("Jour pair :"+ jour);
		}else{
			out.println("Jour impair :"+ jour);
		}
	%><br/>
	
	Condition impair/pair avec EL/JSP :
	<c:choose>
		<c:when test="${jour % 2 == 0 }">
			<c:out value="Jour pair : ${jour }"></c:out>	
		</c:when>
		<c:otherwise>
			<c:out value="Jour impair : ${jour }"></c:out>
		</c:otherwise>
	</c:choose>
	<br/>
</body>
</html>