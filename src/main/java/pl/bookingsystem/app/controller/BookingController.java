package pl.bookingsystem.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.PayAndConfirmBookingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.*;
import pl.bookingsystem.app.services.IEmailService;
import pl.bookingsystem.app.services.IHotelService;
import pl.bookingsystem.app.services.IMemberService;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/booking")
public class BookingController {
    private final IHotelService hotelService;
    private final IMemberService memberService;
    private final IEmailService emailService;

    @Autowired
    public BookingController(IHotelService hotelService, IMemberService memberService, IEmailService emailService) {
        this.hotelService = hotelService;
        this.memberService = memberService;
        this.emailService = emailService;
    }

    @PostMapping("/results")
    public ModelAndView searchHotelFromHandler(@ModelAttribute("hotelSearching") @Valid HotelSearchingDto hotelSearchingDto, BindingResult result, HttpSession session){
        if (result.hasErrors()){
            return new ModelAndView("redirect:/../..", "hotelSearching", hotelSearchingDto);
        }

        List<Hotel> hotelFoundList = hotelService.findHotelByCityAndArrivalDepartureDates(hotelSearchingDto);
        ModelAndView results = new ModelAndView("booking/search-results", "hotelFoundList", hotelFoundList);
        HotelSearchingDto modifySearchDto = new HotelSearchingDto();
        modifySearchDto.setCity(hotelSearchingDto.getCity());

        ReservationDto newBooking = new ReservationDto();
        newBooking.setArrivalDate(hotelSearchingDto.getArrivalDate());
        newBooking.setDepartureDate(hotelSearchingDto.getDepartureDate());
        newBooking.setCity(hotelSearchingDto.getCity());
        newBooking.setGuestsQuantity(hotelSearchingDto.getGuestsQuantity());
        session.setAttribute("newBookingInProcess", newBooking);

        results.addObject("hotelSearching",modifySearchDto);
        return results;
    }

    @GetMapping("/hotel/{hotelId}")
    public ModelAndView displayHotelSelectedPage(@PathVariable int hotelId, HttpSession session){
        String hotelPagePath = hotelService.findHotelSelectedPage(hotelId);

        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        BigDecimal lowestHotelRate = hotelService.findLowestHotelRate(hotelId, newBooking.getArrivalDate());

        newBooking.setHotel(hotelService.findHotelById(hotelId));
        session.setAttribute("newBookingInProcess", newBooking);

        return new ModelAndView("/booking/hotel-pages/" + hotelPagePath, "lowestHotelRate",lowestHotelRate.setScale(2, RoundingMode.HALF_UP));
    }

    @GetMapping("/roomsAvailable")
    public ModelAndView searchAndShowRoomsAvailable(HttpSession session){
        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        List<RoomType> allRoomTypesAvailableByDate = hotelService.findAllRoomTypesAvailableByDate(newBooking);
        HotelSearchingDto searchingDto = new HotelSearchingDto();
        searchingDto.setCity(newBooking.getCity());

        Map<String, List<RoomAndRatePriceDto>> ratesPricesMapped = hotelService.roomAndRatesPricesMapped(newBooking);
        Map<String, BigDecimal> averagePrices = hotelService.averagePricesPerRoomPerRate(ratesPricesMapped);
        session.setAttribute("averagePrices", averagePrices);

        ModelAndView searchResults = new ModelAndView("booking/rooms-available-results", "roomsAvailableList", allRoomTypesAvailableByDate );
        searchResults.addObject("roomsSearching", searchingDto);
        searchResults.addObject("averagePrices", averagePrices);
        return searchResults;

    }

    @PostMapping("/updateArrivalAndDepartureDates")
    public ModelAndView updateArrivalAndDepartureDates(@ModelAttribute("roomsSearching") @Valid HotelSearchingDto hotelSearchingDto, BindingResult result, HttpSession session){
        if (result.hasErrors()){
            return new ModelAndView("redirect:roomsAvailable", "roomsSearching", hotelSearchingDto);
        }

        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        newBooking.setArrivalDate(hotelSearchingDto.getArrivalDate());
        newBooking.setDepartureDate(hotelSearchingDto.getDepartureDate());
        newBooking.setGuestsQuantity(hotelSearchingDto.getGuestsQuantity());

        session.setAttribute("newBookingInProcess", newBooking);

        return new ModelAndView("redirect:roomsAvailable");
    }

