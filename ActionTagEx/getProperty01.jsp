<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getProperty01.jsp 파일</title>
</head>
<body>
	<jsp:useBean id="gildong" 
   class="ch04.com.dao.Person" scope="request" />
   <h1>
   		<p>아이디: <jsp"getProperty name="gildong"
   			property="id" />
		<p>이름: <jsp"getProperty name="gildong"
   			property="name" />
   </h1>
</body>
</html>