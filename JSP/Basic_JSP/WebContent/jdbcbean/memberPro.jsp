<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 확인</title>
</head>

<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mb" class="jdbcbean.MemberBean"/>
<jsp:setProperty name = "mb" property="*"/>			
<jsp:useBean id="mdb" class="jdbcbean.MemberDBbean"/>
<% mdb.insert(mb); %>
<jsp:setProperty name = "mb" property="*"/>	
		
<body bgcolor="#FFFFCC">
		<table width="80%" align="center" cellspacing="0" cellpadding="5">
			<tr>
				<td align="center" valign="middle" bgcolor="#FFFFCC">
				<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
				<form name=regForm method=post action="update.jsp">	
					<tr align=center bgcolor="#996600">
						<td colspan="3"><font color="#FFFFFF"><b>
							<jsp:getProperty name="mb" property="id"/> 
						회원님의 정보입니다.</b></font></td>
					</tr>
					<tr>
						<td width=20%>아이디</td>
						<td><jsp:getProperty name="mb" property="id"/></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><jsp:getProperty name="mb" property="pwd"/></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><jsp:getProperty name="mb" property="name"/></td>
					</tr>
					<tr>
						<td>주민등록번호</td>
						<td><jsp:getProperty name="mb" property="num1"/>-<jsp:getProperty name="mb" property="num2"/></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><jsp:getProperty name="mb" property="email"/></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><jsp:getProperty name="mb" property="phone"/></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><jsp:getProperty name="mb" property="zipcode"/></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><jsp:getProperty name="mb" property="address"/></td>
					</tr>
					<tr>
						<td>직업</td>
						<td><jsp:getProperty name="mb" property="job"/></td>
					</tr>
					<tr>
						<td colspan=2><center><input type=submit value="회원 정보 수정"></center></td>
					</tr>
			</table>
				<input type=hidden name=id value="<jsp:getProperty name="mb" property="id"/>">
		</form>
	</table>
</body>
</html>