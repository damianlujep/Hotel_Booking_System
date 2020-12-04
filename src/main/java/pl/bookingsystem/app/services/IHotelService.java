package pl.bookingsystem.app.services;

import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RoomType;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public interface IHotelService {
    List<String> getAllHotelCities();
    List<Hotel> findHotelByCityAndArrivalDepartureDates(HotelSearchingDto hotelSearchingDto);
    Hotel findHotelById(int hotelId);
    String findHotelSelectedPage(int hotelId);
    BigDecimal findLowestHotelRate(int hotelId, LocalDate arrivalDate);
    List<RoomType> findAllRoomTypesAvailableByDate(ReservationDto reservationDto);
    String findRoomTypeAndRateSelectedPage(int roomTypeId, int ratePlanId);
}
