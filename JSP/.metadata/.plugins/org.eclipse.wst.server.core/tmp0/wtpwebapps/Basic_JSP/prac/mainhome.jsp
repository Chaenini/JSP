<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	%>
	
	�Էµ� ����Ʈ�� : <%=name %><br>
	<jsp:include page="subhome.jsp"  flush = "false">
	<jsp:param value="<%=addr%>" name="addr"/>
	</jsp:include><p>
	<hr width = 2000  height = 1 >	
	
	����Ʈ �� : ����<br>
	����Ʈ �ּ� : www.daum.net<br>
</body>
</html>