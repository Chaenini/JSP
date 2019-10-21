<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body bgcolor="#FFFFCC">

<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>			
<!-- MemberBean regBean = new MemberBean() -->
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDBbean"/>

		<% 	
			request.setCharacterEncoding("utf-8");	
			String id = (String) session.getAttribute("id");

			regBean = regDbBean.selectMember(id);
		%>
		<center>
				<div align=center>
		<br><br>
						<table width=600 border=1>
							<tr>
								<td colspan=3 bgcolor="#000000"><b><center>회원 정보 조회</center></td>
							</tr>
							<tr>
								<td width=20%>ID</td>
								<td><%= regBean.getId()%></td>
							</tr>
							<tr>
								<td> 비밀번호 </td>
								<td> <%= regBean.getPwd()%></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><%= regBean.getName()%></td>
							</tr>
							<tr>
								<td>주민번호</td>
								<td><%= regBean.getNum1()%> - <%= regBean.getNum2()%></td>
							</tr>
							<tr>
								<td>이메일</td>
								<td><%= regBean.getEmail()%></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><%= regBean.getPhone()%></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><%= regBean.getZipcode()%></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><%= regBean.getAddress()%></td>
							</tr>
							<tr>
								<td>직업</td>
								<td><%= regBean.getJob()%></td>
							</tr>
							<tr>
							<input type="button" value="뒤로가기" onclick="history.back(-1);">
							</tr>
					</table>
			</div>
		</center>
	
	</body>
</html>