package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.CalendarRate;

public interface CalendarRateRepository extends JpaRepository<CalendarRate, Integer> {
}
