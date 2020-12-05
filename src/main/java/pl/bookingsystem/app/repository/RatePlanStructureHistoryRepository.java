package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.bookingsystem.app.entity.RatePlanStructure;
import pl.bookingsystem.app.entity.RatePlanStructureHistory;

public interface RatePlanStructureHistoryRepository extends JpaRepository<RatePlanStructureHistory, Integer> {
    @Query(value = "SELECT *\n" +
            "FROM rate_plan_structure_history\n" +
            "         JOIN rate_plan_structure rts on rts.id = rate_plan_structure_history.origin_rate_plan_structure_id\n" +
            "WHERE rate_plan_structure_history.updated_on =\n" +
            "      (SELECT MAX(updated_on) FROM rate_plan_structure_history WHERE origin_rate_plan_structure_id = ?1) ", nativeQuery = true)
    RatePlanStructureHistory findMostActualRatePlanStructureHistory(RatePlanStructure originRatePlanStructureId);

}
