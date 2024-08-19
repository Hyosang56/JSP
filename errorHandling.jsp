<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 처리하는 페이지</title>
</head>
<body>
	<h2>오류가 발생하였습니다.</h2>
	<h2>exception 내장 객체를 이용한 오류처리</h2>
	<%
		exception.printStackTrace(
				new java.io.PrintWriter(out));
	%>
</body>
</html>