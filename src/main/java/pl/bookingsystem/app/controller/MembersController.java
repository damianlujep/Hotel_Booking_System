package pl.bookingsystem.app.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.services.IHotelService;
import pl.bookingsystem.app.services.IMemberService;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/members")
public class MembersController {
    private final IMemberService memberService;
    private final IHotelService hotelService;

    public MembersController(IMemberService memberService, IHotelService hotelService) {
        this.memberService = memberService;
        this.hotelService = hotelService;
    }

    @PostMapping("/booking/payment")
    public String paymentFormMembers(Authentication auth, HttpSession session, @RequestParam String roomAndRateKey){
        String email = auth.getName();
        Member currentMember = memberService.findMemberMyEmail(email);
        session.setAttribute("currentAdminLogged", currentMember);

        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        newBooking.setSelectedRateAndRoomKey(roomAndRateKey);

        Map<String, List<RoomAndRatePriceDto>> finalRoomAndRatePriceList = hotelService.getFinalRoomAndRatePriceList(newBooking, roomAndRateKey);
        newBooking.setRoomAndRatePriceList(finalRoomAndRatePriceList);

        session.setAttribute("newBookingInProcess", newBooking);

        return "/booking/payment-form";
    }
}
