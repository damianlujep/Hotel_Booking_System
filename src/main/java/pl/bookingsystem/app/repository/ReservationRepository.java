package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {
}
