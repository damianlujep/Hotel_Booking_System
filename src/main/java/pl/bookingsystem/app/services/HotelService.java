package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RoomType;
import pl.bookingsystem.app.repository.CalendarAvailabilityRepository;
import pl.bookingsystem.app.repository.CalendarRateRepository;
import pl.bookingsystem.app.repository.HotelRepository;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@Transactional
public class HotelService implements IHotelService {
    private final HotelRepository hotelRepository;
    private final CalendarRateRepository calendarRateRepository;
    private final CalendarAvailabilityRepository calendarAvailabilityRepository;

    @Autowired
    public HotelService(HotelRepository hotelRepository, CalendarRateRepository calendarRateRepository, CalendarAvailabilityRepository calendarAvailabilityRepository) {
        this.hotelRepository = hotelRepository;
        this.calendarRateRepository = calendarRateRepository;
        this.calendarAvailabilityRepository = calendarAvailabilityRepository;
    }

    @Override
    public List<String> getAllHotelCities() {
        List<Hotel> hotelRepositoryAll = hotelRepository.findAll();

        return hotelRepositoryAll.stream()
                .map(Hotel::getCity)
                .distinct()
                .collect(Collectors.toList());
    }

    @Override
    public List<Hotel> findHotelByCityAndArrivalDepartureDates(HotelSearchingDto search) {
        return calendarAvailabilityRepository.findHotelByCityAndArrivalDepartureDates(
                search.getCity(), search.getArrivalDate(), (search.getDepartureDate()).minusDays(1));
    }

    @Override
    public Hotel findHotelById(int hotelId) {
        return hotelRepository.getOne(hotelId);
    }

    @Override
    public String findHotelSelectedPage(int hotelId) {
        Hotel hotelSelected = hotelRepository.getOne(hotelId);

        Map<Hotel, String> bookingHotelPages = new HashMap<>();
        List<Hotel> all = hotelRepository.findAll();
        for (Hotel hotel : all){
            switch (hotel.getName()){
                case "Hotel Kraków":
                    bookingHotelPages.put(hotel, "hotel-krakow-booking-page");
                    break;
                case "Hotel Łódź":
                    bookingHotelPages.put(hotel, "hotel-lodz-booking-page");
                    break;
                case "Hotel Barcelona":
                    bookingHotelPages.put(hotel, "hotel-barcelona-booking-page");
                    break;
            }
        }

        return bookingHotelPages.get(hotelSelected);
    }

    @Override
    public BigDecimal findLowestHotelRate(int hotelID, LocalDate arrivalDate) {
        Hotel currentHotel = hotelRepository.getOne(hotelID);
        return calendarRateRepository.lowestHotelRate(currentHotel, arrivalDate);
    }

    @Override
    public List<RoomType> findAllRoomTypesAvailableByDate(ReservationDto reservationDto) {
        return calendarAvailabilityRepository.findAllRoomTypesAvailableByDate(reservationDto.getHotel(), reservationDto.getArrivalDate(), reservationDto.getDepartureDate());
    }

    @Override
    public String findRoomTypeAndRateSelectedPage(int roomTypeId, int ratePlanId) {
        if (roomTypeId == 1 && ratePlanId == 1)
            return "double-room-standard";
        else if (roomTypeId == 1 && ratePlanId == 2)
            return "double-room-non-refundable";
        else if (roomTypeId == 2 && ratePlanId == 1)
            return "twin-room-standard";
        else if (roomTypeId == 2 && ratePlanId == 2)
            return "twin-room-non-refundable";
        else if (roomTypeId == 1 && ratePlanId == 3)
            return "double-room-members";
        else if (roomTypeId == 1 && ratePlanId == 4)
            return "double-room-members-non-refundable";
        else if (roomTypeId == 2 && ratePlanId == 3)
            return "twin-room-members";
        else if (roomTypeId == 2 && ratePlanId == 4)
            return "twin-room-members-non-refundable";

        return null;

    }
}
