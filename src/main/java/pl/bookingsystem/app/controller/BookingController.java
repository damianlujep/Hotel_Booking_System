package pl.bookingsystem.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.dto.ReservationDto;
import pl.bookingsystem.app.dto.RoomAndRatePriceDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.entity.RoomType;
import pl.bookingsystem.app.services.IHotelService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/booking")
public class BookingController {
    private final IHotelService hotelService;

    @Autowired
    public BookingController(IHotelService hotelService) {
        this.hotelService = hotelService;
    }

    @PostMapping("/results")
    public ModelAndView searchHotelFromHandler(@ModelAttribute("hotelSearching") @Valid HotelSearchingDto hotelSearchingDto, BindingResult result, HttpSession session){
        if (result.hasErrors()){
            return new ModelAndView("redirect: /../..", "hotelSearching", hotelSearchingDto);
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
    public ModelAndView displayRoomAndRateTypePage(@PathVariable int roomTypeId, @PathVariable int ratePlanId){
        String roomTypeAndRateSelectedPage = hotelService.findRoomTypeAndRateSelectedPage(roomTypeId, ratePlanId);
        return new ModelAndView("booking/room-pages/" + roomTypeAndRateSelectedPage);

    }

    @ModelAttribute ("allCitiesList")
    public List<String> allCitiesList(){
        return hotelService.getAllHotelCities();
    }


}
