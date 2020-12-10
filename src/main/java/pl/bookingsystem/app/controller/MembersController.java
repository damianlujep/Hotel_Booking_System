package pl.bookingsystem.app.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.PayAndConfirmBookingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.services.IHotelService;
import pl.bookingsystem.app.services.IMemberService;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
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
    public ModelAndView paymentFormNonMembers(@RequestParam String roomAndRateKey, @RequestParam BigDecimal avgPricePerNight, HttpSession session){
        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        newBooking.setSelectedRateAndRoomKey(roomAndRateKey);

        Map<String, List<RoomAndRatePriceDto>> finalRoomAndRatePriceList = hotelService.getFinalRoomAndRatePriceList(newBooking, roomAndRateKey);
        newBooking.setRoomAndRatePriceList(finalRoomAndRatePriceList);

        ModelAndView redirectionToForm = new ModelAndView("redirect:../../booking/confirmationForm");

        newBooking.setAvgPricePerNight(avgPricePerNight);
        BigDecimal totalPrice = hotelService.calculateTotalRoomRevenue(newBooking);
        newBooking.setTotalPrice(totalPrice);

        session.setAttribute("newBookingInProcess", newBooking);

        return  redirectionToForm;
    }
}
