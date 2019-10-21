<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 쿠키 생성 </title>
</head>
<body>
<%
	String cookieName = "school";
	Cookie cookie = new Cookie(cookieName, "mirim");
		cookie.setMaxAge(60*2);
	response.addCookie(cookie);
%>

	<h2>쿠키를 생성하는 페이지 </h2>
	"<%=cookieName%>" 쿠키가 생성되었습니다. <br>
	<form method= "POST" action = "useCookie.jsp">
		<input type="submit" value = "생성된 쿠키 확인">
	</form>
</body>
</html>