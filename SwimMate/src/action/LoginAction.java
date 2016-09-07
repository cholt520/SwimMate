package action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	
	public String execute(){
		
		return "success";
	}
	
	public void validate(){
		if(username.equals("monash")&&password.equals("monash")){
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
