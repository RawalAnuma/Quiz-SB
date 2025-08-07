package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Question;
import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/questions")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private QuizController quizController;


    @PostMapping("/addQuestion")
        public String insertQuestion(@RequestParam int quizId,
                                   @RequestParam String title,
                                   @RequestParam String option1,
                                   @RequestParam String option2,
                                   @RequestParam String option3,
                                   @RequestParam String option4,
                                   @RequestParam int correctOption) {
        Quiz quiz = quizController.getQuizById(quizId);
        Question question = new Question();
        question.setTitle(title);
        question.setOption1(option1);
        question.setOption2(option2);
        question.setOption3(option3);
        question.setOption4(option4);
        question.setCorrectOption(correctOption);
        question.setQuiz(quiz);
        questionService.insertQuestion(question);
        return "redirect:/questions/getQuestions/" + quizId;
    }

    @PutMapping("/updateQuestion/{questionId}")
    public String updateQuestion(@PathVariable int questionId,
                                 @RequestParam String title,
                                 @RequestParam String option1,
                                 @RequestParam String option2,
                                 @RequestParam String option3,
                                 @RequestParam String option4,
                                 @RequestParam int correctOption) {
        Question question = getQuestionById(questionId);
        question.setTitle(title);
        question.setOption1(option1);
        question.setOption2(option2);
        question.setOption3(option3);
        question.setOption4(option4);
        question.setCorrectOption(correctOption);
        questionService.insertQuestion(question);
        return "redirect:/questions/getQuestions/" + question.getQuiz().getQuizId();
    }


    @GetMapping("/getQuestions/{quizId}")
    public String getQuestionsByQuizID(@PathVariable int quizId, Model model){
        Quiz quiz = quizController.getQuizById(quizId);
        List<Question> questions = questionService.getQuestionsByQuizId(quiz);
        model.addAttribute("questions", questions);
        return "questions";
    }












    public Question getQuestionById(int questionId) {
        return questionService.getQuestionById(questionId);

    }

}
