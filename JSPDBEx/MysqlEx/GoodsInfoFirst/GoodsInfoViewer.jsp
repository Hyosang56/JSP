<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String codeRes = 
			request.getParameter("code");
		String titleRes = 
	        URLDecoder.decode(request.getParameter("title"));
	         String writerRes = 
	  		URLDecoder.decode(request.getParameter("writer"));
	         String priceRes = 
	               request.getParameter("price");
        out.println("<h1> code : " + codeRes +"</h1>"); 
          out.println("<h1> title : " + titleRes +"</h1>");
          out.println("<h1> writer : " + writerRes +"</h1>");
          out.println("<h1> price : " + priceRes +"</h1>");
	%>
</body>
</html>