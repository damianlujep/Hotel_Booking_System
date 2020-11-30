package pl.bookingsystem.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.repository.CalendarAvailabilityRepository;
import pl.bookingsystem.app.services.IHotelService;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;


@Controller
public class MainPageController {
    private final IHotelService hotelService;
    private final CalendarAvailabilityRepository cr;


    public MainPageController(IHotelService hotelService, CalendarAvailabilityRepository cr) {
        this.hotelService = hotelService;
        this.cr = cr;
    }

    @GetMapping("/")
    public ModelAndView homePageController(){
        ModelAndView homePage = new ModelAndView("/main-content/home");
        homePage.addObject("hotelSearching", new HotelSearchingDto());
        return homePage ;
    }

    @PostMapping("/searchingHandler")
    public ModelAndView searchHotelFromHandler(@ModelAttribute("hotelSearching") @Valid HotelSearchingDto hotelSearchingDto, BindingResult result){
        if (result.hasErrors()){
            return new ModelAndView("/main-content/home", "hotelSearching", hotelSearchingDto);
        }

        List<Hotel> hotelFoundList = hotelService.findHotelByCityAndArrivalDepartureDates(hotelSearchingDto);
        return new ModelAndView("/main-content/search-results", "hotelFoundList", hotelFoundList);
    }

    @ModelAttribute ("allCitiesList")
    public List<String> allCitiesList(){
        return hotelService.getAllHotelCities();
    }



}
