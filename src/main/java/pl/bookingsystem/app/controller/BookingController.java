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
        return new ModelAndView("/main-content/search-results", "hotelFoundList", hotelFoundList);
    }

    @GetMapping("/hotel/{id}")
    public ModelAndView displayHotelSelectedPage(@PathVariable int id){
        String hotelPagePath = hotelService.findHotelSelectedPage(id);

        return new ModelAndView("/hotel-pages/" + hotelPagePath);
    }

}
