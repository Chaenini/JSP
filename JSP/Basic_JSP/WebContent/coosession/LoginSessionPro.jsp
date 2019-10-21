<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor = "#ffffcc">
	<% 
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	session.setAttribute("id", id);
	session.setAttribute("pwd", pwd);
	%>
	<form method = "POST" action = "LogoutSession.jsp">
	<table border = "1" cellpadding= "10">
	<tr>
		<td colspan = "3"> 
		<p align = "center">
		<%= (String)session.getAttribute("id") %>님 로그인 되었습니다. 
		</p>
		</td>
	</tr>
	<tr>
		<td>
			<input type = "button" name = "retrieve" value = "회원정보조회">
		</td>
		<td>
			<input type = "button" name = "update" value = "회원정보수정">
		</td>
		<td>
			<input type = "button" name = "delete" value = "회원 탈회">
		</td>
	</tr>
	<tr>
		<td colspan = "3">
			<p align = "center">
				<input type="submit" value= "로그아웃">
			</p>
		</td>
	</tr>
	</table>
	</form>
</body>
</html>