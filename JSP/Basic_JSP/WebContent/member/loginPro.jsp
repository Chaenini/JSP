<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
	
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="regBean" class="member.Member"/>
	<jsp:setProperty name = "regBean" property="id"/>	
	<%	String id = request.getParameter("id");	
		String pwd = request.getParameter("pwd"); %>
	<jsp:useBean id="regDbBean" class="member.MemberDb"/>
	
	<% int result = regDbBean.selectId(id, pwd);
	
		if(result == 1){ 	
		session.setAttribute("id",id);
		session.setAttribute("pwd",pwd);
		%>
		<form method=post action="retrieve.jsp">
			<table align=center border=1 cellspacing="0" cellpadding="5">
				<tr>
					<td colspan=3  align="center" valign="middle">
						<b><%= id %>�� �α��εǾ����ϴ�</b>
					</td>
				</tr>
				<tr >
					<td align= "center"><input type=submit value="ȸ��������ȸ" ></td>
				</tr>
			</table>
			<input type=hidden name=id value="<jsp:getProperty name="regBean" property="id"/>">
		</form>
	<% 	} 
		
		else if (result == 2){	%>
		<center>
		�������� �ʴ� ���̵��Դϴ�. ȸ�������� ���ּ���.<p/>
		<input type=submit value="�ڷ� ����" onClick="history.back(-1);">&nbsp;
		</center>
	<% } 
		
		else if (result == 3){	%>
		<center>
		��й�ȣ�� Ʋ���ϴ�. �ٽ� �α����Ͽ� �ּ���. <p/>
		<input type=submit value="�ڷ� ����" onClick="history.back(-1);">
		</center>
	<% } %>
	

</body>
</html>