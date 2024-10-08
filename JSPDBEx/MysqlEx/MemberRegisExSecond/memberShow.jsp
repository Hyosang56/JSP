<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import =
   "java.util.Vector, java.util.ArrayList, webdb.jdbc.RegisterBean" %>    
    
<jsp:useBean id="regMgr" 
   class="webdb.jdbc.RegisterMgrOnly"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerBeanMgrEach.jsp 파일</title>
</head>
<body  bgcolor="#FFFFCC">

<h2>Bean를 사용한 데이터베이스 연동 예제</h2><br/>
<h3>회원정보</h3>
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
      //ArrayList<RegisterBean> oblist =
        // regMgr.getRegisterList();
      Vector<RegisterBean> oblist =
            regMgr.getRegisterList();
   
      int counter = oblist.size();
      for(int i=0; i < oblist.size(); ++i)
      {
         RegisterBean  regBean = oblist.get(i);      
      %>   
      
      <tr>
         <td><%=regBean.getId()%></td>
         <td><%=regBean.getPasswd()%></td>
         <td><%=regBean.getName()%></td>
         <td><%=regBean.getNum1()%></td>
         <td><%=regBean.getNum2()%></td>
         <td><%=regBean.getEmail()%></td>
         <td><%=regBean.getPhone()%></td>
         <td><%=regBean.getZipcode()%>
         /<%=regBean.getAddress()%></td>
         <td><%=regBean.getJob()%></td>
      </tr>
   
   <% } %>
   </table>
   <br /> <br />
   total records : <%= counter %>
</body>
</html>