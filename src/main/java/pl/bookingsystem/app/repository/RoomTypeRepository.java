package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.RoomType;

public interface RoomTypeRepository extends JpaRepository<RoomType, Integer> {
    RoomType findByName (String roomTypeName);
}
