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
		<%= (String)session.getAttribute("id") %>�� �α��� �Ǿ����ϴ�. 
		</p>
		</td>
	</tr>
	<tr>
		<td>
			<input type = "button" name = "retrieve" value = "ȸ��������ȸ">
		</td>
		<td>
			<input type = "button" name = "update" value = "ȸ����������">
		</td>
		<td>
			<input type = "button" name = "delete" value = "ȸ�� Żȸ">
		</td>
	</tr>
	<tr>
		<td colspan = "3">
			<p align = "center">
				<input type="submit" value= "�α׾ƿ�">
			</p>
		</td>
	</tr>
	</table>
	</form>
</body>
</html>