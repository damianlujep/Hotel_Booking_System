package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.ReservationConfirmed;

public interface ReservationConfirmedRepository extends JpaRepository<ReservationConfirmed, Integer> {
}
