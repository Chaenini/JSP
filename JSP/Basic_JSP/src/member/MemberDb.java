package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbcbean.MemberBean;

public class MemberDb {
	
		final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
		final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
		final String USER = "root";
		final String PASS = "mirim2";
		
		Connection conn;
		PreparedStatement pstmt;
		String sql;
		ResultSet rs;

public MemberDb() {	
		try {
		Class.forName("org.gjt.mm.mysql.Driver"); 
		conn = DriverManager.getConnection(JDBC_URL, USER, PASS); //DB접속
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	} //드라이버 연결

	
	public Member selectMember(String id) {	
		System.out.println(id);

		Member regBean = new Member();
		
		sql = "select * from member where id=?"; 
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery(); //쿼리문 실행
				
				if(rs.next()) {
					regBean.setId(rs.getString("id"));
					regBean.setPwd(rs.getString("pwd"));
					regBean.setEmail(rs.getString("email"));
					regBean.setPhone(rs.getString("phone"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("데이터 불러오기 오류");
			} 
			return regBean;
		}
	
	public int selectId(String inId, String inPwd) {
		int result = 1;
		String id = "";
		String pwd = "";
		try {
			sql = "select id, pwd from member where id=?"; 
			pstmt = conn.prepareStatement(sql); 
			//쿼리문 실행 준비 (insert문 실행)
			//executeQuery문은 select문 실행
			
			pstmt.setString(1, inId);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String rPwd = rs.getString("pwd");
				if(rPwd.equals(inPwd)){
					result = 1; //아이디 비번 둘다 맞음
	 	   		}else
	 	   			result = 3; //아이디만 맞음
	     	}else
	     		result = 2; // 비번만 맞음 
			
	     }catch(Exception e){
	     	e.printStackTrace();
	    }
		return result;
	}
}

