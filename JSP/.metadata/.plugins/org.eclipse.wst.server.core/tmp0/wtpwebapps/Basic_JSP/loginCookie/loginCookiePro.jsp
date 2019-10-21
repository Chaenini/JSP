<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jdbcbean.MemberDBbean" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	<body bgcolor="#FFFFCC">
	<% 
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDBbean regDbBean = new MemberDBbean();
		int result = regDbBean.selectId(id, pwd);
		String msg = "";
		
		if(result == 1){
			Cookie cookie1 = new Cookie("id",id);
			Cookie cookie2 = new Cookie("pwd",pwd);
			cookie1.setMaxAge(2*60);
			cookie2.setMaxAge(2*60);
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			response.sendRedirect("loginCookieMain.jsp");
		} 
		else if (result == 2){
			msg="ID 오류입니다";
		} 
		
		else if (result == 3){
			msg="PASSWORD 오류입니다";
		}
		
		if(result != 1){
		%>
		<h2><%=msg %></h2>
		<input type="button" value = "뒤로 가기" onclick="history.back()">
		<% }%>
	</center>
	</body>
</html>