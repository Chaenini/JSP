/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.39
 * Generated at: 2019-06-24 02:28:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jdbc07;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class memberPro_005f2314_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<body>\r\n");
      out.write("\t");
request.setCharacterEncoding("utf-8"); 
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t");
	
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
		String dbPwd = "mirim2"; 
		
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
		
		str = "회원가입 완료되었습니다";
	}catch(Exception e){
		e.printStackTrace();
		str = "회원가입 실패 했습니다";
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
					
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.print( str );
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");
 if(str.equals("회원가입 완료되었습니다")){ 
      out.write("\r\n");
      out.write("\t<form method=\"post\" action=\"login_2314.jsp\">\r\n");
      out.write("\t\t<input type=submit value=\"로긴하기\">\r\n");
      out.write("\t</form>\r\n");
      out.write("\t");
} 
      out.write("\r\n");
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
