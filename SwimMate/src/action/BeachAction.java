package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Action;

import entity.Beach;
import entity.User;
import service.BeachService;
import service.UserService;

public class BeachAction implements ModelDriven, Action {

	private static final long serialVersionUID = 1L;

	private Beach beach = new Beach();
	private List<Beach> beachList = new ArrayList<Beach>();
	private BeachService beachService;
	private String selectedState = "";
	private String beachName = "";
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;



	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

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

	public String getBeachName() {
		return beachName;
	}

	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	@Override
	public Object getModel() {
		return null;
	}

	public BeachService getBeachService() {
		return beachService;
	}

	public void setBeachService(BeachService beachService) {
		this.beachService = beachService;
	}

	public List<Beach> getBeachList() {
		return beachList;
	}

	public void setBeachList(ArrayList<Beach> beachList) {
		this.beachList = beachList;
	}

	public String getState() {
		return selectedState;
	}

	public void setState(String selectedState) {
		this.selectedState = selectedState;
	}
	public String getSelectedState() {
		return selectedState;
	}

	public void setSelectedState(String selectedState) {
		this.selectedState = selectedState;
	}

	public String execute() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			beachList = beachService.getAllBeach();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String getBeachByState() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			beachList = beachService.getBeachByState(selectedState);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error: " + e);
		}
		return "success";
	}

	public String getBeachByName() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			Beach newBeach = beachService.getBeachByName(beachName);
			beachList.clear();
			beachList.add(newBeach);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

}
