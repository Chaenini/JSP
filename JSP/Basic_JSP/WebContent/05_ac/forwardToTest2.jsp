<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
	<%
		String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");
	%>
		표시되는 페이지는 forwardToTest2.jsp 입니다.<br>
	아이디 : <%=id %><br>
	취미 : <%=hobby %>
</body>
</html>