<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include.jsp 파일</title>
</head>
<body>
    <jsp:include page="includeGugudan.jsp">
        <jsp:param name="dan" value="7"/>
    </jsp:include>
</body>
</html>