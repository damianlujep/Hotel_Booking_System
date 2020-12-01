package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.RoomTypeStructure;
import pl.bookingsystem.app.entity.RoomTypeStructureHistory;

public interface RoomTypeStructureHistoryRepository extends JpaRepository<RoomTypeStructureHistory, Integer> {
}
