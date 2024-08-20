<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setPropertyEx.jsp 파일</title>
</head>
<body>
	<jsp:useBean id="gildong" 
    class="ch04.com.dao.Person" scope="request" />
    <jsp:setProperty property="id" name="gildong" 
    	value="24681357"/>
  	<jsp:setProperty property="name" name="gildong"
  		value="박길동"/>
	<h1>
<!-- scriptlet 태그와 표현문태그(ExpressionTag)둘 다 작성 -->
		<p> 변경된 id: <%out.println(gildong.getId());%>
		<p> 변경된 name: <%out.println(gildong.getName());%>
	</h1>
		<p> 변경된 id: <%=gildong.getId() %>
		<p> 변경된 name: <%=gildong.getName() %>
</body>
</html>