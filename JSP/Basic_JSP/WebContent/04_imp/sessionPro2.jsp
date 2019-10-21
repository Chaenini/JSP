<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

	<%	String id = request.getParameter("idkey");
			String season = request.getParameter("season");
			String fruit = request.getParameter("fruit");
			String sessionid = session.getId();
			int intervalTime = session.getMaxInactiveInterval();
		
		if(id != null) {
			%>
<h1>Session Example1</h1><br><br>
<%=id %>님이 좋아하시는 계절과 과일은 <br><br>
<%=season %>과  <%=fruit %>입니다.<br><br>

	세션 ID : <%= session %><br><br>
	세션 유지 시간 : <%= intervalTime%>초
<% 
		session.invalidate();
		}
		else {
			out.println("세션의 시간이 경과를 하였거나 다른 이유로 연결을 할 수가 없습니다.");
		}
			%>
</body>
</html>