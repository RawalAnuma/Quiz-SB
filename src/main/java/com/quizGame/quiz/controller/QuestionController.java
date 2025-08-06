package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Question;
import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/questions")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private QuizController quizController;

    @GetMapping("/getQuestions/{quizId}")
    public String getQuestionsByQuizID(@PathVariable int quizId, Model model){
        Quiz quiz = quizController.getQuizById(quizId);
        List<Question> questions = questionService.getQuestionsByQuizId(quiz);
        model.addAttribute("questions", questions);
        return "questions";
    }

}
