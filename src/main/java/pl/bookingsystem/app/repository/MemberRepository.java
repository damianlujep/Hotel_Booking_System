package pl.bookingsystem.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookingsystem.app.entity.Member;

public interface MemberRepository extends JpaRepository<Member, Integer> {
}
