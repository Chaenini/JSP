<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border= "1" cellpadding="30">

	<tr width="400px" >
		<td colspan="2" >
		<jsp:include page="top.jsp"  flush="false"/>
		</td>
	</tr>
	
		<tr width="400px">
		<td width="100px">
		<jsp:include page="left.jsp"  flush="false"/>
		</td>
		<td width="300px">
		<center>레이아웃</center>
		</td>
	</tr>
	
		<tr width="400px">
		<td colspan="2" >
		<jsp:include page="bottom.jsp"  flush="false"/>
		</td>
	</tr>
	
</table>
</body>
</html>