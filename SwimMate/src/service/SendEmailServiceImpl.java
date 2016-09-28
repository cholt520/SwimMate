package service;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

import entity.Beach;
import entity.Reminder;

public class SendEmailServiceImpl implements SendEmailService {

	
	
	public void sendReminderByEmail(Reminder reminder) {

		final String username = "help.swimmate@gmail.com";
		final String password = "swimmate2016";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("help.swimmate@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(reminder.getUserEmail()));
			message.setSubject("Confirmation of your swimming plan");
			message.setText("Dear Swimmer,"
				+ "\n\nThis is a confirmation email of your upcoming beach trip to " + reminder.getBeachName() + " on " + reminder.getDate() + " ."
				+ "\n\nYou left the following note for this trip:"
				+ "\n\n " + reminder.getDescription()
			    + "\n\n\nTo get the weather updates for your planned trip, please visit swimmate.xyz"
			    + "\n\nEnjoy your trip!"
			    + "\n\nPowered by SwimMate");
			Transport.send(message);
			System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
