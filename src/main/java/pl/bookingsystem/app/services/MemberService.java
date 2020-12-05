package pl.bookingsystem.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.bookingsystem.app.dto.MemberDto;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.error.UserAlreadyExistException;
import pl.bookingsystem.app.repository.MemberRepository;

@Transactional
@Service
public class MemberService implements IMemberService{

    private final MemberRepository memberRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public MemberService(MemberRepository memberRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.memberRepository = memberRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }


    @Override
    public Member registerNewMember(MemberDto memberDto) throws UserAlreadyExistException {
        if (emailExists(memberDto.getEmail())){
            throw new UserAlreadyExistException("Exist an account with that email: " + memberDto.getEmail());
        }

        final Member member = new Member();
        member.setName(memberDto.getFirstName());
        member.setLastName(memberDto.getLastName());
        member.setEmail(memberDto.getEmail());
        member.setPassword(bCryptPasswordEncoder.encode(memberDto.getPassword()));
        member.setPhone(memberDto.getPhone());
        member.setDayOfBirth(memberDto.getDayOfBirth());
        member.setRole("MEMBER");

        return memberRepository.save(member);    }

    @Override
    public Member findMemberMyEmail(String email) {
        return memberRepository.findByEmail(email);
    }

    private boolean emailExists(String email){
        return memberRepository.findByEmail(email) != null;
    }
}
