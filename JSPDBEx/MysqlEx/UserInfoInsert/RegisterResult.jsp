<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RigisterResult.jsp</title>
</head>
<body>
   <H1>회원 가입 결과</H1>
        <H2>가입되었습니다.</H2>
      
     <%
         String name , password ;
         
         String  id = request.getParameter("id") ;
         Connection  conn = null;
         Statement  stmt = null ;
         try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul", "root","1234");
            if(conn == null)
               throw new Exception("<h1>DB에 연결불가<BR>");
            
            stmt = conn.createStatement();
            String com=
        "select * from userinfo where id='"+id+"';";
            ResultSet rs=stmt.executeQuery(com);
            
            if(!rs.next())
            {
               throw new Exception("회원 정보가 전혀없음.");
            }
            //else if(rs.next())
            else
            {               
               id = rs.getString("id");
               name = rs.getString("name") ;
               password = rs.getString("password");               
               out.println("<h1> 이름 : " + name +"</h1>"); 
                out.println("<h1> id : " + id +"</h1>");
                out.println("<h1> password : " + password +"</h1>");                
            }
         }
         finally{
            try{
               stmt.close();
            }
            catch(Exception  ignored){            
            }
            try{
               conn.close();
            }
            catch(Exception  ignored){
               
            }
         }
      %>
       %>
</body>
</html>