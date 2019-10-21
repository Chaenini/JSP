<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

	<%	String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			session.setAttribute("idkey", id);
			session.setMaxInactiveInterval(60*5);
		%>
<form method="post" action="sessionPro2.jsp">
	1. 가장 좋아하는 계절은 ? <br>
	<input type="radio"  name="season"  value="봄" > 봄
	<input type="radio"  name="season"  value="여름" > 여름
	<input type="radio"  name="season"  value="가을" > 가을
	<input type="radio"  name="season"  value="겨울"> 겨울
	<p>
	2. 가장 좋아하는 과일은 ? <br>
	<input type="radio"  name="fruit"  value="수박"> 수박
	<input type="radio"  name="fruit"  value="멜론"> 멜론
	<input type="radio"  name="fruit"  value="사과"> 사과
	<input type="radio"  name="fruit"  value="오렌지" > 오렌지
	<p>
	<input type="submit" value="결과 보기">
</form>
</body>
</html>