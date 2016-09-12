package action;

import service.UserService;

import java.util.List;

import entity.User;

public class UserAction {

	private UserService userService;
	private List<User> userList;
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	public String execute(){
		try {
			userList = userService.getAllUser();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
}