    @GetMapping("/roomAndRate/{roomTypeId}/{ratePlanId}")
    public ModelAndView displayRoomAndRateTypePage(@PathVariable int roomTypeId, @PathVariable int ratePlanId, HttpSession session){
        String roomTypeAndRateSelectedPage = hotelService.findRoomTypeAndRateSelectedPage(roomTypeId, ratePlanId);
        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");

        RoomTypeStructureHistory roomTypeStructureHistory = hotelService.mostActualRoomTypeStructure(newBooking, roomTypeId);
        RatePlanStructureHistory ratePlanStructureHistory = hotelService.mostActualRatePlanStructure(newBooking, ratePlanId);

        newBooking.setMostActualRoomTypeStructureHistory(roomTypeStructureHistory);
        newBooking.setMostActualRatePlanStructureHistory(ratePlanStructureHistory);

        session.setAttribute("newBookingInProcess", newBooking);

        return new ModelAndView("booking/room-pages/" + roomTypeAndRateSelectedPage);

    }

    //Payment Post method for members is on MembersController
    @PostMapping("/payment")
    public ModelAndView paymentFormNonMembers(@RequestParam String roomAndRateKey, @RequestParam BigDecimal avgPricePerNight, HttpSession session){
        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        newBooking.setSelectedRateAndRoomKey(roomAndRateKey);

        Map<String, List<RoomAndRatePriceDto>> finalRoomAndRatePriceList = hotelService.getFinalRoomAndRatePriceList(newBooking, roomAndRateKey);
        newBooking.setRoomAndRatePriceList(finalRoomAndRatePriceList);

        newBooking.setAvgPricePerNight(avgPricePerNight);
        BigDecimal totalPrice = hotelService.calculateTotalRoomRevenue(newBooking);
        newBooking.setTotalPrice(totalPrice);

        session.setAttribute("newBookingInProcess", newBooking);

        return new ModelAndView("redirect:confirmationForm");
    }

    @GetMapping("/confirmationForm")
    public ModelAndView confirmationForm (HttpSession session, Authentication auth){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication instanceof UsernamePasswordAuthenticationToken) {
            String email = auth.getName();
            Member currentMember = memberService.findMemberMyEmail(email);
            session.setAttribute("currentAdminLogged", currentMember);
        }

        PayAndConfirmBookingDto paymentConfirmationDto = new PayAndConfirmBookingDto();
        Member currentMember = (Member) session.getAttribute("currentAdminLogged");

        if (currentMember != null){
            paymentConfirmationDto.setPayerFirstName(currentMember.getName());
            paymentConfirmationDto.setPayerLastName(currentMember.getLastName());
            paymentConfirmationDto.setPayerEmail(currentMember.getEmail());
            paymentConfirmationDto.setPayerDateOfBirth(currentMember.getDayOfBirth());
            paymentConfirmationDto.setPayerPhoneNumber(currentMember.getPhone());
        }

        ModelAndView paymentForm = new ModelAndView("booking/payment-form", "payAndConfirmForm", paymentConfirmationDto);

        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        String roomTypeName = newBooking.getMostActualRoomTypeStructureHistory().getOriginRoomTypeStructureId().getRoomTypeId().getName();
        paymentForm.addObject("selectedRoomType", roomTypeName);

        session.setAttribute("newBookingInProcess", newBooking);

        boolean isNonRefOffer = hotelService.nonRefOfferChecker(newBooking.getSelectedRateAndRoomKey());
        paymentForm.addObject("isNonRefOffer", isNonRefOffer);

        return paymentForm;
    }

    @PostMapping("/confirmReservation")
    public ModelAndView bookingConfirmationHandler(@ModelAttribute("payAndConfirmForm") @Valid PayAndConfirmBookingDto payAndConfirmBookingDto, BindingResult result, HttpSession session) throws MessagingException, UnsupportedEncodingException {
        if (result.hasErrors()){
            return new ModelAndView("booking/payment-form", "payAndConfirmForm", payAndConfirmBookingDto);
        }

        ReservationDto newBooking = (ReservationDto) session.getAttribute("newBookingInProcess");
        Member currentAdminLogged = (Member) session.getAttribute("currentAdminLogged");

        if (currentAdminLogged != null){
            newBooking.setMember(currentAdminLogged);
        }

        hotelService.confirmReservation(newBooking);
        emailService.sendHtmlMessage(payAndConfirmBookingDto.getPayerEmail(), newBooking);

        return new ModelAndView("redirect:bookingConfirmation");
    }

    @GetMapping("/bookingConfirmation")
    public ModelAndView bookingFinalConfirmation(){
        return new ModelAndView("booking/booking-confirmation");
    }


    @ModelAttribute ("allCitiesList")
    public List<String> allCitiesList(){
        return hotelService.getAllHotelCities();
    }

}
