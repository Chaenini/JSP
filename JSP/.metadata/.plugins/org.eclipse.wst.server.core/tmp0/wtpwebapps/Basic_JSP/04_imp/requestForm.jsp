<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>�й� �̸� �г� ���ð����� �Է��ϴ� ��</h2>
	<Form method="post" action="requsestFormPro.jsp">
	
		�й�<input type="text" name="number"> <br>
		�̸�<input type="text" name="name"> <br>
		�г�
		<input type="radio" name = "grade" value="1" checked> 1�г�
		<input type="radio" name = "grade" value="2"> 2�г�
		<input type="radio" name = "grade" value="3"> 3�г�<br>
		���ð���
		<select name="subject">
			<option value="JAVA">JAVA</option>
			<option value="PHP">PHP</option>
			<option value="JSP">JSP</option>
		</select><br>
		<input type="submit" value="Ȯ��">
	</Form>
</body>
</html>