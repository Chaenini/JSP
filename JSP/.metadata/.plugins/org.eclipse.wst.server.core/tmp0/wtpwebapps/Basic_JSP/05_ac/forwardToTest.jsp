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
	ǥ�õǴ� �������� forwardToTest.jsp �Դϴ�.<br>
	���̵� : <%=id %><br>
	��� : <%=hobby %>
</body>
</html>