<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBeanGugudan.jsp 파일</title>
</head>
<body>
	<h1>8단 구구단 출력</h1>
	<jsp:useBean id = "gugudan" class=ch04.com.dao.GuGuDan"
		scope="request"/> 
	
	<%
		int dan = 8;
		for (int i = 1; i<=9; i++){
			int result = gugudan.process(dan,i);
			out.println(dan+"x"+i+"="+result+"<br>");
		}
	%>
</body>
</html>