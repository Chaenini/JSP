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
<%=id %>���� �����Ͻô� ������ ������ <br><br>
<%=season %>��  <%=fruit %>�Դϴ�.<br><br>

	���� ID : <%= session %><br><br>
	���� ���� �ð� : <%= intervalTime%>��
<% 
		session.invalidate();
		}
		else {
			out.println("������ �ð��� ����� �Ͽ��ų� �ٸ� ������ ������ �� ���� �����ϴ�.");
		}
			%>
</body>
</html>