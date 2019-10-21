<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>회원 탈퇴 완료</title>
	</head>
	
	<jsp:useBean id="regDbBean" class="jdbcbean.MemberDBbean"/>
	<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
		
	<% 	request.setCharacterEncoding("utf-8"); %>
	<jsp:setProperty name = "regBean" property="id"/>
	
	<%	String id = request.getParameter("id"); 
		String pwd = request.getParameter("pwd");	
		String msg = "";
		System.out.println("1");
		if (regDbBean.selectId(id, pwd) == 1){
			msg = regDbBean.deleteMember(id, pwd);
		} 
		else { msg = "회원탈퇴 실패"; }	%>
	
	<body bgcolor="#FFFFCC">
		<center>
			<form method=post action="login.jsp">
				<font size=10 ><b><%= msg %></b></font><p/>
				<input type=submit value="로그인">
			</form>
		</center>
	</body>
</html>