package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.HotelParam;

public interface HotelParamRepository extends JpaRepository<HotelParam, Integer> {
}
