package pl.bookingsystem.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.MemberDto;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.error.UserAlreadyExistException;
import pl.bookingsystem.app.services.IMemberService;

import javax.validation.Valid;

@Controller
public class RegistrationController {
    private final IMemberService memberService;

    @Autowired
    public RegistrationController(IMemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping("/registration")
    public ModelAndView showRegistrationForm(){
        return new ModelAndView("/main-content/registration-form", "newMember", new MemberDto());
    }

    @PostMapping("/registration")
    public ModelAndView registrationFormHandler(@ModelAttribute("newMember") @Valid MemberDto memberDto, BindingResult result){
        Member memberRegistered;

        if (result.hasErrors()){
            return new ModelAndView("/main-content/registration-form", "newMember", memberDto);
        }

        try{
            memberRegistered = memberService.registerNewMember(memberDto);
        } catch (UserAlreadyExistException e){
            ModelAndView mav = new ModelAndView("/main-content/registration-form", "newMember", memberDto);
            mav.addObject("message", "We have already a Member with the email " + memberDto.getEmail());
            return mav;
        }

        return new ModelAndView("redirect: login", "memberRegistered", memberRegistered);

    }


}
