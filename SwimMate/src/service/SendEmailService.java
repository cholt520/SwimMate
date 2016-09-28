package service;
import entity.Reminder;

public interface SendEmailService {
	
	/**
	* use google email server to notice swimmers
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	public void sendReminderByEmail(Reminder reminder);
}
