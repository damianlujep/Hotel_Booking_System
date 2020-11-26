package pl.bookingsystem.app.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@ToString
@Table(name = "room_type_structure_history")
public class RoomTypeStructureHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "origin_room_type_structure_id")
    private RoomTypeStructure originRoomTypeStructureId;

    @Column(name = "room_type_increment")
    private BigDecimal roomTypeIncrement;

    @Column(name = "updated_on")
    private LocalDateTime updatedOn;
}
