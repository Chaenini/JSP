package seprac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

	@WebServlet("/seprac/getServlet")
	public class GetServlet extends HttpServlet{
		
		@Override
		public void init (ServletConfig config) throws ServletException{
			System.out.println("init 호출");
		}
		
		@Override
		public void destroy() {
			System.out.println("destroy 호출");
		}
		
		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			String msg = request.getParameter("msg");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<html>");
			out.println("<body>");
			out.println("<h3>Get Servlet</h3>");
			out.println("<h2>msg : "+msg+"</h2>");
			out.println("</body>");
			out.println("</html>");
		}
	}