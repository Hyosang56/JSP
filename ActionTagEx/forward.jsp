<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward.jsp파일</title>
</head>
<body>
	<jsp:forward page="forwardGugudan.jsp">
        <jsp:param name="dan" value="5"/>
    </jsp:forward>
</body>
</html>