package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import pl.bookingsystem.app.dto.ReservationDto;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;

@Component
@Service
public class EmailService implements IEmailService{
    private final JavaMailSender emailSender;

    @Autowired
    public EmailService(JavaMailSender emailSender) {
        this.emailSender = emailSender;
    }

    @Override
    public void sendHtmlMessage(String to, ReservationDto bookingMode) throws MessagingException, UnsupportedEncodingException {
        MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

        String html = "<h2 style=\"color: #0c83e7;\">Thank you for you booking in our Hotel Booking System!</h2>\n" +
                      "<h3 style=\"font-style: italic;\">Find you booking summary below:</h3>\n" +
                      "<ul style=\"font-size: 16px; list-style: circle;\">\n" +
                            "<li><b>Hotel: </b>"+ bookingMode.getHotel().getName() +"</li>\n" +
                            "<li><b>City: </b>"+ bookingMode.getCity() +"</li>\n" +
                            "<li><b>Arrival Date: </b>"+ bookingMode.getArrivalDate() +"</li>\n" +
                            "<li><b>Departure date: </b>"+ bookingMode.getDepartureDate() +"</li>\n" +
                            "<li><b>Guest Quantity: </b>"+ bookingMode.getGuestsQuantity() +"</li>\n" +
                            "<li><b>Total price: </b>"+ bookingMode.getTotalPrice() + " zł"+"</li>\n" +
                     "</ul>\n" +
                     "<h3 style=\"color: red;\">This is a test email, and not a real booking confirmation. DO NOT ANSWER TO THIS EMAIL</h3>";

        //Send email confirmation to client
        helper.setTo(to);
        helper.setSubject("Booking Confirmation");
        helper.setText(html, true);
        helper.setFrom("project.email.testing2021@gmail.com", "no-reply: Hotel Booking System");
        emailSender.send(message);
    }
}
