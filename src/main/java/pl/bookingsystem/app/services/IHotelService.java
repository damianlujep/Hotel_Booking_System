package pl.bookingsystem.app.services;

import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.entity.Hotel;

import java.math.BigDecimal;
import java.util.List;

public interface IHotelService {
    List<String> getAllHotelCities();
    List<Hotel> findHotelByCityAndArrivalDepartureDates(HotelSearchingDto hotelSearchingDto);
    String findHotelSelectedPage(int hotelId);
    BigDecimal findLowestHotelRate(int hotelId);
}
