package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.CalendarAvailability;

public interface CalendarAvailabilityRepository extends JpaRepository<CalendarAvailability, Integer> {
}
