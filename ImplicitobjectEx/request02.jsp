<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		Enumeration<?> en = request.getHeaderNames();
	//Enumeration en = request.getHeaderNames();
		while (en.hasMoreElements()) {
			String headerName = 
					(String)en.nextElement();
			String headerValue = 
					request.getHeader(headerName);
	%>
	<h1>
		<%=headerName%> : <%=headerValue%><br>
	</h1>
	<%
		}
	%>
</body>
</html>