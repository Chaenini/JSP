<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<form method = "POST" action = "LoginSessionPro.jsp">
	<table border="1" cellpadding = "10">
		<tr>
		<td>
			<p align="center">
				<b>로그인</b>
			</p>
		</td>
		</tr>
		<tr>
		<td>	아이디 <input type = "text" name = "id">
		</td>
		</tr>
		<tr>
		<td>비밀번호 <input type = "text" name = pwd">
		</td>
		</tr>
		<tr>
		<td>
			<p align="center">
				<input type = "submit" value = "로그인">
			</p>
		</td>
		</tr>
	</table>
	</form>

</body>
</html>