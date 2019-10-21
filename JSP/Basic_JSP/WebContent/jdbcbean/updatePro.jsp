<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
<jsp:setProperty name = "regBean" property="id"/>	
<jsp:setProperty name = "regBean" property="name"/>	
<jsp:setProperty name = "regBean" property="pwd"/>	
<jsp:setProperty name = "regBean" property="num1"/>	
<jsp:setProperty name = "regBean" property="num2"/>	
<jsp:setProperty name = "regBean" property="email"/>	
<jsp:setProperty name = "regBean" property="phone"/>	
<jsp:setProperty name = "regBean" property="zipcode"/>	
<jsp:setProperty name = "regBean" property="address"/>	
<jsp:setProperty name = "regBean" property="job"/>

<jsp:useBean id="regDbBean" class="jdbcbean.MemberDBbean"/>
<%	regDbBean.updateMember(regBean); 	%>			

	<body bgcolor="#FFFFCC">
	
		<table width="80%" align="center" cellspacing="0" cellpadding="5">
			<tr>
				<td align="center" valign="middle" bgcolor="#FFFFCC">
					<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
						<form name=regForm method=post action="update.jsp">	
							<tr align=center bgcolor="#996600">
								<td colspan="3"><font color="#FFFFFF"><b>
									<jsp:getProperty name="regBean" property="id"/> 
								회원님의 정보가 수정되었습니다.</b></font></td>
							</tr>
							<tr>
								<td width=20%>구분</td>
								<td>수정한 자료</td>
							</tr>
							<tr>
								<td>이메일</td>
								<td><jsp:getProperty name="regBean" property="email"/></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><jsp:getProperty name="regBean" property="phone"/></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><jsp:getProperty name="regBean" property="zipcode"/></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><jsp:getProperty name="regBean" property="address"/></td>
							</tr>
							<tr>
								<td>직업</td>
								<td><jsp:getProperty name="regBean" property="job"/></td>
							</tr>
							<tr>
								<td colspan=2><center>
								<input type=submit value="뒤로 가기" onclick="history.back(-1);">
								</center></td>
							</tr>
						</table>
					<input type=hidden name=id value="<jsp:getProperty name="regBean" property="id"/>">
				</form>
		</table>
	</body>
</html>