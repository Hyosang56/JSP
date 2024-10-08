<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorpage="DBError.jsp"%>
    
<%@ page import = "java.sql.*" %>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>GoodsInfoReader.jsp 파일</h2>
   
   <%      
      request.setCharacterEncoding("UTF-8");
      //request.setCharacterEncoding("EUC-KR");
      String gcode = request.getParameter("code");
       String title ;
       String writer ;
       int price;   
       
       String url = null ; //추가
       String ecode = null; //추가
       String etitle = null ;//추가
       String ewriter = null ;//추가
       //int mycode = 10005 ;
          
       Connection conn = null;
       Statement stmt = null;
       try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           conn = DriverManager.getConnection(
   "jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul", "root","1234");
           if (conn == null)
               throw new Exception(
               "<h1> 데이터베이스에 연결할 수 없습니다.<BR>");
           stmt = conn.createStatement();
           ResultSet  rs  = stmt.executeQuery(
    	"select *from goodsinfo where code = '"+gcode+"';");
           if (!rs.next())
               throw new Exception(
               "상품코드(" + gcode + ")에 해당하는 데이터가 없습니다.");
           
           gcode  = rs.getString("code");
           title = rs.getString("title");
           writer = rs.getString("writer");
           //writer= rs.getString(writer) ;
           price = rs.getInt("price");
         //추가됨
           // 가져온 정보를 다음 페이지로 넘길 때 인코딩 처리
              etitle = URLEncoder.encode(title, "UTF-8"); // 예시 제목
              ewriter = URLEncoder.encode(writer, "UTF-8");
       }
       finally {
           try { 
               stmt.close();
           } 
           catch (Exception ignored) {
           }
           try { 
               conn.close();
           } 
           catch (Exception ignored) {
           }
       }
       response.sendRedirect("GoodsInfoViewer.jsp?code="+gcode+
    	         "&title="+ etitle+"&writer="+
    	         ewriter+"&price="+price);
       %>
</body>
</html>