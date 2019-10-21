package jdbcbean;
import java.sql.*;

public class MemberDBbean {
	
		final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
		final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
		final String USER = "root";
		final String PASS = "mirim2";
		Connection conn;
		PreparedStatement pstmt;
		String sql;
		ResultSet rs;
	
	public MemberDBbean() {	
		try {
		Class.forName("org.gjt.mm.mysql.Driver"); 
		conn = DriverManager.getConnection(JDBC_URL, USER, PASS); //DB접속
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	} //드라이버 연결
	
	public void insert(MemberBean regBean) { 
		sql = "insert into tblRegister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, regBean.getId()); 
			pstmt.setString(2, regBean.getPwd());
			pstmt.setString(3, regBean.getName()); 
			pstmt.setString(4, regBean.getNum1());
			pstmt.setString(5, regBean.getNum2());
			pstmt.setString(6, regBean.getEmail()); 
			pstmt.setString(7, regBean.getPhone());
			pstmt.setString(8, regBean.getZipcode()); 
			pstmt.setString(9, regBean.getAddress());
			pstmt.setString(10, regBean.getJob());
			pstmt.executeUpdate(); //쿼리문 실행
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터베이스 입력 오류");
		} 
		//쿼리문 실행 준비 (insert문 실행)
		//executeQuery문 =  select문 실행
	}
	
	
	public MemberBean selectMember(String id) {	
		System.out.println(id);
		MemberBean regBean = new MemberBean();
		sql = "select * from tblregister where id=?"; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //쿼리문 실행
			
			if(rs.next()) {
				regBean.setId(rs.getString("id"));
				regBean.setPwd(rs.getString("pwd"));
				regBean.setName(rs.getString("name"));
				regBean.setNum1(rs.getString("num1"));
				regBean.setNum2(rs.getString("num2"));
				regBean.setEmail(rs.getString("email"));
				regBean.setPhone(rs.getString("phone"));
				regBean.setZipcode(rs.getString("zipcode"));
				regBean.setAddress(rs.getString("address"));
				regBean.setJob(rs.getString("job"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터 불러오기 오류");
		} 
		//쿼리문 실행 준비 (insert문 실행)
		//executeQuery문 =  select문 실행
		return regBean;
	}
	
	public void updateMember(MemberBean regBean) {
		try {
			sql = "update tblregister set email=?, phone=?, zipcode=?, address=?, job=?  where id = ?";
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1, regBean.getEmail()); 
				pstmt.setString(2, regBean.getPhone());
				pstmt.setString(3, regBean.getZipcode());
				pstmt.setString(4, regBean.getAddress());
				pstmt.setString(5, regBean.getJob());
				pstmt.setString(6, regBean.getId());
			    pstmt.executeUpdate();
		
        }catch(Exception e){
        	e.printStackTrace();
        }
	}
	
	public int selectId(String inId, String inPwd) {
		int result = 1;
		String id = "";
		String pwd = "";
		try {
			sql = "select id, pwd from tblregister where id=?"; 
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
	
	public String deleteMember(String id, String pwd) {
		String str = "";
		sql = "select id, pwd from tblregister where id=?"; 
		try {
			pstmt = conn.prepareStatement(sql); 
			//쿼리문 실행 준비 (insert문 실행)
			//executeQuery문 = select문 실행
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); 
			
			if(rs.next()){
				String rPwd = rs.getString("pwd");
				if(rPwd.equals(pwd)){
					sql = "delete from tblregister where id = ? and pwd=?";
		    		   pstmt = conn.prepareStatement(sql);
		    		   pstmt.setString(1, id);
		    		   pstmt.setString(2, pwd);
		    		   pstmt.executeUpdate();
		    		   str = "탈회 완료되었습니다.";
		    	   }else
		    		   str = "회원 탈퇴 실패";
		        }else
		        	str = "회원 탈퇴 실패";
	        }catch(Exception e){
	        	e.printStackTrace();
	        }
		return str;
	}
}
