<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	<body bgcolor="#FFFFCC">
		
		<%
			String id = "";
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(int i=0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){
						id = cookies[i].getValue();
					}
					if(id.equals("")){
						response.sendRedirect("loginCookie.jsp");
					}
				}
			}
			else
				response.sendRedirect("loginCookie.jsp");
		%>

			<table align=center border=1 cellspacing="0" cellpadding="5">
				<tr>
					<td colspan=3 style="color: #996600" align="center" valign="middle">
						<b><%= id %>님 로그인되었습니다</b>
					</td>
				</tr>
				<tr valign="top">
					<td height=50 align = "center">
					<form method="POST" action = "retrieve.jsp">
					<input type=button value="회원정보조회" >
					</form> 
					</td>
					
					<td align = "center">
					<form method="POST" action = "update.jsp">
					<input type=button value="회원정보수정" >
					</form> 
					</td>
					
					<td align="center">
					<form method="POST" action = "delete.jsp">
					<input type=button value="회원 탈퇴" >
					</form> 
				</td>
			</tr>
		</table>
					<form method="POST" action = "logoutCookie">
					<p align = "center">
					<input type = "submit" value= "로그아웃">
					</form>
	</center>
	</body>
</html>