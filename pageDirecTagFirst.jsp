<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorHandling.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page Directive Tag-Error Handling</title>
</head>
<body>
	<h2>error Page Directive Tag</h2>
	<h2>페이지에 오류가 발생하였습니다.</h2>
	<%
		String str= null;
		out.println(str.toString());
	%>
</body>
</html>