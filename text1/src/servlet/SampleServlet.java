package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SampleServlet")
public class SampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] ans = {"大吉","吉","凶"};
		int num = (int)(Math.random()*3);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
		String today = sdf.format(date);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>占い</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>"+today+"の運勢は"+ans[num]+"</p>");
		out.println("</body>");
		out.println("</html>");
	}
}
