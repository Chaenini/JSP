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
			//Enumeration 안에 String으로 배열화 된것 
			String headerName="";
			String headerValue="";
		%>
<h2>메모장</h2>
<table border=1>
	<tr>
		<td>성명</td>
		<td><%= name%><td>
	</tr>
	<tr>
		<td>메모</td>
		<td><%= memo %></td>
	</tr>
	<tr>
		<td>날짜</td>
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