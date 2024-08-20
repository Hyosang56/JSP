<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
   <form action="formEx_process.jsp" method="post">
      오렌지<input type="checkbox" name="FruitGroup" value="Orange" /> 
      사과<input type="checkbox" name="FruitGroup" value="Apple" /> 
      바나나<input type="checkbox" name="FruitGroup" value="Banana" /> 
      <input type="submit" value="전송" />
   </form>
</body>
</html>