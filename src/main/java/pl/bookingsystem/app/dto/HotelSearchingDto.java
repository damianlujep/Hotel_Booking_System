package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.Max;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@ToString
public class HotelSearchingDto {
    @NotBlank
    private String city;
    @NotNull
    private LocalDate arrivalDate;
    @NotNull
    private LocalDate departureDate;
    @Max(2)
    @NotNull
    private int guestsQuantity;

}
