package service;

import java.util.List;

import entity.Reminder;

public interface ReminderService {
	
	/**
	* Get Reminder By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Reminder getReminderById(int id);
	
	/**
	* Get all Reminders
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getAllReminder();
	
	/**
	* delete Reminders
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public void deleteReminder(Reminder reminder);
	
	/**
	* add Reminders
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	public void addReminder(Reminder reminder);
	
	/**
	* change Reminders
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	public void modifyReminder(Reminder reminder);
	
	/**
	* get Reminders by user id
	*
	* @param userID 
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getReminderByUserID(int userID);
}
