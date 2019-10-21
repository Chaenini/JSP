package seprac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


	@WebServlet("/seprac/PostServlet")
	public class PostServlet extends HttpServlet{
		
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
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String email = request.getParameter("email");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<html>");
			out.println("<body>");
			out.println("<h3> Post Servlet 예제 </h3>");
			out.println("id : "+id+"<br>");
			out.println("pwd : "+pwd+"<br>");
			out.println("email : "+email+"<br>");
			out.println("</body>");
			out.println("</html>");
		}
	}
