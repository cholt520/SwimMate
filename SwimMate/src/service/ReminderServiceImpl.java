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

	@Override
	public void deleteReminder(Reminder reminder) {
		reminderDao.deleteReminder(reminder);
		
	}

	@Override
	public void addReminder(Reminder reminder) {
		reminderDao.addReminder(reminder);
		
	}

	@Override
	public void modifyReminder(Reminder reminder) {
		reminderDao.modifyReminder(reminder);
		
	}

	@Override
	public List<Reminder> getReminderByUserID(int userID) {
		return reminderDao.getReminderByUserID(userID);
	}

	@Override
	public Reminder getReminderById(int id) {
		return reminderDao.getReminderById(id);
	}

	@Override
	public List<Reminder> getAllReminder() {
		return reminderDao.getAllReminder();
	}

}
