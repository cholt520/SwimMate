package action;

import entity.Beach;
import entity.Reminder;
import entity.User;
import service.BeachService;
import service.ReminderService;
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

	public String getEditBeachName() {
		return editBeachName;
	}

	public void setEditBeachName(String editBeachName) {
		this.editBeachName = editBeachName;
	}

	public Reminder getCurrentSelectedReminder() {
		return currentSelectedReminder;
	}

	public void setCurrentSelectedReminder(Reminder currentSelectedReminder) {
		this.currentSelectedReminder = currentSelectedReminder;
	}

	public int getEditReminderID() {
		return editReminderID;
	}

	public void setEditReminderID(int editReminderID) {
		this.editReminderID = editReminderID;
	}

	public int getDeleteReminderID() {
		return deleteReminderID;
	}

	public void setDeleteReminderID(int deleteReminderID) {
		this.deleteReminderID = deleteReminderID;
	}

	public List<Reminder> getReminderList() {
		return reminderList;
	}

	public void setReminderList(List<Reminder> reminderList) {
		this.reminderList = reminderList;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ReminderService getReminderService() {
		return reminderService;
	}

	public void setReminderService(ReminderService reminderService) {
		this.reminderService = reminderService;
	}

	public int getSelectBeachID() {
		return selectBeachID;
	}

	public void setSelectBeachID(int selectBeachID) {
		this.selectBeachID = selectBeachID;
	}

	public String getSelectedDate() {
		return selectedDate;
	}

	public void setSelectedDate(String selectedDate) {
		this.selectedDate = selectedDate;
	}

	public List<Beach> getBeachList() {
		return beachList;
	}

	public void setBeachList(List<Beach> beachList) {
		this.beachList = beachList;
	}

	public BeachService getBeachService() {
		return beachService;
	}

	public void setBeachService(BeachService beachService) {
		this.beachService = beachService;
	}

	public String getSelectedState() {
		return selectedState;
	}

	public void setSelectedState(String selectedState) {
		this.selectedState = selectedState;
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

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
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
			addActionMessage("Add reminder successfully!");

			reminderList = reminderService.getReminderByUserID(loginUserID);
			beachList = beachService.getBeachByState(selectedState);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("Error: " + e);
			return "error";
		}
	}

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
