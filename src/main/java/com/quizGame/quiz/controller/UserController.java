package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.User;
import com.quizGame.quiz.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


    @PostMapping//("/signup")
    public String signup(@RequestParam String fullName, @RequestParam String userName, @RequestParam String password) {
        User user = new User();
        user.setFullName(fullName);
        user.setUsername(userName);
        user.setPassword(password);
        userService.insertUser(user);
        return "login"; // Redirect to login page after successful signup
    }

    @PostMapping("/login")
    public String login(@RequestParam String userName, @RequestParam String password, HttpSession session) {
        User user = userService.login(userName, password);
        if (user != null) {
            System.out.println("Login successful for user: " + userName);
            session.setAttribute("user", user);
            if (user.getAdmin()) {
                return "admin";
            } else {
                return "user";
            }
        } else {
            return "login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Invalidate the session to log out the user
        return "redirect:/login";
    }
}
