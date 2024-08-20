<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx_process.jsp 파일</title>
</head>
<body>
      <h4>선택한 과일</h4>
   <%
      String message = " ";
      String values[] = 
         request.getParameterValues("FruitGroup");
      if (values != null) {
         for (int i = 0; i < values.length; i++) {
            message = message + values[i] + " ";
         }
      }
   %>
   <%=message%>
   
</body>
</html>