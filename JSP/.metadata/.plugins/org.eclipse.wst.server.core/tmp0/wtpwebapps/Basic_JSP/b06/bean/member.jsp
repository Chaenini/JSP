<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = "1">
<form method="POST" action = "memberPro.jsp">
	<tr>
		<td colspan = "3" > <center><b>회원가입</b></center></tr>
	</tr>
	<tr>
		<td width="150"> 아이디 </td>
		<td width = "250"> <input type="text" name = "id"></td>
		<td width = "250"> 아이디를 적어주세요</td>
	</tr>              
	<tr>
		<td> 패스워드 </td>
		<td> <input type="password" name="pw"> </td>
		<td> 패스워드를 적어주세요. </td>
	</tr>
	<tr>
		<td> 패스워드 확인 </td>
		<td><input type="password" name="psok"></td>
		<td> 패스워드를 확인합니다.</td>
	</tr>
	<tr>
		<td> 이름 </td>
		<td> <input type="text" name="name"></td>
		<td> 고객 실명을 적어주세요. </td>
	</tr>
	<tr>
		<td> 생년월일</td>
		<td> <input type="text" name= "birth" ></td>
		<td> 생년월일을 적어주세요. </td>
	</tr>
	<tr>
		<td> 이메일 </td>
		<td> <input type="text" name="email"></td>
		<td> 이메일을 적어주세요. </td>
	</tr> 
	<tr>
		<td colspan ="3"> 
			<center>
				<input type = "submit" value= "회원가입"> 
				<input type = "reset" value = " 다시쓰기">
			</center>
		</td>
	</tr>
	</form>
</table>
</body>
</html>