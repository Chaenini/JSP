<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<b>Forward 액션태그</b>
	<form method="Post" action="forwardTest.jsp">
		아이디<input type="text" name="id"><br>
		취미 <select name="hobby">
		<option value="WOW">WOW</option>
		<option value="티비보기">티비보기</option>
		<option value="오버워치">오버워치</option>
		</select>
		<br>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>