package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.RoomTypeStructure;

public interface RoomTypeStructureRepository extends JpaRepository<RoomTypeStructure, Integer> {
}
