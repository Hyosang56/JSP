<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 회원 정보 데이터베이스에 입력</h2>
	<%
      request.setCharacterEncoding("UTF-8");
      
      String name = request.getParameter("name");
      String id = request.getParameter("id");
      String password = 
         request.getParameter("password");
      
      if( name ==null || id ==null || 
            password ==null)
         throw new Exception("데이터를 입력하시오");
      
      Connection  conn =  null;
      Statement  stmt = null ;
      
      try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn = DriverManager.getConnection(
   "jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul", "root","1234");
         if(conn == null)
            throw new Exception("<h1>DB에 연결불가<BR>");
                  
         stmt = conn.createStatement();
         String command = String.format("insert into userinfo"
       	+"(name,id,password) values('%s','%s','%s') ",
       	name, id, password);
         int rowNum = stmt.executeUpdate(command);
         if(rowNum<1)
        	 throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      }
      finally {
          try { 
              stmt.close();
          } 
          catch (Exception ignored) {
          }
          try { conn.close();  } 
          catch (Exception ignored) {  
       	  
          }  
      }
      
      response.sendRedirect("RegisterResult.jsp?id="+id);
      %>
</body>
</html>