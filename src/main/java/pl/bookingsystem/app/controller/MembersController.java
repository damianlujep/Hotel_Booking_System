package pl.bookingsystem.app.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.repository.MemberRepository;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/members")
public class MembersController {
    private final MemberRepository memberRepository;

    public MembersController(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    @PostMapping("/booking/payment")
    public String paymentFormMembers(Authentication auth, HttpSession session){
        String email = auth.getName();
        Member currentMember = memberRepository.findByEmail(email);
        session.setAttribute("currentAdminLogged", currentMember);

        return "/booking/payment-form";
    }
}
