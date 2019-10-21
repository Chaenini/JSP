/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.39
 * Generated at: 2019-10-13 17:39:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jdbc07._2314;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class deletePro2_005f2314_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#FFFFCC\">\r\n");
      out.write("<div align =\"center\">\r\n");
	String pwd = request.getParameter("pwd");
  
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
    			
    	
      out.write("\r\n");
      out.write("    \t회원 탈회완료 입니다. \r\n");
      out.write("    \t");

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
    	
      out.write("\r\n");
      out.write("    \t");
      out.print( str );
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
