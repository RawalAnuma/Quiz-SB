package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Category;
import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.model.User;
import com.quizGame.quiz.service.QuizService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/quizzes")
public class QuizController {

    @Autowired
    private QuizService quizService;

    @Autowired
    private CategoryController categoryController;

    @PostMapping("/addQuiz")
    public void createQuiz(@RequestParam String quizName, @RequestParam String quizDescription, @RequestParam int noOfQuestionsToPlay, @RequestParam int categoryId, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Category category = categoryController.getCategoryById(categoryId);
        Quiz quiz = new Quiz();
        quiz.setQuizName(quizName);
        quiz.setQuizDescription(quizDescription);
        quiz.setNoOfQuestionsToPlay(noOfQuestionsToPlay);
        quiz.setCategory(category);
        quiz.setUser(user);
        quizService.insertQuiz(quiz);
    }
}
