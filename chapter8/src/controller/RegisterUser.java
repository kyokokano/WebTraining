package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterUserLogic;
import model.User;

@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		String forwardPath = null;
		String action = request.getParameter("action");

		if(action == null) {
			forwardPath = "/WEB-INF/view/registerForm.jsp";
		}else if(action.equals("done")) {
			HttpSession session = request.getSession();
			User user = (User)session.getAttribute("user");
			RegisterUserLogic registerUserLogic = new RegisterUserLogic();
			registerUserLogic.execute(user);
			session.removeAttribute("user");

			forwardPath = "/WEB-INF/view/registerDone.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request,response);
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passward = request.getParameter("passward");
		String name = request.getParameter("name");
		User user = new User(id,passward,name);
		HttpSession session = request.getSession();
		session.setAttribute("user",user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/registerConfirm.jsp");
		dispatcher.forward(request,response);

	}
}