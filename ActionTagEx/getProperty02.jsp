<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getProperty02.jsp 파일</title>
</head>
<body>
		<jsp:useBean id="heungmin" 
   class="ch04.com.dao.Person" scope="request" />
   	<jsp:setProperty name="heungmin" 
      property="id" value="20249876" />
   <jsp:setProperty name="heungmin" 
      property="name" value="손흥민" />
    <h1>
    	<p>아이디: <jsp:getProperty name="heungmin"
   			property="id" />
		<p>이름: <jsp:getProperty name="heungmin
		"
   			property="name" />
   </h1>
</body>
</html>