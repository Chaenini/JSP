<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

	<%		String name = request.getParameter("name");
			String number = request.getParameter("number");
			String grade = request.getParameter("grade");
			String subject = request.getParameter("subject");
		%>
		<h2>�л�����</h2>
		  <table border=1 cellpadding=10 >
			<tr align=center>
				<td bgcolor="lightyellow" width=100 >�й�</td>
				<td width=100><%=number %></td>
			</tr>
			<tr align=center>
				<td bgcolor="lightcoral" width=100>�̸�</td>
				<td width=100><%=name %></td>
			</tr>
			<tr align=center>
				<td bgcolor="lightyellow" width=100>�г�</td>
				<td width=100><%=grade %></td>
			</tr>
			<tr align=center>
				<td  bgcolor="lightcoral" width=100>���ð���</td>
				<td width=100><%= subject%></td>
			</tr>
</body>
</html>