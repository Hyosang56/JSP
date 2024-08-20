<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeGugudan.jsp 파일</title>
</head>
<body>
	<h2>구구단 출력</h2>
    <%
        String danStr = request.getParameter("dan");
        int dan = Integer.parseInt(danStr);

        out.println("<h3>" + dan + "단 출력</h3>");
        for (int i = 1; i <= 9; i++) {
            out.println(dan + " x " + i + " = " + (dan * i) + "<br>");
        }
    %>
</body>
</html>