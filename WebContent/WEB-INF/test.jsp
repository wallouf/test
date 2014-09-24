<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test</title>
</head>
<body>
	test avec <%-- <% 
	com.wallouf.beans.Coyote coyote = (com.wallouf.beans.Coyote) request.getAttribute("coyote");
	out.println(coyote.getNom());
	%> --%>
	
	<!-- JAVA code only for demo. Don't write code in JAVA on JSP PAGE !! -->
	<jsp:useBean id="coyote" class="com.wallouf.beans.Coyote" scope="request"></jsp:useBean>
	<jsp:setProperty property="prenom" name="coyote" value="robert"/>
	${coyote.prenom }
	
	<!-- JAVA code only for demo. Don't write code in JAVA on JSP PAGE !! -->
	<%
		java.util.List<String> legumes = new java.util.ArrayList<String>();
		legumes.add(0, "ok");
		legumes.add(1, "lol");
		request.setAttribute("legumes", legumes);
	%>
	${ legumes[1] }<br/>
	
	<!-- JAVA code only for demo. Don't write code in JAVA on JSP PAGE !! -->
	<%
		java.util.Map<String,Integer> desserts = new java.util.HashMap<String,Integer>();
		desserts.put("dessert1",1);
		desserts.put("dessert2",4);
		String testOption = new String();
		testOption = "dessert1";
		request.setAttribute("testOption", testOption);
		request.setAttribute("desserts", desserts);
	%>
	${ desserts.dessert2 }<br/>
	${ desserts[testOption] }<br/>
</body>
</html>