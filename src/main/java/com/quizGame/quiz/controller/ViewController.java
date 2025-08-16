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

    @Autowired


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
        model.addAttribute("questionId", questionId);
        return "updateQuestion";
    }

    @GetMapping("/add")
    public String showAddCategoryPage() {
        return "addCategory";
    }

    @GetMapping("/viewCategories")
    public String showViewCategoriesPage() {
        return "viewCategories";
    }

    @GetMapping("/addQuiz")
    public String showAddQuizPage() {
        return "createQuiz";
    }

    @GetMapping("/userDashboard")
    public String showUserDashboard() {
        return "user";
    }

    @GetMapping("/adminDashboard")
    public String showAdminDashboard() {
        return "admin";
    }
}
