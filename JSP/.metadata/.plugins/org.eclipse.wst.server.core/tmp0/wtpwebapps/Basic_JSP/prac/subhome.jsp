<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String addr = request.getParameter("addr");
	%>
	
	사이트 주소 : <%=addr %>
	
</body>
</html>