package pl.bookingsystem.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.services.HotelService;

import java.util.List;


@Controller
public class MainPageController {
    private final HotelService hotelService;

    public MainPageController(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    @GetMapping("/")
    public ModelAndView homePageController(){
        ModelAndView homePage = new ModelAndView("/main-content/home");
        homePage.addObject("hotelSearching", new HotelSearchingDto());
        return homePage ;
    }

    @PostMapping("/searchingHandler")
    public ModelAndView searchHotelFromHandler(@ModelAttribute("hotelSearching") HotelSearchingDto hotelSearchingDto){
        ModelAndView searchHotelPage = new ModelAndView("/main-content/home");

        return searchHotelPage;
    }

    @GetMapping("/login")
    public String showLoginForm(){
        return "/main-content/login-form";
    }


    @GetMapping("/registration")
    public String showRegistrationForm(){
        return "/main-content/registration-form";
    }

    @ModelAttribute ("allCitiesList")
    public List<String> allCitiesList(){
        return hotelService.getAllHotelCities();
    }


}
