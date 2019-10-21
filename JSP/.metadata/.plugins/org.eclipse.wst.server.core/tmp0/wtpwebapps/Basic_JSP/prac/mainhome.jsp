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
	
	입력된 사이트명 : <%=name %><br>
	<jsp:include page="subhome.jsp"  flush = "false">
	<jsp:param value="<%=addr%>" name="addr"/>
	</jsp:include><p>
	<hr width = 2000  height = 1 >	
	
	사이트 명 : 다음<br>
	사이트 주소 : www.daum.net<br>
</body>
</html>