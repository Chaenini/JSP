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
			out.println("출력되는 내용은 <b>"+name+"</b>입니다.");
	%>
	<h3>위와 같은 내용 출력 표현식</h3>
	출력되는 내용은 <b><%= name %></b>입니다.
</body>
</html>