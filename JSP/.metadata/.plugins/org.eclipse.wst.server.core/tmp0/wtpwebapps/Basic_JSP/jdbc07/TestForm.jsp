<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="insertTestPro.jsp">
		아이디 : <input type="text" name="id" ><p>
		패스워드 : <input type="password" name="pwd"><p>
		이름 : <input type="text" name="name"><p>
		주민번호 : <input type="text" name="num1">-<input type="text" name="num2"><p>
		이메일 : <input type="text" name="email"><p>
		번호 : <input type="text" name="phone"><p>
		주민번호 : <input type="text" name="zipcode"><p>
		주소 : <input type="text" name="address"><p>
		직업 : <input type="text" name="job"><p>

		<input type="submit" value="입력">
	</form>
</body>
</html>