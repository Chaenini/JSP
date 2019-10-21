<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page info="미림여자정보과학고등학교  박교령" %>
        <%@ page import = "java.sql.Timestamp" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습-info속성</title>
</head>
<body>
<h2>page 디렉티브 연습-info속성</h2>
<%=getServletInfo()  %>
	<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat setting = new SimpleDateFormat("yyyy년 MM월 dd일");
	String strDate = setting.format(now);
	%>
	오늘은 <%=strDate %>입니다
</body>
</html>