package seprac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

public class SecondServlet extends HttpServlet {
	
	@Override 
	public void init(ServletConfig congfig) throws ServletException{
		System.out.println("init 호출");
	}

	@Override
	public void destroy() {
		System.out.println("destroy 호출");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h3>servlet method</h3>");
		System.out.println("service 호출");
	}
 }