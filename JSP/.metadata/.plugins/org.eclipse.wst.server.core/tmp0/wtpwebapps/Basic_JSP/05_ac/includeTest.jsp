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

	포함하는 페이지 includeTest.jsp 입니다<br>
	<hr>
	<jsp:include page = "<%= pageName %>"  flush="false"/>
	includeTest.jsp의 나머지 내용 입니다.
</body>
</html>