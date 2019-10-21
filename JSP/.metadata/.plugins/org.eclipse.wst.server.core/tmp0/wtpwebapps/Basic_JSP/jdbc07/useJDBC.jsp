<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ page import ="java.util.*" %>
	<%@ page import = "java.sql.*" %>
	<%
		String id = "", pwd = "", name="",num1="",num2="",email="",phone="",zipcode="",address="",job="";
		int counter = 0;
		
		Class.forName("org.gjt.mm.mysql.Driver");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","mirim2");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from tblRegister");
	%>
	<h2>JSP 에서 데이터베이스 연동 예시 </h2>
	<h1>회원 정보 </h1>
	<table border="1">
		<tr>
		<td align="center"><strong>ID</strong></td>
		<td align="center"><strong>PWD</strong></td>
		<td align="center"><strong>NAME</strong></td>
		<td align="center"><strong>NUM1</strong></td>
		<td align="center"><strong>NUM2</strong></td>
		 <td align="center"><strong>EMAIL</strong></td>
		<td align="center"><strong>PHONE</strong></td>
		<td align="center"><strong>ZIPCODE/ADDRESS</strong></td>
		<td align="center"><strong>JOB</strong></td>
		</tr>
	<%
		if (rs != null){
			while(rs.next()){
				id = rs.getString("id");
				pwd = rs.getString("pwd");
				name = rs.getString("name");
				num1 = rs.getString("num1");
				num2 = rs.getString("num2");
				email = rs.getString("email");
				phone = rs.getString("phone");
				zipcode = rs.getString("zipcode");
				address = rs.getString("address");
				job = rs.getString("job");
	%>
	<tr>
		<td><%=id %></td>
		<td><%=pwd %></td>
		<td><%=name %></td>
		<td><%=num1 %></td>
		<td><%=num2 %></td>
		<td><%=email %></td>
		<td><%=phone %></td>
		<td><%=zipcode %>/<%=address %></td>
<td><%=job %></td>
	</tr>
	<%
		counter++;
				}
			}
	%>
	</table>
	<br/>
		total records! <%=counter%>
	<% 
		} catch(SQLException sqlexception){
			System.out.println("sql exception");
		} catch(Exception exception){
			System.out.println(" exception");
		}  finally {
			if(rs != null)
				try{
					rs.close();
				} catch(SQLException ex){
				}
			if(stmt !=null)
				try{
					stmt.close();
				}catch(SQLException ex){
				}
			if(conn != null)
				try{
					conn.close();
				}catch(SQLException ex){
				}
		}
	%>
</body>
</html>