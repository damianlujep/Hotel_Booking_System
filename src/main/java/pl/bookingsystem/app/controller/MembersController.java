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
    public ModelAndView paymentFormMembers(Authentication auth, HttpSession session, @RequestParam String roomAndRateKey, @RequestParam BigDecimal avgPricePerNight){
        ModelAndView paymentForm = new ModelAndView("booking/payment-form", "payAndConfirmForm", new PayAndConfirmBookingDto());
        String email = auth.getName();
        Member currentMember = memberService.findMemberMyEmail(email);
        session.setAttribute("currentAdminLogged", currentMember);

        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        newBooking.setSelectedRateAndRoomKey(roomAndRateKey);
        String roomTypeNameMembers = newBooking.getMostActualRoomTypeStructureHistory().getOriginRoomTypeStructureId().getRoomTypeId().getName();
        paymentForm.addObject("selectedRoomType", roomTypeNameMembers);

        Map<String, List<RoomAndRatePriceDto>> finalRoomAndRatePriceList = hotelService.getFinalRoomAndRatePriceList(newBooking, roomAndRateKey);
        newBooking.setRoomAndRatePriceList(finalRoomAndRatePriceList);

        BigDecimal bigDecimal = hotelService.calculateTotalRoomRevenue(newBooking);
        paymentForm.addObject("totalPrice", bigDecimal);
        paymentForm.addObject("avgPricePerNight", avgPricePerNight);

        boolean isNonRefOffer = hotelService.nonRefOfferChecker(newBooking.getSelectedRateAndRoomKey());
        paymentForm.addObject("isNonRefOffer", isNonRefOffer);

        session.setAttribute("newBookingInProcess", newBooking);
        return paymentForm;
    }
}
