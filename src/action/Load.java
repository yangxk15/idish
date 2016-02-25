package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Recipe;
import bean.User;

public class Load extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		session.setAttribute("userlist", User.getUserlist());
		session.setAttribute("recipelist", Recipe.getRecipelist());
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
}
