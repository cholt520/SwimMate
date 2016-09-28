package service;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

import entity.Reminder;

public class SendEmailServiceImpl implements SendEmailService {

	public void sendReminderByEmail(Reminder reminder) {
	

		final String username = "wj4507657@gmail.com";
		final String password = "cholt520!";

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
			message.setFrom(new InternetAddress("wj4507657@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("lzuo5@student.monash.edu"));
			message.setSubject("Testing Email service by Travis again");
			message.setText("Dear Mail Crawler,"
				+ "\n\n No spam to my email, please!");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}
	
	public static void main(String[] args){
		SendEmailServiceImpl sendEmailServiceImpl = new SendEmailServiceImpl();
		sendEmailServiceImpl.sendReminderByEmail(null);
	}

}
