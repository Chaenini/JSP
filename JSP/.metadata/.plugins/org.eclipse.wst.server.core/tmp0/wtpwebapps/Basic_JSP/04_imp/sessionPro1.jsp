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
	1. ���� �����ϴ� ������ ? <br>
	<input type="radio"  name="season"  value="��" > ��
	<input type="radio"  name="season"  value="����" > ����
	<input type="radio"  name="season"  value="����" > ����
	<input type="radio"  name="season"  value="�ܿ�"> �ܿ�
	<p>
	2. ���� �����ϴ� ������ ? <br>
	<input type="radio"  name="fruit"  value="����"> ����
	<input type="radio"  name="fruit"  value="���"> ���
	<input type="radio"  name="fruit"  value="���"> ���
	<input type="radio"  name="fruit"  value="������" > ������
	<p>
	<input type="submit" value="��� ����">
</form>
</body>
</html>