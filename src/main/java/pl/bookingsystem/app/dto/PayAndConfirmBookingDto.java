package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;
import pl.bookingsystem.app.validator.ValidEmail;

import javax.validation.constraints.*;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@ToString
public class PayAndConfirmBookingDto {
    @NotBlank
    private String payerFirstName;
    @NotBlank
    private String payerLastName;
    @NotBlank
    @ValidEmail
    private String payerEmail;
    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Past(message = "Enter a valid Day of Birth")
    private LocalDate payerDateOfBirth;
    @NotBlank
    @Size(min = 7, max = 20, message = "{ValidPhoneNumber}")
    private String payerPhoneNumber;

    @NotBlank
    private String creditCardType;
    @NotBlank
    private String cardHolder;
    @NotBlank
    @Size(min = 16, message = "{Invalid.Card}")
    private String creditCardNumber;
    @NotNull
    @Min(value = 1, message = "{Invalid.CardExpirationMonth}")
    private int creditCardExpirationMonth;
    @NotNull
    @Min(value = 2020, message = "{Invalid.CardExpirationYear}")
    private int creditCardExpirationYear;
    @NotBlank
    @Min(value = 3, message = "{Invalid.securityCode}")
    private String securityCode;

    @NotBlank
    private String city;
    @NotBlank
    private String country;
    @NotBlank
    private String postalCode;
    @NotBlank
    private String billingAddress;

    @AssertTrue(message = "You must accept the terms and conditions")
    private boolean acceptRulesAndRestrictions;

}
