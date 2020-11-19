package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.RatePlan;

public interface RatePlanRepository extends JpaRepository<RatePlan, Integer> {
}
