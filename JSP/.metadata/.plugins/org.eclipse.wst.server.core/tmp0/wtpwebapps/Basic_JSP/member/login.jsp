<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
			function check(){
				
				var id = document.login.id.value;
				var pwd = document.login.pwd.value;
				if(id=="") { 
					alert("���̵� �Է����ּ���")
					return false
				}
				else if(pwd=="") { 
					alert("��й�ȣ�� �Է����ּ���")
					return false
				}
			}
	</script>
</head>
	<body bgcolor="#FFFFCC">
		<center>
		<b>�α���</b><p/>
		<form name=login method=post onsubmit="return check()" action="loginPro.jsp">
			<table border=0 width=250>
				<tr>
					<td width="33%">���̵�</td>
					
					
					<td><input type=text name=id></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type=text name=pwd></td>
				<tr>
					<td colspan=2>
						<center>
						<br>
							<input type=submit value="�α���"></form>
						</center>
					</td>
				</tr>
			</table>
		</center>
</body>
</html>