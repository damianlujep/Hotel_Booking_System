package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.RatePlanStructure;
import pl.bookingsystem.app.entity.RatePlanStructureHistory;

public interface RatePlanStructureHistoryRepository extends JpaRepository<RatePlanStructureHistory, Integer> {
}
