package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import pl.bookingsystem.app.entity.CalendarRate;
import pl.bookingsystem.app.entity.CalendarRateHistory;
import pl.bookingsystem.app.entity.Hotel;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@ToString
public class RoomAndRatePriceDto {
    private CalendarRateHistory calendarRateHistory;
    private LocalDate date;
    private Hotel hotelId;
    private BigDecimal price;
    private CalendarRate originCalendarRatesId;
}
