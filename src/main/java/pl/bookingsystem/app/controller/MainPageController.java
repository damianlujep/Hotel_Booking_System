package pl.bookingsystem.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainPageController {

    @GetMapping("/")
    public String homePageController(){
        return "/main-content/home";
    }

    @GetMapping("/login")
    public String showLoginForm(){
        return "/main-content/login-form";
    }


    @GetMapping("/registration")
    public String showRegistrationForm(){
        return "/main-content/registration-form";
    }
}
