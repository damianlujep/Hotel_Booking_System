package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.bookingsystem.app.entity.CalendarRate;
import pl.bookingsystem.app.entity.Hotel;

import java.math.BigDecimal;
import java.time.LocalDate;

public interface CalendarRateRepository extends JpaRepository<CalendarRate, Integer> {

    @Query(value = "SELECT standard_price FROM calendar_rates WHERE hotel_id = ?1 AND date >= ?2  ORDER BY standard_price LIMIT 1;", nativeQuery = true)
    BigDecimal lowestHotelRate(Hotel currentHotel, LocalDate date);

}
