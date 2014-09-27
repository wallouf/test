<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test</title>
</head>
<body>
	test avec :
	<jsp:useBean id="coyote" class="com.wallouf.beans.Coyote" scope="request"></jsp:useBean>
	<jsp:getProperty property="prenom" name="coyote"/>
	<jsp:getProperty property="nom" name="coyote"/>
</body>
</html>