<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>application ���尴ü</h1>
	<%
	String info = application.getServerInfo();
	String realpath = application.getRealPath("/");
	String mimeType = application.getMimeType("sessionPro1.jsp");
	application.log("�α� ���");
	%>
	
	�� �����̳��� �̸��� ���� : <%=info %><p>
	�� ���ø����̼� ������ ���� �ý��� ��� : <%= realpath %><p>
	sessionPro1.jsp�� MIME Type : <%= mimeType %>
</body>
</html>