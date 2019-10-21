<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>표현식 예제 - 레퍼런스스타임 출력</h2>
	<%
		StringBuffer st=new StringBuffer("Korea Fighting !");
		st.reverse(); //역순
		out.println("객체의 내용:"+st.toString());%>
		<br>
		객체의 내용 : <%=st.toString() %>
</body>
</html>