<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.webdb.BBSItem" %>
<%
	int seqNo = Integer.parseInt(
			request.getParameter("SEQ_NO"));
	BBSItem bbsItemOB = new BBSItem();
	bbsItemOB.setSeqNo(seqNo);
	bbsItemOB.readDB();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<H2>게시글 읽기
	[제목] <%=bbsItemOB.getTitle() %>
	[작성자] <%= bbsItemOB.getWriter() %><BR>
       [작성일시] <%= bbsItemOB.getDate() %> <BR>
       <%= bbsItemOB.getTime() %> <BR>
       ----------------------------------- <BR>
       <%= bbsItemOB.getContent() %>
	</H2>
</body>
</html>