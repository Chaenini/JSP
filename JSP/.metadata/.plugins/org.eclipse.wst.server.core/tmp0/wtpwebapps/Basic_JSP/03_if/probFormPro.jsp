<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양이</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

	<%	String name = request.getParameter("name");
		int number = Integer.parseInt(request.getParameter("number"));
		int hak = Integer.parseInt(request.getParameter("hak"));
		String haak;
		if(hak==1){
			haak="SW 학과";
			out.println("<b>"+name+"은"+haak+" 학번은"+number+"입니다.");
		}
		else if(hak==2){
			haak="솔루션 학과";
			out.println("<b>"+name+"은"+haak+" 학번은"+number+"입니다.");
		}
		else if(hak==3){
			haak="디자인 학과";
			out.println("<b>"+name+"은"+haak+" 학번은"+number+"입니다.");
		}
		%>
</body>
</html>