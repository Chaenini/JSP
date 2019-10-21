<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top.jsp</title>
</head>
<body>
<% Timestamp now=new Timestamp(System.currentTimeMillis()); 
	SimpleDateFormat setting = new SimpleDateFormat("yyyy년-mm월-dd일 입니다.");
	String date = setting.format(now);
%>
<p>top.jsp입니다</p>
<%=now.toString() %><p>
Copyringt @2019
<hr>
</body>
</html>