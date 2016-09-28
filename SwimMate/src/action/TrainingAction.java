package action;

import service.TrainingService;
import service.UserService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;

import entity.Training;
import entity.User;

public class TrainingAction implements Action{
	private TrainingService trainingService;
	private List<Training> traininglist;
	private String state;
	private String postcode;
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
	* Get user information and relating to training page. 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String execute(){
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			traininglist = trainingService.getAllTraining();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	/**
	* Get all Training By State 
	*
	* @param loginUserID,state
	* @throws java.Nullpoint.exception
	*/
	public String getTrainingByState(){
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			traininglist = trainingService.getTrainingByState(state);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	/**
	* Get Training list By Postcode 
	*
	* @param loginUserID,postcode
	* @throws java.Nullpoint.exception
	*/
	public String getTrainingByPostcode(){
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			traininglist = trainingService.getTrainingByPostcode(postcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	/**
	* getTrainingService 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public TrainingService getTrainingService() {
		return trainingService;
	}

	/**
	* setTrainingService 
	*
	* @param trainingService
	* @throws java.Nullpoint.exception
	*/
	public void setTrainingService(TrainingService trainingService) {
		this.trainingService = trainingService;
	}

	/**
	* getTraininglist 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTraininglist() {
		return traininglist;
	}

	/**
	* setTraininglist 
	*
	* @param traininglist
	* @throws java.Nullpoint.exception
	*/
	public void setTraininglist(List<Training> traininglist) {
		this.traininglist = traininglist;
	}

	/**
	* getState 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getState() {
		return state;
	}

	/**
	* setState 
	*
	* @param state
	* @throws java.Nullpoint.exception
	*/
	public void setState(String state) {
		this.state = state;
	}

	/**
	* getPostcode 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getPostcode() {
		return postcode;
	}

	/**
	* setPostcode 
	*
	* @param postcode
	* @throws java.Nullpoint.exception
	*/
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
}
