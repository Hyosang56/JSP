<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditForm.jsp 파일</title>
</head>
<body>
	<h1> EditForm.jsp파일- 상품정보 수정 폼</h1>
   <form action=Updater.jsp  method=post>
      <h1>
         코드 : <input type=text name=code
         size = 5 value ='${CODE}' readonly=true><br/>
         제목:<input type=text name=title size=50
         value='${TITLE}'><br/>
         저자:<INPUT type=text name=writer 
         size=20 value='${WRITER}' > <BR>
         가격: <input  type=text name=price
            size=8 value='${PRICE}' >원 <BR>
         <INPUT type=submit  value="수정">
   
   </form>
</body>
</html>