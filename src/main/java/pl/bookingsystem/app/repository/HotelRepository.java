package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.Hotel;

public interface HotelRepository extends JpaRepository<Hotel, Integer> {
}
