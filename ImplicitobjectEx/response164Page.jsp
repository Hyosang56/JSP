<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<h1><p>HTTP 관련 헤더 정보를 추가 및 설정하여 출력하기 예제</p></h1>
	<%
		response.setHeader("Cache-control", "use_cache");
		response.addHeader("contentType" , "text/html;charset=UTF-8") ;
		response.setDateHeader("date" , 1L) ;
		
	%>
	<h1>
		Cache-control : <%=response.getHeader("Cache-control") %><br>
		contentType : <%=response.getHeader("contentType") %><br>
		date : <%=response.getHeader("date") %>
	</h1>
</body>
</html>