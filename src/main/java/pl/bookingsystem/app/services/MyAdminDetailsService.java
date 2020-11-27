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
public class MyAdminDetailsService implements UserDetailsService {

    private final MemberRepository memberRepository;

    @Autowired
    public MyAdminDetailsService(MemberRepository memberRepository) {

        this.memberRepository = memberRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Member currentMember = memberRepository.findByEmail(email);
        if (currentMember == null){
            throw new UsernameNotFoundException("Member not found");
        }

        String memberRole = currentMember.getRole();

        List<String> roles = new ArrayList<>();
//        List<AdminRoles> allByAdmin_email = adminRolesRepository.findAllByAdmin_Email(email);
//        for (AdminRoles a : allByAdmin_email){
            roles.add(memberRole);
//        }

        List<GrantedAuthority> grantList = new ArrayList<>();
        if (memberRole != null){
                GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + memberRole);
        }

        return new User(currentMember.getEmail(),currentMember.getPassword(),grantList);
    }
}
