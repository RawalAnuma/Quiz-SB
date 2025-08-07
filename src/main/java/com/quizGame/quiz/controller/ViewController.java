package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ViewController {

    @Autowired
    private QuestionController questionController;

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

    @GetMapping("/addQuestionView/{quizId}")
    public String showAddQuestionPage(@PathVariable int quizId, Model model) {
        model.addAttribute("quizId", quizId);
        return "insertQuestions";
    }

    @GetMapping("/updateQuestionView/{questionId}")
    public String showUpdateQuestionPage(@PathVariable int questionId, Model model){
        Question question = questionController.getQuestionById(questionId);
        model.addAttribute("question", question);
        return "updateQuestion";
    }

}
