<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<% String name = "�谳��";
	  String pageName= "includedTest2.jsp"; %>
	  
	  ���ԵǴ� ������ includeTest2.jsp �Դϴ�. <br>
	  ���ԵǴ� �������� �Ķ���� ���� �����մϴ�. <br>
	  <hr>
	  <jsp:include page="<%=pageName %>"  flush="false">
	  	<jsp:param value="<%=name %>" name="name"/>
	  	<jsp:param value="<%=pageName %>" name="pageName"/>
	  	</jsp:include>
	  	
	  	includeTest2.jsp�� ������ �����Դϴ�.
</body>
</html>