package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import pl.bookingsystem.app.entity.CalendarRateHistory;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RatePlanStructureHistory;
import pl.bookingsystem.app.entity.RoomTypeStructureHistory;

import java.time.LocalDate;
import java.util.List;

@Data
@NoArgsConstructor
@ToString
public class ReservationDto {
    private Hotel hotel;
    private String city;
    private LocalDate arrivalDate;
    private LocalDate departureDate;
    private int guestsQuantity;
    private List<CalendarRateHistory> mostActualCalendarRates;
    private RatePlanStructureHistory mostActualRatePlan;
    private RoomTypeStructureHistory mostActualRoomType;

}
