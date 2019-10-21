<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
		<jsp:useBean id="member" class="b06.bean.MemberBean">
		<jsp:setProperty name="member" property="id"/>
		<jsp:setProperty name="member" property="pw"/>
		<jsp:setProperty name="member" property="pwok"/>
		<jsp:setProperty name="member" property="name"/>
		<jsp:setProperty name="member" property="birth"/>
		<jsp:setProperty name="member" property="email"/>
		</jsp:useBean>
		
<table border = "1">
	<tr>
		<td colspan = "2" > <center>이채린 회원님이 작성하신 내용입니다. 확인해 주세요. </center></td>
	</tr>
	<tr>
		<td width = "200"> 아이디 </td>
		<td width = "300 "> <jsp:getProperty name="member" property="id"/></td>
	</tr>
		<tr>
		<td > 패스워드 </td>
		<td > <jsp:getProperty name="member" property="pw"/></td>
	</tr>
		<tr>
		<td > 이름 </td>
		<td > <jsp:getProperty name="member" property="name"/></td>
	</tr>
		<tr>
		<td > 생년월일 </td>
		<td > <jsp:getProperty name="member" property="birth"/></td>
		</tr>
		<tr>
		<td > 이메일 </td>
		<td > <jsp:getProperty name="member" property="email"/></td>
	</tr>
</table>
</body>
</html>