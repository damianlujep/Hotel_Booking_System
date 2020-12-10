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
    @NotBlank
    @Size(min = 2, message = "{Size.memberDto.firstName}")
    private String firstName;

    @NotBlank
    @Size(min = 2, message = "{Size.memberDto.lastName}")
    private String lastName;

    @NotBlank
    @ValidEmail
    private String email;

    @NotBlank
    @ValidPassword
    private String password;

    @NotBlank
    private String rePassword;

    @NotBlank
    @Size(min = 7, max = 20, message = "{ValidPhoneNumber}")
    private String phone;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Past(message = "Enter a valid Day of Birth")
    private LocalDate dayOfBirth;
}
