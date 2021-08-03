package pl.bookingsystem.app.services;

import pl.bookingsystem.app.dto.ReservationDto;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;

public interface IEmailService {
    void sendHtmlMessage(String to,  ReservationDto bookingMode) throws MessagingException, UnsupportedEncodingException;
}
