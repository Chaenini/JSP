<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
	<%		String name = request.getParameter("name");
			String memo = request.getParameter("memo");
			
			Enumeration<String> en = request.getHeaderNames();
			//Enumeration �ȿ� String���� �迭ȭ �Ȱ� 
			String headerName="";
			String headerValue="";
		%>
<h2>�޸���</h2>
<table border=1>
	<tr>
		<td>����</td>
		<td><%= name%><td>
	</tr>
	<tr>
		<td>�޸�</td>
		<td><%= memo %></td>
	</tr>
	<tr>
		<td>��¥</td>
		<td>
		<% Date date = new Date(); %>
		<%= date.toLocaleString() %>
	   </td>
	</tr>
		<%
			while(en.hasMoreElements()){
				headerName = en.nextElement();
				headerValue = request.getHeader(headerName); %>
				<tr><td><%=headerName %></td><td><%=headerValue %></td></tr><br>
				<!--  out.println("<tr><td>"+headerName + "</td><td>"+headerValue + "</td></tr><br>");-->
		<%	}	%> 
</table>
</body>
</html>