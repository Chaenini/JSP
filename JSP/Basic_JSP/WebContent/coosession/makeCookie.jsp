<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> ��Ű ���� </title>
</head>
<body>
<%
	String cookieName = "school";
	Cookie cookie = new Cookie(cookieName, "mirim");
		cookie.setMaxAge(60*2);
	response.addCookie(cookie);
%>

	<h2>��Ű�� �����ϴ� ������ </h2>
	"<%=cookieName%>" ��Ű�� �����Ǿ����ϴ�. <br>
	<form method= "POST" action = "useCookie.jsp">
		<input type="submit" value = "������ ��Ű Ȯ��">
	</form>
</body>
</html>