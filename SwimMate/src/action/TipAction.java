package action;

import com.opensymphony.xwork2.Action;

import entity.User;
import service.UserService;

public class TipAction implements Action{
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;
	
	public int getLoginUserID() {
		return loginUserID;
	}
	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}
	public User getCurrentLoginUser() {
		return currentLoginUser;
	}
	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@Override
	public String execute() throws Exception {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
}
