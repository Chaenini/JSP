<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<jsp:useBean id="test" class="b06.bean.SimpleBean"/>
	 <!-- UseBean 은 SimpleBean test = new SimpleBean(); 자동생성 -->
	<jsp:setProperty property="message" name="test" value="빈을 쉽게 정복하자!"/>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>간단한 빈 프로그래밍</h1>
	<br/>
	Message :  <jsp:getProperty property="message" name="test"/>
</body>
</html>