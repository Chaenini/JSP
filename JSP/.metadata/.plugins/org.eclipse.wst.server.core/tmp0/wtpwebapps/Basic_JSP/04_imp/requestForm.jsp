<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학번 이름 학년 선택과목을 입력하는 폼</h2>
	<Form method="post" action="requsestFormPro.jsp">
	
		학번<input type="text" name="number"> <br>
		이름<input type="text" name="name"> <br>
		학년
		<input type="radio" name = "grade" value="1" checked> 1학년
		<input type="radio" name = "grade" value="2"> 2학년
		<input type="radio" name = "grade" value="3"> 3학년<br>
		선택과목
		<select name="subject">
			<option value="JAVA">JAVA</option>
			<option value="PHP">PHP</option>
			<option value="JSP">JSP</option>
		</select><br>
		<input type="submit" value="확인">
	</Form>
</body>
</html>