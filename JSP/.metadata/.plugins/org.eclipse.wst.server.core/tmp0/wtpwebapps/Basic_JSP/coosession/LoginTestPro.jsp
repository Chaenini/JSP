<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� �� ���</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	session.setAttribute("id	", id);
	session.setAttribute("pwd", pwd);
	%>
	
	id�� pwd �Ӽ��� �����߽��ϴ�. <p>
	id�� �Ӽ� ����
	<%=(String)session.getAttribute("id") %>�̰� <br>
	pwd�� �Ӽ� ����
	<%=(String)session.getAttribute("pwd")%>�Դϴ�. 
</body>
</html>