package service;
import entity.Reminder;

public interface SendEmailService {
	public void sendReminderByEmail(Reminder reminder);
}
