<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>oi
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ page contentType="text/html;charset=UTF-8" 
			info = "Basic_JSPPageContext"%>
	<%
		String pageInfo= this.getServletInfo();
	%>
	<h1>Page Example</h1>
	���� �������� info�� : <%=pageInfo %>
	
</body>
</html>