package action;

import java.io.IOException;
import java.util.Properties;

import com.opensymphony.xwork2.ActionSupport;

import service.WeatherServiceImpl;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	
	public String execute(){
		
		return "success";
	}
	
	public void validate(){
		Properties properties = new Properties();
		try {
			properties.load(WeatherServiceImpl.class.getResourceAsStream("/login.properties"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String usernamefromProperties = properties.get("username").toString();
		String passwordfromProperties = properties.get("password").toString();
		if(username.equals(usernamefromProperties)&&password.equals(passwordfromProperties)){
			addActionMessage("You are valid user!");
		}else{
			addActionError("I don't know you, dont try to hack me!");
		}
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
	
	

}
