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
@Table(name = "calendar_rates_history")
public class CalendarRateHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "origin_calendar_rates_id")
    private CalendarRate originCalendarRatesId;

    @Column(name = "standard_price")
    private BigDecimal standardPrice;

    @Column(name = "updated_on")
    private LocalDateTime updatedOn;

//    @Column(name = "updated_by")
//    private User updatedBy;

//    @PreUpdate
//    public void preUpdate(){
//        updatedOn = LocalDateTime.now();
//    }
}
