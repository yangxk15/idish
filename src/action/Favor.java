package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;

public class Favor extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");
		int id = Integer.valueOf(request.getParameter("id"));
		List<User> userlist = User.getUserlist();
		user = userlist.get(user.getUserid());
		if (user.getFavorite().contains(Integer.valueOf(id))) {
			user.getFavorite().remove(Integer.valueOf(id));
		}
		else {
			user.getFavorite().add(Integer.valueOf(id));
		}
		User.setUserlist(userlist);
		session.setAttribute("user", user);
		session.setAttribute("userlist", User.getUserlist());
		request.getRequestDispatcher("recipe.jsp?id=" + id).forward(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
}
