package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.bookingsystem.app.entity.RoomTypeStructure;
import pl.bookingsystem.app.entity.RoomTypeStructureHistory;

public interface RoomTypeStructureHistoryRepository extends JpaRepository<RoomTypeStructureHistory, Integer> {
    @Query(value = "SELECT *\n" +
            "FROM room_type_structure_history\n" +
            "         JOIN room_type_structure rts on rts.id = room_type_structure_history.origin_room_type_structure_id\n" +
            "WHERE room_type_structure_history.updated_on =\n" +
            "      (SELECT MAX(updated_on) FROM room_type_structure_history WHERE origin_room_type_structure_id = ?1)" , nativeQuery = true)
    RoomTypeStructureHistory findMostActualRoomPlanStructureHistory(RoomTypeStructure originRoomTypeStructureId);


}
