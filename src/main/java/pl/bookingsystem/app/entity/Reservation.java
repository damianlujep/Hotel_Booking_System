package pl.bookingsystem.app.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@ToString
@Table(name = "reservations")
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "rate_plan_structure_history_id")
    private RatePlanStructureHistory ratePlanStructureHistory;

    @ManyToOne
    @JoinColumn(name = "room_type_structure_history_id")
    private RoomTypeStructureHistory roomTypeStructureHistory;

    @Column(name = "arrival_date")
    private LocalDate arrivalDate;

    @Column(name = "departure_date")
    private LocalDate departureDate;

    @Column(name = "reserved_on")
    private LocalDateTime reservedOn;

    @Column(name = "rooms_number")
    private int roomsNumber;

    @Column(name = "room_revenue")
    private BigDecimal roomRevenue;

    @Column(name = "extra_revenue")
    private BigDecimal extraRevenue;

    @ManyToOne
    @JoinColumn(name = "member_id")
    private Member memberId;

    private String status;

    @Column(name = "reservation_no")
    private String reservationNo;

    @PrePersist
    public void prePersist() {
        reservedOn = LocalDateTime.now();
        roomsNumber = 1;
        status = "CONFIRMED";
    }

}
