package pl.bookingsystem.app.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RatePlanStructureHistory;
import pl.bookingsystem.app.entity.RoomTypeStructureHistory;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Data
@NoArgsConstructor
@ToString
public class ReservationDto {
    private Hotel hotel;
    private String city;
    private LocalDate arrivalDate;
    private LocalDate departureDate;
    private int guestsQuantity;
    private Map<String, List<RoomAndRatePriceDto>> roomAndRatePriceList;
    private RatePlanStructureHistory mostActualRatePlanStructureHistory;
    private RoomTypeStructureHistory mostActualRoomTypeStructureHistory;
    private String selectedRateAndRoomKey;


}
