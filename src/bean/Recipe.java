package bean;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Recipe {
	private int recipeid;
	private String serve;
	private String name;
	private String score;
	private String description;
	private List<String> ingredients;
	private List<String> ingredientsDes;
	private List<String> steps;
	public static ArrayList<Recipe> getRecipelist() throws IOException {
		ArrayList<Recipe> recipelist = new ArrayList<Recipe> ();
		String line;
		BufferedReader recipeinfo = new BufferedReader(new FileReader(new File("/Users/yangxk15/Desktop/recipe.txt")));
		recipeinfo.readLine();
		while ((line = recipeinfo.readLine()) != null) {
			Recipe recipe = new Recipe();
			recipe.setRecipeid(Integer.valueOf(line));
			recipe.setName(recipeinfo.readLine());
			recipe.setDescription(recipeinfo.readLine());
			recipe.setServe(recipeinfo.readLine());
			recipe.setScore(recipeinfo.readLine());
			List<String> ingredients = new ArrayList<String> ();
			List<String> ingredientsDes = new ArrayList<String> ();
			int num = Integer.valueOf(recipeinfo.readLine());
			for (int i = 0; i < num; i++) {
				line = recipeinfo.readLine();
				String[] list = line.split(",");
				ingredients.add(list[0]);
				ingredientsDes.add(list[1]);
			}
			recipe.setIngredients(ingredients);
			recipe.setIngredientsDes(ingredientsDes);
			List<String> steps = new ArrayList<String> ();
			num = Integer.valueOf(recipeinfo.readLine());
			for (int i = 0; i < num; i++) {
				steps.add(recipeinfo.readLine());
			}
			recipelist.add(recipe);
			recipe.setSteps(steps);
		}
		recipeinfo.close();
		return recipelist;
	}
	public static void setRecipelist(ArrayList<Recipe> recipelist) throws IOException {
		BufferedWriter recipeinfo = new BufferedWriter(new FileWriter(new File("/Users/yangxk15/Desktop/recipe.txt")));
		recipeinfo.write("Recipe Information");
		for (Recipe recipe : recipelist) {
			recipeinfo.newLine();
			recipeinfo.write(String.valueOf(recipe.getRecipeid()));
			recipeinfo.newLine();
			recipeinfo.write(recipe.getName());
			recipeinfo.newLine();
			recipeinfo.write(recipe.getDescription());
			recipeinfo.newLine();
			recipeinfo.write(recipe.getServe());
			recipeinfo.newLine();
			recipeinfo.write(recipe.getScore());
			recipeinfo.newLine();
			recipeinfo.write(String.valueOf(recipe.getIngredients().size()));
			for (int i = 0; i < recipe.getIngredients().size(); i++) {
				recipeinfo.newLine();
				String line = recipe.getIngredients().get(i) + "," + recipe.getIngredientsDes().get(i);
				if (line.equals(","))
					recipeinfo.write(" , ");
				else
					recipeinfo.write(recipe.getIngredients().get(i) + "," + recipe.getIngredientsDes().get(i));
			}
			recipeinfo.newLine();
			recipeinfo.write(String.valueOf(recipe.getSteps().size()));
			for (String s : recipe.getSteps()) {
				recipeinfo.newLine();
				recipeinfo.write(s);
			}
		}
		recipeinfo.close();
	}
	public int getRecipeid() {
		return recipeid;
	}
	public void setRecipeid(int recipeid) {
		this.recipeid = recipeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<String> getIngredients() {
		return ingredients;
	}
	public void setIngredients(List<String> ingredients) {
		this.ingredients = ingredients;
	}
	public List<String> getSteps() {
		return steps;
	}
	public void setSteps(List<String> steps) {
		this.steps = steps;
	}
	public List<String> getIngredientsDes() {
		return ingredientsDes;
	}
	public void setIngredientsDes(List<String> ingredientsDes) {
		this.ingredientsDes = ingredientsDes;
	}
	public String getServe() {
		return serve;
	}
	public void setServe(String serve) {
		this.serve = serve;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
}
