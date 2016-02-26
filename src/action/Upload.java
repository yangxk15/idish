package action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.Recipe;
import bean.User;
public class Upload extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Recipe recipe = new Recipe();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			response.sendRedirect("home.jsp");
			return;
		}
		List<User> userlist = User.getUserlist();
		List<Recipe> recipelist = Recipe.getRecipelist();
		int id = recipelist.size();
		userlist.get(user.getUserid()).getKitchen().add(id);
		List<String> ingredients = new ArrayList<String> ();
		List<String> ingredientsDes = new ArrayList<String> ();
		List<String> steps = new ArrayList<String> ();
		recipe.setRecipeid(id);
		Random r = new Random();
		recipe.setServe(String.valueOf(r.nextInt(10)));
		recipe.setScore(String.valueOf(r.nextInt(10)) + "." + String.valueOf(r.nextInt(10)));
		
		FileItemFactory factory = new DiskFileItemFactory();
	    ServletFileUpload upload = new ServletFileUpload(factory);
	    try {
			for (FileItem item : upload.parseRequest(request)) {
				if (!item.isFormField()) {
					String name = item.getFieldName();
					if (name.equals("p"))
						item.write(new File("/Users/yangxk15/Documents/workspace/idish/WebContent/images/recipes/" + String.valueOf(id) + ".png"));
					else
						item.write(new File("/Users/yangxk15/Documents/workspace/idish/WebContent/images/recipes/" + String.valueOf(id) + "-" + name.substring(name.length() - 1) + ".png"));
				}
				else {
					String name = item.getFieldName();
					if (name.equals("n")) {
						recipe.setName(item.getString());
					}
					else if (name.equals("D")) {
						recipe.setDescription(item.getString());
					}
					else if (name.startsWith("i")) {
						ingredients.add(item.getString());
					}
					else if (name.startsWith("d")) {
						ingredientsDes.add(item.getString());
					}
					else if (name.startsWith("s")) {
						steps.add(item.getString());
					}
					else {
						System.out.println("Error!");
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    recipe.setIngredients(ingredients);
	    recipe.setIngredientsDes(ingredientsDes);
	    recipe.setSteps(steps);
	    recipelist.add(recipe);
	    User.setUserlist(userlist);
	    Recipe.setRecipelist(recipelist);
	    session.setAttribute("userlist", userlist);
	    session.setAttribute("recipelist", recipelist);
	    session.setAttribute("user", userlist.get(user.getUserid()));
	    request.setAttribute("upload", "true");
	    request.getRequestDispatcher("personal.jsp").forward(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
}
