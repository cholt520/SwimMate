package action;

import entity.Beach;
import entity.Reminder;
import entity.User;
import service.BeachService;
import service.ReminderService;
import service.SendEmailService;
import service.SendEmailServiceImpl;
import service.UserService;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class ReminderAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;
	private String selectedState = "VIC";
	private BeachService beachService;
	private List<Beach> beachList = new ArrayList<Beach>();
	private String selectedDate;
	private int selectBeachID;
	private ReminderService reminderService;
	private String description;
	private List<Reminder> reminderList = new ArrayList<Reminder>();
	private int deleteReminderID;
	private int editReminderID;
	private Reminder currentSelectedReminder;
	private String editBeachName = "";


	/**
	* get Edit Beach Name 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getEditBeachName() {
		return editBeachName;
	}

	/**
	* setEditBeachName 
	*
	* @param editBeachName
	* @throws java.Nullpoint.exception
	*/
	public void setEditBeachName(String editBeachName) {
		this.editBeachName = editBeachName;
	}

	/**
	* getCurrentSelectedReminder 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public Reminder getCurrentSelectedReminder() {
		return currentSelectedReminder;
	}

	/**
	* setCurrentSelectedReminder 
	*
	* @param currentSelectedReminder
	* @throws java.Nullpoint.exception
	*/
	public void setCurrentSelectedReminder(Reminder currentSelectedReminder) {
		this.currentSelectedReminder = currentSelectedReminder;
	}

	/**
	* getEditReminderID 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public int getEditReminderID() {
		return editReminderID;
	}

	/**
	* setEditReminderID 
	*
	* @param editReminderID
	* @throws java.Nullpoint.exception
	*/
	public void setEditReminderID(int editReminderID) {
		this.editReminderID = editReminderID;
	}

	/**
	* getDeleteReminderID 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public int getDeleteReminderID() {
		return deleteReminderID;
	}

	/**
	* setDeleteReminderID 
	*
	* @param deleteReminderID
	* @throws java.Nullpoint.exception
	*/
	public void setDeleteReminderID(int deleteReminderID) {
		this.deleteReminderID = deleteReminderID;
	}

	/**
	* getReminderList 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getReminderList() {
		return reminderList;
	}

	/**
	* setReminderList 
	*
	* @param reminderList
	* @throws java.Nullpoint.exception
	*/
	public void setReminderList(List<Reminder> reminderList) {
		this.reminderList = reminderList;
	}

	/**
	* getDescription 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getDescription() {
		return description;
	}

	/**
	* setDescription 
	*
	* @param description
	* @throws java.Nullpoint.exception
	*/
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	* getReminderService 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public ReminderService getReminderService() {
		return reminderService;
	}

	/**
	* setReminderService 
	*
	* @param reminderService
	* @throws java.Nullpoint.exception
	*/
	public void setReminderService(ReminderService reminderService) {
		this.reminderService = reminderService;
	}

	/**
	* getSelectBeachID 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public int getSelectBeachID() {
		return selectBeachID;
	}

	/**
	* setSelectBeachID 
	*
	* @param selectBeachID
	* @throws java.Nullpoint.exception
	*/
	public void setSelectBeachID(int selectBeachID) {
		this.selectBeachID = selectBeachID;
	}

	/**
	* getSelectedDate 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getSelectedDate() {
		return selectedDate;
	}

	/**
	* setSelectedDate 
	*
	* @param selectedDate
	* @throws java.Nullpoint.exception
	*/
	public void setSelectedDate(String selectedDate) {
		this.selectedDate = selectedDate;
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
	public void setBeachList(List<Beach> beachList) {
		this.beachList = beachList;
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
	* When swimmers select by beach by state, the reminds will get from database for relating the the relevent beach 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String execute() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	/**
	* add reminder to database 
	*
	* @param selectBeachID,loginUserID,description,newReminder
	* @throws java.Nullpoint.exception
	*/
	public String submitReminder() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			Reminder newReminder = new Reminder();
			newReminder.setBeach_id(selectBeachID);
			if (!selectedDate.equals("")) {
				newReminder.setDate(selectedDate);
			} else {
				addActionError("Please choose a date");
				return "error";
			}
			newReminder.setUser_id(loginUserID);
			newReminder.setDescription(description);
			reminderService.addReminder(newReminder);
			addActionMessage("Add reminder and send email successfully!");
			
			//sent email
			newReminder.setID(-1);
			Beach selectedBeach = beachService.getBeachById(selectBeachID);
			newReminder.setBeachName(selectedBeach.getBeach_name());
			newReminder.setUserEmail(currentLoginUser.getEmail());
			System.out.println(newReminder.getID());
			System.out.println(newReminder.getBeach_id());
			System.out.println(newReminder.getDate());
			System.out.println(newReminder.getDescription());
			System.out.println(newReminder.getUser_id());
			
			SendEmailServiceImpl sendEmailService = new SendEmailServiceImpl();
			
			sendEmailService.sendReminderByEmail(newReminder);

			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("Error: " + e);
			return "error";
		}
	}

	/**
	* When swimmers do not want remind, they can delete it.  
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String deleteReminder() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}

			System.out.println(deleteReminderID);
			Reminder deleteReminder = reminderService.getReminderById(deleteReminderID);

			reminderService.deleteReminder(deleteReminder);
			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			addActionMessage("Delete reminder successfully!");
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("Error: " + e);
			return "error";
		}
	}

	/**
	* jumpToModifyReminder 
	*
	* @param loginUserID,editReminderID,currentSelectedReminder
	* @throws java.Nullpoint.exception
	*/
	public String jumpToModifyReminder() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			// Get current selected reminder
			currentSelectedReminder = reminderService.getReminderById(editReminderID);
			selectBeachID = currentSelectedReminder.getBeach_id();
			selectedDate = currentSelectedReminder.getDate();
			description = currentSelectedReminder.getDescription();
			Beach selectedBeach = beachService.getBeachById(currentSelectedReminder.getBeach_id());
			selectedState = selectedBeach.getState();
			editBeachName = selectedBeach.getBeach_name();
			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("Error: " + e);
			return "error";
		}
	}

	/**
	* submit State for get beach reminder information
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String submitState() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	/**
	* modifyReminder, change the content on remind, or date.  
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String modifyReminder() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			System.out.println(editReminderID + "editReminderID");
			// Get current selected reminder
			currentSelectedReminder = reminderService.getReminderById(editReminderID);
			selectBeachID = currentSelectedReminder.getBeach_id();
			selectedDate = currentSelectedReminder.getDate();
			description = currentSelectedReminder.getDescription();

			Beach selectedBeach = beachService.getBeachById(currentSelectedReminder.getBeach_id());

			selectedState = selectedBeach.getState();
			editBeachName = selectedBeach.getBeach_name();

			System.out.println(selectBeachID + "selectBeachID");
			System.out.println(selectedDate + "selectedDate");
			System.out.println(description + "description");

			currentSelectedReminder.setBeach_id(selectBeachID);

			System.out.println(selectedDate);
			if (!selectedDate.equals("")) {
				currentSelectedReminder.setDate(selectedDate);
			} else {
				addActionError("Please choose a date");
				return "error";
			}
			currentSelectedReminder.setDescription(description);
			reminderService.modifyReminder(currentSelectedReminder);

			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			addActionMessage("Modify reminder successfully!");
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("Error: " + e);
			return "error";
		}
	}
}
