<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
	String pageName=request.getParameter("pageName");
	pageName += ".jsp";
	String name = request.getParameter("name");
%>

	�����ϴ� ������ includeTest.jsp �Դϴ�<br>
	<hr>
	<jsp:include page = "<%= pageName %>"  flush="false"/>
	includeTest.jsp�� ������ ���� �Դϴ�.
</body>
</html>