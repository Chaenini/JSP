<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 </title>
</head>
<body bgcolor="#FFFFCC">
	<% request.setCharacterEncoding("UTF-8"); %>
	<% 
	
	   String id = request.getParameter("id");
	   String pwd = request.getParameter("pwd");
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   String str = "";
	   String s = "success";
	   
	   if(id.length() < 1){
		   str = "id를 입력하세요.";
		   out.println(str);
		   s = "fail";%>
		   <p>
		   <form method="POST" action="login_2314.jsp">
		   	<input type="submit" value= "뒤로가기">
		   </form>
		   <%}
		   else if(pwd.length() < 1){
		   str = "password를 입력하세요.";
		   out.println(str);
		   s = "fail"; %>
		   <p>
		   <form method="POST" action="login_2314.jsp">
		   	<input type="submit" value= "뒤로가기">
		   </form>
			<% }

	if(s.equals("success")){
		   try {
			   String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			   String dbId = "root";
			   String dbPass = "mirim2";
	
			   Class.forName("org.gjt.mm.mysql.Driver");
			   
			   conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			   String sql = "select id, pwd from tblregister where id = ?";
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, id);
			   rs = pstmt.executeQuery();
			   
			   if(rs.next()) {
				   String rId = rs.getString("id");
				   String rPwd = rs.getString("pwd");
						  
				   System.out.println("rId");
				   System.out.println("rPwd");
				   if(id.equals(rId) && pwd.equals(rPwd)) {
					   session.setAttribute("id", id);
					   session.setAttribute("pwd", pwd);
		  %>
		  <h3> <%= id %> 님, 로그인 완료입니다. </h3>
	<% } else
			out.println("패스워드가 틀렸습니다.");
		} else 
			out.println("아이디가 틀렸습니다.");
		}
		   catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)
				try {
					rs.close();
				} catch(SQLException sqle){
				}
			if(pstmt != null)
				try {
					pstmt.close();
				} catch(SQLException sqle){
				}
			if(conn != null)
				try {
					conn.close();
				} catch(SQLException sqle){
					}
			}
			%>
	<form method = "post" action = "update_2314.jsp">
		<input type = "submit" value = "회원정보 수정">
	</form>
	<p>
	<form method = "post" action = "delete_2314.jsp">
		<input type = "submit" value = " 회원탈회">
	</form>	
	<% }%>
		
</body>
</html>