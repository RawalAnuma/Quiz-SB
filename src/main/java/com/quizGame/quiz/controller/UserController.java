package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.User;
import com.quizGame.quiz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/user")
public class UserController{

    @Autowired
    private UserService userService;


    @PostMapping("/signup")
    public String signup(@RequestParam String fullName, @RequestParam String userName, @RequestParam String password, Model model) {
        User user = new User(fullName,userName, password);
        userService.insertUser(user);
        model.addAttribute("message", "User registered successfully!");
        return "redirect:/login"; // Redirect to login page after signup

    }

    @PostMapping("/login")
    public String login(@RequestParam String userName, @RequestParam String password, Model model) {
        User user = userService.login(userName, password);
        if(user != null){
            System.out.println("Login successful for user: " + user.getUserName());
            return "category";
        }
        else {
            System.out.println("Login failed for user: " + userName);
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }

    }

}
