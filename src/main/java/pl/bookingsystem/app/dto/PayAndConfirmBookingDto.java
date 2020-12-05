package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import pl.bookingsystem.app.validator.PasswordMatches;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@ToString
@PasswordMatches
public class PayAndConfirmBookingDto {
    private String firstName;
    private String lastName;
    private String email;
    private LocalDate dateOfBirth;

    private String creditCardType;
    private String cardHolder;
    private String creditCardNumber;
    private int creditCardExpirationMonth;
    private int creditCardExpirationYear;
    private String securityCode;

    private String city;
    private String country;
    private String postalCode;
    private String billingAddress;

    private boolean acceptRulesAndRestrictions;

}
