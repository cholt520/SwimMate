package dao;

import java.util.List;
import entity.Reminder;
import entity.User;

public interface ReminderDao {
	public Reminder getReminderById(int id);
	public List<Reminder> getAllReminder();
	public void deleteReminder(Reminder reminder);
	public void addReminder(Reminder reminder);
	public void modifyReminder(Reminder reminder);
	public List<Reminder> getReminderByUserID(int userID);
}
