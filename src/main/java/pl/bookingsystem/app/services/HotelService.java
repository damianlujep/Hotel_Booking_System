package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.repository.CalendarAvailabilityRepository;
import pl.bookingsystem.app.repository.HotelRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@Transactional
public class HotelService implements IHotelService {
    private final HotelRepository hotelRepository;
    private final CalendarAvailabilityRepository calendarAvailabilityRepository;

    @Autowired
    public HotelService(HotelRepository hotelRepository, CalendarAvailabilityRepository calendarAvailabilityRepository) {
        this.hotelRepository = hotelRepository;
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
                search.getCity(), search.getArrivalDate(), search.getDepartureDate());
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
                case "Hotel Warszawa":
                    bookingHotelPages.put(hotel, "hotel-warszawa-booking-page");
                    break;
                case "Hotel Wrocław":
                    bookingHotelPages.put(hotel, "hotel-wroclaw-booking-page");
                    break;
            }
        }

        return bookingHotelPages.get(hotelSelected);
    }
}
