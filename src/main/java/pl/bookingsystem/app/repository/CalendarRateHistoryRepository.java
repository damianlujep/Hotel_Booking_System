package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.CalendarRateHistory;

public interface CalendarRateHistoryRepository extends JpaRepository<CalendarRateHistory, Integer> {

}
