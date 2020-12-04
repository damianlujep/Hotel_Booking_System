package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.bookingsystem.app.entity.CalendarRateHistory;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RatePlanStructure;
import pl.bookingsystem.app.entity.RoomTypeStructure;

import java.time.LocalDate;
import java.util.List;

public interface CalendarRateHistoryRepository extends JpaRepository<CalendarRateHistory, Integer> {

    @Query(value = "SELECT cr.date, h.id as hotelId, t1.standard_price as price, t1.origin_calendar_rates_id as originCalendarRatesId " +
            "FROM calendar_rates_history t1 JOIN calendar_rates cr on cr.id = t1.origin_calendar_rates_id " +
            "         join hotels as h on h.id = cr.hotel_id " +
            "         JOIN\n" +
            "     (SELECT origin_calendar_rates_id, max(calendar_rates_history.updated_on) as max_dt " +
            "      FROM calendar_rates_history " +
            "      GROUP BY origin_calendar_rates_id) t2 on t1.origin_calendar_rates_id = t2.origin_calendar_rates_id and t1.updated_on = t2.max_dt " +
            "WHERE cr.date BETWEEN ?1 and ?2 AND h.id = ?3", nativeQuery = true)
    List<Object> actualStandardPriceByDateAndHotelId(LocalDate arrivalDate, LocalDate departureDate, Hotel hotelId);

    @Query(value = "select cr.date, h.id, (t1.standard_price + room_type(?1)) * rate_plan(?2) as price, t1.origin_calendar_rates_id\n" +
            "from calendar_rates_history t1\n" +
            "         JOIN calendar_rates cr on cr.id = t1.origin_calendar_rates_id\n" +
            "         join hotels as h on h.id = cr.hotel_id\n" +
            "         JOIN\n" +
            "     (SELECT origin_calendar_rates_id, max(calendar_rates_history.updated_on) as max_dt\n" +
            "      FROM calendar_rates_history\n" +
            "      group by origin_calendar_rates_id) t2 on t1.origin_calendar_rates_id = t2.origin_calendar_rates_id and t1.updated_on = t2.max_dt\n" +
            "WHERE cr.date BETWEEN ?3 and ?4 AND h.id = ?5", nativeQuery = true)
    List<Object> actualSpecialPricesByDateRoomTypeStructureAndRatePlanStructure(RoomTypeStructure origin_room_type_structure_id, RatePlanStructure origin_rate_plan_structure_id, LocalDate arrivalDate, LocalDate departureDate, Hotel hotelId);
}
