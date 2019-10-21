<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
	
<jsp:useBean id="regBean" class="member.Member"/>			
<!-- MemberBean regBean = new MemberBean() -->
<jsp:useBean id="regDbBean" class="member.MemberDb"/>

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
								<td colspan=3 bgcolor="#F7FD96"><b><center>회원 정보 조회</center></td>
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
								<td>이메일</td>
								<td><%= regBean.getEmail()%></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><%= regBean.getPhone()%></td>
							</tr>
					</table>
					<p>
					<input type=submit value="뒤로 가기" onClick="history.back(-1);">
			</div>
		</center>
	
</body>
</html>