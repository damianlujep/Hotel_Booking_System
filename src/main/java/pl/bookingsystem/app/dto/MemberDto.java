package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;
import pl.bookingsystem.app.validator.PasswordMatches;
import pl.bookingsystem.app.validator.ValidEmail;
import pl.bookingsystem.app.validator.ValidPassword;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@ToString
@PasswordMatches
public class MemberDto {
    @Size(min = 2)
    private String firstName;

    @Size(min = 2)
    private String lastName;

    @NotBlank
    @ValidEmail
    private String email;

    @NotBlank
    @ValidPassword
    private String password;

    @NotBlank
    private String rePassword;

    @Size(min = 7, max = 20, message = "Enter a valid phone number")
    @NotBlank
    private String phone;

    @NotNull
    @DateTimeFormat(pattern = "MM dd yyyy")
    @Past
    private LocalDate DayOfBirth;
}
