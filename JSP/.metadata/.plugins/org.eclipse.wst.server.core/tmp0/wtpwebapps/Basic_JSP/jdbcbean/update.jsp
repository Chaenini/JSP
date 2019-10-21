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
			String id = request.getParameter("id");

			regBean = regDbBean.selectMember(id);
		%>
		<center>
				<div align=center>
		<br><br>
					<form method=post action="updatePro.jsp">
						<table width=600 border=1>
							<tr>
								<td colspan=3><b>회원 정보 수정</td>
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
								<td><input type=text name=email value="<%= regBean.getEmail()%>"></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type=text name=phone value="<%= regBean.getPhone()%>"></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input type=text name=zipcode value="<%= regBean.getZipcode()%>"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input type=text name=address value="<%= regBean.getAddress()%>"></td>
							</tr>
							<tr>
								<td>직업</td>
								<td><input type=text name=job value="<%= regBean.getJob()%>"></td>
							</tr>
							<tr>
								<td colspan=2><center>
								<input type=submit value="수정하기">&nbsp;
								<input type="button" value="뒤로가기" onclick="history.back(-1);">
								</center></td>
							</tr>
					</table>
				</form>
			</div>
		</center>
	
	</body>
</html>