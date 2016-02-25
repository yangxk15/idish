package action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;

public class Login extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
        for (User user : User.getUserlist()) {
        	if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
    			session.setAttribute("user", user);
    			request.setAttribute("login", "true");
    			request.getRequestDispatcher("home.jsp").forward(request, response);
    			return;
        	}
        }
		request.setAttribute("login", "false");
		request.getRequestDispatcher("home.jsp?login=false").forward(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
}
