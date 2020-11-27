package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.repository.MemberRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class MyMemberDetailsService implements UserDetailsService {

    private final MemberRepository memberRepository;

    @Autowired
    public MyMemberDetailsService(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Member currentMember = memberRepository.findByEmail(email);
        if (currentMember == null){
            throw new UsernameNotFoundException("Member not found");
        }

        String memberRole = currentMember.getRole();

        List<GrantedAuthority> grantList = new ArrayList<>();
        if (memberRole != null){
                GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + memberRole);
                grantList.add(authority);
        }

        return new User(currentMember.getEmail(), currentMember.getPassword(), grantList);
    }
}
