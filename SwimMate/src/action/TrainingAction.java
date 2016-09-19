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
	
	public TrainingService getTrainingService() {
		return trainingService;
	}

	public void setTrainingService(TrainingService trainingService) {
		this.trainingService = trainingService;
	}

	public List<Training> getTraininglist() {
		return traininglist;
	}

	public void setTraininglist(List<Training> traininglist) {
		this.traininglist = traininglist;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
}
