<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = "dory";
			out.println("��µǴ� ������ <b>"+name+"</b>�Դϴ�.");
	%>
	<h3>���� ���� ���� ��� ǥ����</h3>
	��µǴ� ������ <b><%= name %></b>�Դϴ�.
</body>
</html>