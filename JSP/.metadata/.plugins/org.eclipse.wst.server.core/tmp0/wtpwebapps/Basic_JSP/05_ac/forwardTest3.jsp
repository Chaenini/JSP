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
	String id = "��ä��";
	String hobby="�����ϱ�";	
%>
������ �ϴ� ������ forwardToTest3.jsp �Դϴ�<br>
	<jsp:forward page="forwardToTest3.jsp">
		<jsp:param name="id" value="<%=id %>"/>
		<jsp:param name="hobby" value="<%=hobby %>"/>
	</jsp:forward>
</body>
</html>