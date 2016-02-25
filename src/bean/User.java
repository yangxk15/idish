package bean;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class User {
	private int userid;
	private String realname;
	private String username;
	private String password;
	private List<Integer> kitchen;
	public static ArrayList<User> getUserlist() throws IOException {
		ArrayList<User> userlist = new ArrayList<User> ();
		String line;
		BufferedReader userinfo = new BufferedReader(new FileReader(new File("/Users/yangxk15/Desktop/user.txt")));
		userinfo.readLine();
		while ((line = userinfo.readLine()) != null) {
			String[] list = line.split(",");
			User user = new User();
			user.setRealname(list[0]);
			user.setUsername(list[1]);
			user.setPassword(list[2]);
			List<Integer> kitchen = new ArrayList<Integer> ();
			for (String s : list[3].split(" ")) {
				if (s.length() == 0)
					break;
				kitchen.add(Integer.valueOf(s));
			}
			user.setKitchen(kitchen);
			user.setUserid(Integer.valueOf(list[4]));
			userlist.add(user);
		}
        userinfo.close();
        return userlist;
	}
	public static void setUserlist(ArrayList<User> userlist) throws IOException {
		BufferedWriter userinfo = new BufferedWriter(new FileWriter(new File("/Users/yangxk15/Desktop/user.txt")));
		userinfo.write("RealName,UserName,PassWord,Picture,Kitchen,Userid");
		for (User user : userlist) {
			userinfo.newLine();
			String[] list = new String[user.getKitchen().size()];
			for (int i = 0; i < list.length; i++) {
				list[i] = String.valueOf(user.getKitchen().get(i));
			}
			userinfo.write(user.getRealname()
					+ "," + user.getUsername()
					+ "," + user.getPassword()
					+ "," + (list.length == 0 ? "" : String.join(" ", list))
					+ "," + String.valueOf(user.getUserid()));
		}
        userinfo.close();
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<Integer> getKitchen() {
		return kitchen;
	}
	public void setKitchen(List<Integer> kitchen) {
		this.kitchen = kitchen;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
}
