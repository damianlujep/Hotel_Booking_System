package pl.bookingsystem.app.services;

import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.*;

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
    List<RoomAndRatePriceDto> roomAndRatePricesByRoomTypeAndRatePlan(ReservationDto reservationDto, RoomType roomType, RatePlan ratePlan);
    Map<String, BigDecimal> averagePricesPerRoomPerRate( Map<String, List<RoomAndRatePriceDto>> roomAndRatesPricesMapped);
    RatePlanStructureHistory mostActualRatePlanStructure(ReservationDto reservationDto, int ratePlanId);
    RoomTypeStructureHistory mostActualRoomTypeStructure(ReservationDto reservationDto, int roomType);
    Map<String, List<RoomAndRatePriceDto>> getFinalRoomAndRatePriceList(ReservationDto reservationDto, String roomAndRateKey);
    void confirmReservation(ReservationDto reservationDto);
    BigDecimal calculateTotalRoomRevenue(ReservationDto reservationDto);
    boolean nonRefOfferChecker (String selectedRateAndRoomKey);
}
