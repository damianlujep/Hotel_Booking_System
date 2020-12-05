package pl.bookingsystem.app.services;

import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RatePlan;
import pl.bookingsystem.app.entity.RoomType;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface IHotelService {
    List<String> getAllHotelCities();
    List<Hotel> findHotelByCityAndArrivalDepartureDates(HotelSearchingDto hotelSearchingDto);
    Hotel findHotelById(int hotelId);
    String findHotelSelectedPage(int hotelId);
    BigDecimal findLowestHotelRate(int hotelId, LocalDate arrivalDate);
    List<RoomType> findAllRoomTypesAvailableByDate(ReservationDto reservationDto);
    String findRoomTypeAndRateSelectedPage(int roomTypeId, int ratePlanId);
    Map<String, List<RoomAndRatePriceDto>> roomAndRatesPricesMapped(ReservationDto reservationDto);
    List<RoomAndRatePriceDto> roomAndRatesPricesConverter(List<String> roomAndRatePricesObjects);
    List<RoomAndRatePriceDto> roomAndRetePricesByRoomTypeAndRatePlan (ReservationDto reservationDto, RoomType roomType, RatePlan ratePlan);
}
