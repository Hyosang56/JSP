<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person Java Beans Ex2</title>
</head>
<body>
	<jsp:useBean id="gildong" class="ch04.com.dao.Person"
		scope="request"/>
		<h1>
			<p>아이디: <%=gildong.getId() %>
			<p>이름: <%=gildong.getName() %>
		</h1>
	
	<hr/>
	<%
		gildong.setId(13579);
		gildong.setName("길동짱");
	%>
	<jsp:include page = "useBean02.jsp" />
</body>
</html>