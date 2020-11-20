package pl.bookingsystem.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.bookingsystem.app.entity.*;
import pl.bookingsystem.app.repository.*;

@Controller
public class MainPageController {

    @GetMapping("/")
    public String homePageController(){
        return "/main-content/home";
    }

    @GetMapping("/login")
    public String showLoginForm(){
        return "/main-content/login-form";
    }


























    private final MemberRepository memberRepository;
    private final HotelRepository hotelRepository;
    private final CalendarAvailabilityRepository car;
    private final CalendarRateRepository crr;
    private final HotelParamRepository hpr;
    private final RatePlanStructureRepository rps;
    private final RoomTypeStructureRepository rts;

    @Autowired
    public MainPageController(MemberRepository memberRepository, HotelRepository hotelRepository, CalendarAvailabilityRepository car, CalendarRateRepository crr, HotelParamRepository hpr, RatePlanStructureRepository rps, RoomTypeStructureRepository rts) {
        this.memberRepository = memberRepository;
        this.hotelRepository = hotelRepository;
        this.car = car;
        this.crr = crr;
        this.hpr = hpr;
        this.rps = rps;
        this.rts = rts;
    }

    @GetMapping("/test")
    @ResponseBody
    public String test(){
        Member one = memberRepository.getOne(1);
        Hotel one1 = hotelRepository.getOne(2);
        CalendarAvailability one2 = car.getOne(500);
        CalendarRate one3 = crr.getOne(38);
        HotelParam one4 = hpr.getOne(10);
        RatePlanStructure one5 = rps.getOne(10);
        RoomTypeStructure one6 = rts.getOne(10);

        return one.toString() + "</br></br>"
                + one1.toString() + "</br></br>"
                + one2.toString() + "</br></br>"
                + one3.toString() + "</br></br>"
                + one4.toString() + "</br></br>"
                + one5.toString() + "</br></br>"
                + one6.toString();
    }

















}
