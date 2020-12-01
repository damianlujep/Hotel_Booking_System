package pl.bookingsystem.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.services.IHotelService;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

@Controller
@RequestMapping("/booking")
public class BookingController {
    private final IHotelService hotelService;

    @Autowired
    public BookingController(IHotelService hotelService) {
        this.hotelService = hotelService;
    }

    @PostMapping("/results")
    public ModelAndView searchHotelFromHandler(@ModelAttribute("hotelSearching") @Valid HotelSearchingDto hotelSearchingDto, BindingResult result){
        if (result.hasErrors()){
            return new ModelAndView("redirect: /../..", "hotelSearching", hotelSearchingDto);
        }

        List<Hotel> hotelFoundList = hotelService.findHotelByCityAndArrivalDepartureDates(hotelSearchingDto);
        ModelAndView results = new ModelAndView("booking/search-results", "hotelFoundList", hotelFoundList);
        HotelSearchingDto modifySearchDto = new HotelSearchingDto();
        modifySearchDto.setCity(hotelSearchingDto.getCity());
        results.addObject("hotelSearching",modifySearchDto);
        return results;
    }

    @GetMapping("/hotel/{hotelId}")
    public ModelAndView displayHotelSelectedPage(@PathVariable int hotelId){
        String hotelPagePath = hotelService.findHotelSelectedPage(hotelId);
        BigDecimal lowestHotelRate = hotelService.findLowestHotelRate(hotelId);

        return new ModelAndView("/booking/hotel-pages/" + hotelPagePath, "lowestHotelRate",lowestHotelRate.setScale(2, RoundingMode.HALF_UP));
    }

    @GetMapping("/roomsAvailable/{hotelId}")
    public ModelAndView searchAndShowRoomsAvailable(@PathVariable int hotelId){
        return new ModelAndView("booking/rooms-available-results");

    }

    @GetMapping("/roomAndRate/{roomTypeId}/{ratePlanId}")
    public ModelAndView displayRoomAndRateTypePage(@PathVariable int roomTypeId, @PathVariable int ratePlanId){
        return new ModelAndView("booking/room-pages/double-room-members");

    }

    @ModelAttribute ("allCitiesList")
    public List<String> allCitiesList(){
        return hotelService.getAllHotelCities();
    }


}
