<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>입력받은 숫자가 10보다 작거나 같은지 비교</h1>
	<% String strNumber = request.getParameter("number");
		int number = Integer.parseInt(strNumber);
		if(number <=10){
		%>
					입력받은 숫자는 <%= number %>입니다.
					<% } %>
</body>
</html>