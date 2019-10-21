<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
	<%
		String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");
	%>
	표시되는 페이지는 forwardToTest.jsp 입니다.<br>
	아이디 : <%=id %><br>
	취미 : <%=hobby %>
</body>
</html>