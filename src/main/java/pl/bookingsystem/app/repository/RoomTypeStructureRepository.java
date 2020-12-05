package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RoomType;
import pl.bookingsystem.app.entity.RoomTypeStructure;

public interface RoomTypeStructureRepository extends JpaRepository<RoomTypeStructure, Integer> {
    RoomTypeStructure findByHotelIdAndRoomTypeId(Hotel hotelId, RoomType roomTypeId);
}
