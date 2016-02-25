package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Recipe;

public class Search extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		String query = request.getParameter("query");
		if (query == null) {
			response.sendRedirect("home.jsp");
			return;
		}
		ArrayList<Recipe> recipelist = Recipe.getRecipelist();
		ArrayList<Recipe> resultlist = new ArrayList<Recipe> ();
		HashMap<Recipe, Double> tempmap = new HashMap<Recipe, Double> ();
		for (Recipe recipe : recipelist) {
			double score = 0.0;
			if (recipe.getName().toLowerCase().contains(query)) {
				score += 0.8;
			}
			if (recipe.getDescription().toLowerCase().contains(query)) {
				score += 0.3;
			}
			for (String s : recipe.getIngredients()) {
				if (s.toLowerCase().contains(query)) {
					score += 0.2;
				}
			}
			for (String s : recipe.getSteps()) {
				if (s.toLowerCase().contains(query)) {
					score += 0.1;
				}
			}
			if (score > 0) {
				tempmap.put(recipe, score);
			}
		}
		ArrayList<Entry<Recipe, Double>> list = new ArrayList<Entry<Recipe, Double>> (tempmap.entrySet());
		Collections.sort(list, new Comparator<Entry<Recipe, Double>>() {
			public int compare(Entry<Recipe, Double> o1, Entry<Recipe, Double> o2) {
				return o2.getValue().compareTo(o1.getValue());
			}
		});
		for (Entry<Recipe, Double> e : list) {
			resultlist.add(e.getKey());
		}
		request.setAttribute("resultlist", resultlist);
		request.getRequestDispatcher("search.jsp").forward(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
}

