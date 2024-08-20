<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean action tag 연습</title>
</head>
<body>
	<!-- Calculator calc = new Calculator(); -->
	<jsp:useBean id = "calc" class="ch04.com.dao.Calculator"
	scope="request"/>
	<%
		int res = calc.process(5);
		out.println("<h1> res="+ res + "</h1>");
	%>
</body>
</html>