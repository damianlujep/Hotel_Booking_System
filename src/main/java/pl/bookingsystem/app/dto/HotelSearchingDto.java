package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@ToString
public class HotelSearchingDto {
    @NotBlank
    private String city;

    @NotNull
    @DateTimeFormat(pattern = "d MMM yyyy")
    @PastOrPresent
    private LocalDate arrivalDate;

    @NotNull
    @DateTimeFormat(pattern = "d MMM yyyy")
    @Future
    private LocalDate departureDate;
    
    @Max(2)
    @NotNull
    private int guestsQuantity;
}
