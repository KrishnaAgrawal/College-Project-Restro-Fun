/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyPackage;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Aaditya
 */
public class EmailSender {
    
   public boolean sendMail(String from, String to, String subject, String message) {

		final String username = "restro.krtt@gmail.com";                                                          // enter your mail id
		final String password = "krtt@2k17";                                                                 // enter ur password

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

			Message message1 = new MimeMessage(session);
			message1.setFrom(new InternetAddress(from));                                                      // same email id
			message1.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));                                                                      // whome u have to send mails that person id
			message1.setSubject(subject);
			message1.setContent(message, "text/html; charset=utf-8");
			Transport.send(message1);
		} catch (MessagingException e) {
			                 System.out.println(e);
		}
       return false;
	}
}


