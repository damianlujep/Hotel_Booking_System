package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import pl.bookingsystem.app.entity.CalendarAvailability;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RoomType;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.List;

public interface CalendarAvailabilityRepository extends JpaRepository<CalendarAvailability, Integer> {
    @Query("SELECT DISTINCT c.hotelId FROM CalendarAvailability c WHERE c.hotelId.city = ?1 AND c.availableRooms > 0 AND (c.date BETWEEN ?2 AND ?3)")
    List<Hotel> findHotelByCityAndArrivalDepartureDates(String city, LocalDate arrivalDate, LocalDate departureDate);

    @Query("SELECT DISTINCT c.roomTypeId FROM CalendarAvailability c WHERE c.hotelId = ?1 AND c.availableRooms > 0 AND (c.date BETWEEN ?2 AND ?3)")
    List<RoomType> findAllRoomTypesAvailableByDate(Hotel hotelId, LocalDate arrivalDate, LocalDate departureDate);

    @Modifying
    @Transactional
    @Query("UPDATE CalendarAvailability SET availableRooms = availableRooms - 1 WHERE hotelId = ?1 AND date = ?2 AND roomTypeId = ?3")
    void updateCalendarAvailabilityByHotelDateAndRoomType(Hotel hotelId, LocalDate date, RoomType roomTypeId);

}
