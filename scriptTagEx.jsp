<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script Tag Exam First</title>
</head>
<body>
	<%!
		int data = 50;
		int sum(int a, int b){
			return a+b;
		}
		String makeITLower(String str){
			return str.toLowerCase();
		}
		int a = 10, b=20, c=30;
	%>
	<%=a+b+c %>
	<p> Today's date = <%=new java.util.Date() %></p>
	<%=makeITLower("Hello JSP") %>
	
	
	<% 	
		out.println("<h1>"+"2+3="+sum(2,3)+"<h1>");
		out.println("<h1>"+ "Value of the variable is" + data + "<h1>");
		out.println("Second Line~!");
	%>
</body>
</html>