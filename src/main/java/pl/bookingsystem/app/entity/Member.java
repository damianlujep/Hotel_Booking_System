package pl.bookingsystem.app.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Data
@NoArgsConstructor
@ToString
@Table(name = "members")
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    @Column(name = "last_name", length = 45)
    private String lastName;

    @Column(length = 45, unique = true)
    private String email;

    private String password;

    @Column(length = 45)
    private String phone;

    @Column(name = "day_of_birth")
    private LocalDate dayOfBirth;

    @Column(length = 25)
    private String role;
}
