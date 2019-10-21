<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>	
		
	<%	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	
	System.out.println("id : " + id);	
	System.out.println("pwd : " + pwd);
	System.out.println("name : " + name);
	System.out.println("num1" + num1);
	System.out.println("num2" + num2);
	System.out.println("email : " + email);	
	System.out.println("phone : " + phone);
	System.out.println("zipcode : " + zipcode);
	System.out.println("address : " + address);
	System.out.println("job" + job);
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String str="";
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
		
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
		String sql = "insert into tblRegister(id, pwd, name,num1,num2,email,phone,zipcode,address,job) values (?, ?, ?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, num1);
		pstmt.setString(5, num2);
		pstmt.setString(6, email);
		pstmt.setString(7, phone);
		pstmt.setString(8, zipcode);
		pstmt.setString(9, address);
		pstmt.setString(10, job);
		
		
		pstmt.executeUpdate();
		
		str = "success";
	}catch(Exception e){
		e.printStackTrace();
		str = "fail";
	}finally{
		if(pstmt != null){
			try{
				pstmt.close();
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{
				pstmt.close();			
			} catch(SQLException sqle){}
		}
	}
					%>

	<%= str %>
	<% if(str.equals("success")){ %>
	<form method="post" action=useJDBC.jsp>
		<input type=submit value="데이터 조회">
	</form>
	<%} %>
</body>
</html>