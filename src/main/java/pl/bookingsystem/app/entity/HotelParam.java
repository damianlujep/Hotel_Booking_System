package pl.bookingsystem.app.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@ToString
@Table(name = "hotel_params")
public class HotelParam {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotelId;

    @ManyToOne
    @JoinColumn(name = "room_type_id")
    private RoomType roomTypeId;

    @Column(name = "room_type_quantity")
    private int roomTypeQuantity;

}
