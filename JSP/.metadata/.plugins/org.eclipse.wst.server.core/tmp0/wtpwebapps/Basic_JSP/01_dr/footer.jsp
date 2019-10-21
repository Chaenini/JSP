<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

<% Date date = new Date(); %>

<p> 현재의 날짜와 시간은 </p>

<%=date.toLocaleString() %>

<p>Copyright ©2019</p>

</center>
</body>
</html>