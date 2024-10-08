<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.ArrayList" %>   
<%@ page import = "com.webdb.TblRegister" %>
  
<jsp:useBean  id="regBean" 
   class="com.webdb.TblRegister" 
   scope="request"/>  
    
<% ArrayList<TblRegister> obmem = 
            regBean.readDB(); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
   <H1>Bean를 사용한 데이터베이스 연동 예제</H1>
   <h2>회원 정보</h2>
      
   <table bordercolor="#0000ff" border="1">
      <tr>
         <td><strong>ID</strong></td>
         <td><strong>PASSWD</strong></td>
         <td><strong>NAME</strong></td>
         <td><strong>NUM1</strong></td>
         <td><strong>NUM2</strong></td>
         <td><strong>EMAIL</strong></td>
         <td><strong>PHONE</strong></td>
         <td><strong>ZIPCODE/ADDRESS</strong></td>
         <td><strong>JOB</strong></td>   
      </tr>
      <%
         //for(int i=0; i < 2; ++i)
         //for(int i=0; i < obmem.size() ; ++i)
         for(int i=0; i < TblRegister.getCounter() ; ++i)
         { 
            regBean = obmem.get(i);         
      %>      
         <tr>
            <td><%=regBean.getId() %> </td>
            <td><%=regBean.getPwd() %></td>
            <td><%=regBean.getName() %></td>
            <td><%=regBean.getNum1() %></td>
            <td><%=regBean.getNum2() %></td>
            <td><%=regBean.getEmail() %></td>
            <td><%=regBean.getPhone() %></td>
            <td><%=regBean.getZipcode() %>
             / <%=regBean.getAddress() %></td>
            <td><%=regBean.getJob() %></td>
         </tr>
      <%}
         
      %>
   </table>
   
   <h1> Total records : <%=obmem.size() %> </h1>
   <h1> 총 레코드 개수 : 
      <%=TblRegister.getCounter() %></h1>
      <% TblRegister.setCounter(0); %>
</body>
</html>