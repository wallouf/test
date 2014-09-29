<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table>
			<thead>
				<tr><th>Param name</th><th>Param value</th></tr>
			</thead>
			<tbody>
			<c:forEach items="${paramValues }" var="list" varStatus="statut">
				<tr><td><c:out value="${list.key }"></c:out></td><td>
				<c:forEach items="${list.value }" var="valuesList">
					<c:out value="${valuesList }"></c:out>
				</c:forEach>
				</td></tr>
			</c:forEach>
			</tbody>
		</table>
		
		<ul>
			<li>Nom: <c:out value="${param.nom }"/></li>
			<li>Prenom: <c:out value="${param.prenom }"/></li>
			<li>Pays: </li>
			<c:choose>
				<c:when test="${ !empty param.pays }">
					<ul>
						<c:forEach items="${param.pays }" var="list" varStatus="statut">
							<li><c:out value="${list }"></c:out></li>
						</c:forEach>
					</ul>
				</c:when>
				<c:otherwise>Aucun pays.</c:otherwise>
			</c:choose>
			<li>Autres pays: </li>
			<c:choose>
				<c:when test="${ !empty param.autre }">
					<ul>
						<c:forTokens items="${param.autre }" var="list" delims=",">
							<li><c:out value="${list }"></c:out></li>
						</c:forTokens>
					</ul>
				</c:when>
				<c:otherwise>Aucun autre pays.</c:otherwise>
			</c:choose>
		</ul>

</body>
</html>