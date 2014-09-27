<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
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
	
	Boucle pour une liste sans EL/JSP :
	<%
		List<Integer> liste = (List<Integer>) request.getAttribute("liste");
	for(Integer i : liste){
		out.println(i + " : ");
	}
	%><br/>
	
	Condition impair/pair sans EL/JSP :
	<%
		Integer jour = (Integer) request.getAttribute("jour");
		if (jour % 2 == 0){
			out.println("Jour pair :"+ jour);
		}else{
			out.println("Jour impair :"+ jour);
		}
	%><br/>
</body>
</html>