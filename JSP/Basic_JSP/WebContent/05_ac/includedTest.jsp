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

���ԵǴ� ������ includedTest.jsp �Դϴ� <p>
<b><%=name %>�� ȯ���մϴ�.</b>
<hr>
</body>
</html>