<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardGugudan 파일</title>
</head>
<body>
	<h1>5단 구구단 출력</h1>
    <%
        String danStr = request.getParameter("dan");
        int dan = Integer.parseInt(danStr);

        for (int i = 1; i <= 9; i++) {
            out.println(dan + " x " + i + " = " + (dan * i) + "<br>");
        }
    %>
</body>
</html>