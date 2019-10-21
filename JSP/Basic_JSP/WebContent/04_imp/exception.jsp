<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String message = exception.getMessage();
	String objectMessage = exception.toString();
%>
에러메세지 : <b><%=message %></b><br>
에러 실제의 클래스명과 에러 메세지 : <b><%=objectMessage %></b>
</body>
</html>