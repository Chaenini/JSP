<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>response 내장 객체 리다이렉트 예제</h3>
	현재 페이지는 <b>responseRedirect.jsp</b>페이지 입니다 
	<%
		response.sendRedirect("responseRedirected.jsp");
	%>
</body>
</html>