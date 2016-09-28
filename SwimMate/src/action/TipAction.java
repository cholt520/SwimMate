package action;

import com.opensymphony.xwork2.Action;

import entity.User;
import service.UserService;

public class TipAction implements Action{
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;
	
	/**
	* getLoginUserID 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public int getLoginUserID() {
		return loginUserID;
	}
	
	/**
	* setLoginUserID
	*
	* @param loginUserID
	* @throws java.Nullpoint.exception
	*/
	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}
	
	/**
	* getCurrentLoginUser 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public User getCurrentLoginUser() {
		return currentLoginUser;
	}
	
	/**
	* setCurrentLoginUser
	*
	* @param currentLoginUser
	* @throws java.Nullpoint.exception
	*/
	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}
	
	/**
	* getUserService
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public UserService getUserService() {
		return userService;
	}
	
	/**
	* setUserService 
	*
	* @param userService
	* @throws java.Nullpoint.exception
	*/
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	/**
	* show current login user
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
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
