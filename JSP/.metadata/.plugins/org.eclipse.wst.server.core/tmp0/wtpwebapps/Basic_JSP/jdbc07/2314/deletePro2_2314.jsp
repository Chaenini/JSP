<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
<div align ="center">
<%	String pwd = request.getParameter("pwd");
  
  Connection conn = null;
  PreparedStatement pstmt = null; //자바가 DB에 바로 접근 못해서 쿼리를 통해 실행하기우해
  ResultSet rs = null; //DB가 STRING을 보내는데 자바가 못받으니까 이걸로 받는거
  
  String str = "";
  try {
       String jdbcUr1 = "jdbc:mysql://localhost:3306/mydb";
       String dbId = "root";
       String dbPass = "mirim2";
       
       Class.forName("org.gjt.mm.mysql.Driver"); //애가 아래 만들어줌 DB는 여기서부터 만들어짐
       
       conn=DriverManager.getConnection(jdbcUr1, dbId, dbPass);//커넥션
       String sql = "select id, pwd from tblregister where pwd=?"; //?이거는 데이터값이 들어갈 자리
       pstmt = conn.prepareStatement(sql);
       pstmt.setString(1,pwd); //1번째 물음표에 id를 셋팅해라
       rs = pstmt.executeQuery(); //실행때려라 (데이터 꺼내왓) 데이터가 없다면 null임
       
       if(rs.next()){ //데이터가 있으면 true 없으면 false
    	   String rPwd = rs.getString("pwd");
    	   
    	   if(pwd.equals(rPwd)){
    		   sql ="delete from tblregister where id=?";
    		   pstmt = conn.prepareStatement(sql);
    	       pstmt.setString(1,pwd); 
    	       pstmt.executeUpdate(); //삭제된걸로 업데이트하고 실행
    			
    	%>
    	회원 탈회완료 입니다. 
    	<%
    	   }else
    		   out.print("회원탈회 실패입니다. ");
        }else
        	out.println("회원탈회 실패입니다.");
        }catch(Exception e){
        	e.printStackTrace();
        	str ="삭제 실패했습니다.";
        }finally{
        	if(pstmt != null)
        		try{ pstmt.close();
        		}catch(SQLException sqle){}
        	if(conn != null)
        		try{ pstmt.close();
        		}catch(SQLException sqle){}
        }
    	%>
    	<%= str %>
	</div>
</body>
</html>