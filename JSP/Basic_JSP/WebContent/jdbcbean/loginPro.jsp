<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	<body bgcolor="#FFFFCC">
	
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
	<jsp:setProperty name = "regBean" property="id"/>	
	<%	String id = request.getParameter("id");	
		String pwd = request.getParameter("pwd"); %>
	<jsp:useBean id="regDbBean" class="jdbcbean.MemberDBbean"/>
	
	<% int result = regDbBean.selectId(id, pwd);
	
		if(result == 1){ 	%>
		<form method=post action="delete.jsp">
			<table align=center border=1 cellspacing="0" cellpadding="5">
				<tr>
					<td colspan=3 style="color: #996600" align="center" valign="middle">
						<b><%= id %>님 로그인되었습니다</b>
					</td>
				</tr>
				<tr valign="top">
					<td height=50><input type=button value="회원정보조회" onClick="javascript:location.href='retrieve.jsp'"></td>
					<td><input type=button value="회원정보수정" onClick="javascript:location.href='update.jsp'"></td>
					<td><input type=submit value="회 원 탈 회"></td>
				</tr>
			</table>
			<input type=hidden name=id value="<jsp:getProperty name="regBean" property="id"/>">
		</form>
	<% 	} 
		
		else if (result == 2){	%>
		<center>
		존재하지 않는 아이디입니다. 회원가입을 해주세요.<p/>
		<input type=submit value="뒤로 가기" onClick="history.back(-1);">&nbsp;
		<input type=submit value="회원 가입" onClick="javascript:location.href='member.jsp'">
	<% } 
		
		else if (result == 3){	%>
		비밀번호가 틀립니다. 다시 로그인하여 주세요. <p/>
		<input type=submit value="뒤로 가기" onClick="history.back(-1);">
	<% } %>
	
	</center>
	</body>
</html>