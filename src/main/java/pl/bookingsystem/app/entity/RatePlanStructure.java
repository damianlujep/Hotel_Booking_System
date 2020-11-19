package pl.bookingsystem.app.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Data
@NoArgsConstructor
@ToString
@Table(name = "rate_plan_structure")
public class RatePlanStructure {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotelId;

    @ManyToOne
    @JoinColumn(name = "room_type_id")
    private RoomType roomTypeId;

    @ManyToOne
    @JoinColumn(name = "rate_plan_id")
    private RatePlan ratePlan;

    @Column(name = "rate_plan_increment")
    private BigDecimal ratePlanIncrement;


}
