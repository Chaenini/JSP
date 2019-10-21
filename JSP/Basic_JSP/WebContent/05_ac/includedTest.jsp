<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<%String name = request.getParameter("name"); %>

포함되는 페이지 includedTest.jsp 입니다 <p>
<b><%=name %>님 환영합니다.</b>
<hr>
</body>
</html>