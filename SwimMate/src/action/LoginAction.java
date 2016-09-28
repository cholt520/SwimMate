package action;

import java.io.IOException;
import java.util.Properties;

import com.opensymphony.xwork2.ActionSupport;

import service.WeatherServiceImpl;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	
	/**
	* not implements for future  
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String execute(){
		
		return "success";
	}
	/**
	* validate, check the username and password in front page.  
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
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

	/**
	* getUsername 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getUsername() {
		return username;
	}

	/**
	* setUsername 
	*
	* @param username
	* @throws java.Nullpoint.exception
	*/
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	* getPassword 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getPassword() {
		return password;
	}

	/**
	* setPassword 
	*
	* @param password
	* @throws java.Nullpoint.exception
	*/
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
