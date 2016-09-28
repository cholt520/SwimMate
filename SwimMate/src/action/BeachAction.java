package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Action;

import entity.Beach;
import entity.Report;
import entity.User;
import service.BeachService;
import service.ReportService;
import service.UserService;

public class BeachAction implements ModelDriven, Action {

	private static final long serialVersionUID = 1L;

	private List<Beach> beachList = new ArrayList<Beach>();
	private BeachService beachService;
	private String selectedState = "";
	private String beachName = "";
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;
	private ReportService reportService;
	private List<Report> reportList = new ArrayList<Report>();


	public ReportService getReportService() {
		return reportService;
	}

	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}

	public List<Report> getReportList() {
		return reportList;
	}

	public void setReportList(List<Report> reportList) {
		this.reportList = reportList;
	}

	/**
	 * getUserService 
	 *
	 * @param no
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
	 * setUserService 
	 *
	 * @param userService
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
	 * getBeachName 
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getBeachName() {
		return beachName;
	}

	/**
	 * setBeachName 
	 *
	 * @param beachName
	 * @throws java.Nullpoint.exception
	 */
	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	/**
	 * getModel 
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public Object getModel() {
		return null;
	}

	/**
	 * getBeachService 
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public BeachService getBeachService() {
		return beachService;
	}

	/**
	 * setBeachService 
	 *
	 * @param beachService
	 * @throws java.Nullpoint.exception
	 */
	public void setBeachService(BeachService beachService) {
		this.beachService = beachService;
	}

	/**
	 * getBeachList 
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public List<Beach> getBeachList() {
		return beachList;
	}

	/**
	 * setBeachList 
	 *
	 * @param beachList
	 * @throws java.Nullpoint.exception
	 */
	public void setBeachList(ArrayList<Beach> beachList) {
		this.beachList = beachList;
	}

	/**
	 * getState 
	 *
	 * @param beachList
	 * @throws java.Nullpoint.exception
	 */
	public String getState() {
		return selectedState;
	}

	/**
	 * setState 
	 *
	 * @param selectedState
	 * @throws java.Nullpoint.exception
	 */
	public void setState(String selectedState) {
		this.selectedState = selectedState;
	}
	
	/**
	 * getSelectedState 
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public String getSelectedState() {
		return selectedState;
	}

	/**
	 * setSelectedState 
	 *
	 * @param selectedState
	 * @throws java.Nullpoint.exception
	 */
	public void setSelectedState(String selectedState) {
		this.selectedState = selectedState;
	}

	/**
	 * for get all beach List  
	 *
	 * @param loginUserID
	 * @throws java.Nullpoint.exception and Exception
	 */
	public String execute() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			beachList = beachService.getAllBeach();
			reportList = reportService.getAllReport();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * for get get Beach By State and return an list for beachinfo.jsp page
	 *
	 * @param selectedState
	 * @throws java.Nullpoint.exception and Exception
	 */
	public String getBeachByState() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			beachList = beachService.getBeachByState(selectedState);
			reportList = reportService.getAllReport();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error: " + e);
		}
		return "success";
	}
	

	/**
	 * for get get Beach By name and return an list for beachinfo.jsp page
	 *
	 * @param beachName
	 * @throws java.Nullpoint.exception and Exception
	 */
	public String getBeachByName() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			Beach newBeach = beachService.getBeachByName(beachName);
			beachList.clear();
			beachList.add(newBeach);
			reportList = reportService.getAllReport();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

}
