package service;

import java.util.List;

import dao.ReminderDao;
import entity.Reminder;

public class ReminderServiceImpl implements ReminderService{

	private ReminderDao reminderDao;
	
	public ReminderDao getReminderDao() {
		return reminderDao;
	}

	public void setReminderDao(ReminderDao reminderDao) {
		this.reminderDao = reminderDao;
	}


	/**
	* delete Reminders
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public void deleteReminder(Reminder reminder) {
		reminderDao.deleteReminder(reminder);
		
	}

	/**
	* add Reminders
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	public void addReminder(Reminder reminder) {
		reminderDao.addReminder(reminder);
		
	}

	/**
	* change Reminders
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	public void modifyReminder(Reminder reminder) {
		reminderDao.modifyReminder(reminder);
		
	}

	/**
	* Get Reminder By User ID
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getReminderByUserID(int userID) {
		return reminderDao.getReminderByUserID(userID);
	}

	/**
	* Get Reminder By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Reminder getReminderById(int id) {
		return reminderDao.getReminderById(id);
	}

	/**
	* Get all Reminders
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getAllReminder() {
		return reminderDao.getAllReminder();
	}

}
