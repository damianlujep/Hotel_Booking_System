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
@Table(name = "rate_plan_structure_history")
public class RatePlanStructureHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "origin_rate_plan_structure_id")
    private RatePlanStructure originRatePlanStructureId;

    @Column(name = "rate_plan_increment")
    private BigDecimal ratePlanIncrement;

    @Column(name = "updated_on")
    private LocalDateTime updatedOn;

}
