<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="pageDirectiveisErrorPage.jsp"%>
    <% int one=1;
    	int zero=0;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Directive ErrorPage</h1>
<p>one과 zero의 사칙연산</p>
one+zero=<%=one+zero %>
one-zero=<%=one-zero %>
one*zero=<%=one*zero %>
one/zero=<%=one/zero%>
</body>
</html>