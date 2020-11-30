package pl.bookingsystem.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import pl.bookingsystem.app.dto.HotelSearchingDto;
import pl.bookingsystem.app.entity.Hotel;
import pl.bookingsystem.app.services.IHotelService;

import javax.validation.Valid;
import java.util.List;

@Controller
public class MainPageController {
    private final IHotelService hotelService;

    public MainPageController(IHotelService hotelService) {
        this.hotelService = hotelService;
    }

    @GetMapping("/")
    public ModelAndView homePageController(){
        ModelAndView homePage = new ModelAndView("/main-content/home");
        homePage.addObject("hotelSearching", new HotelSearchingDto());
        return homePage ;
    }

    @GetMapping("/login")
    public String showLoginForm(){
        return "/main-content/login-form";
    }

    @ModelAttribute ("allCitiesList")
    public List<String> allCitiesList(){
        return hotelService.getAllHotelCities();
    }
}
