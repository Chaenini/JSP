<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 설정 및 사용</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	session.setAttribute("id	", id);
	session.setAttribute("pwd", pwd);
	%>
	
	id와 pwd 속성을 설정했습니다. <p>
	id의 속성 값은
	<%=(String)session.getAttribute("id") %>이고 <br>
	pwd의 속성 값은
	<%=(String)session.getAttribute("pwd")%>입니다. 
</body>
</html>