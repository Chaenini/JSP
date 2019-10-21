<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script rtpe="text/javascript">
	function check() {
		var id = document.f.id.value();
		var pass = document.f.pwd.value();
		
		if(id == ""){
			alert("id를 입력하세요");
			return false;
		}
		
		if(pwd == ""){
			alert("password를 입력하세요");
			return false;  
		}
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<center>
		<b>로그인</b><p>
			<!--  <form method=post action="loginPro_2314.jsp">-->
			<form name = "f" method="POST" onsubmit="return check();" action="loginPro_2314.jsp">
 					아이디 <input type=text name=id><br><br>
					비밀번호 <input type=password name=pwd><p>
					<input type=submit value="로그인"></form><p>
					<input type=submit value="회원가입" onClick="javascript:location.href='member_2314.jsp'">
	</center>
  </body>
</html>