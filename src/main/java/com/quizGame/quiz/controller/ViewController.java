package com.quizGame.quiz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {

    @GetMapping("/home")
    public String showHomePage() {
        return "home";
    }

    @GetMapping("/signup")
    public String showSignupPage() {
        return "signup";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

}
