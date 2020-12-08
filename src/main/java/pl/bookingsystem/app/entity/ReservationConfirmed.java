package pl.bookingsystem.app.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.UUID;

@Entity
@Data
@NoArgsConstructor
@ToString
@Table(name = "reservations_confirmed")
public class ReservationConfirmed {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "reservation_no")
    private String reservationNo;

    @Column(name = "stay_date")
    private LocalDate stayDate;

    @Column(name = "revenue")
    private BigDecimal revenue;

    @ManyToOne
    @JoinColumn(name = "calendar_rates_history_id")
    private CalendarRateHistory calendarRateHistoryId;

    @ManyToOne
    @JoinColumn(name = "member_id")
    private Member memberId;


//    @PrePersist
//    public void prePersist() {
//        reservationNo = UUID.randomUUID().toString();
//    }


}
