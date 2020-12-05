package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RatePlan;
import pl.bookingsystem.app.entity.RatePlanStructure;

public interface RatePlanStructureRepository extends JpaRepository<RatePlanStructure, Integer> {
    RatePlanStructure findByHotelIdAndRatePlan(Hotel hotelId, RatePlan ratePlanId);
}
