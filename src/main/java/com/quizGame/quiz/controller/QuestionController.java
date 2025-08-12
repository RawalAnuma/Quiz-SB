package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Question;
import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.service.QuestionService;
import com.quizGame.quiz.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/questions")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

   @Autowired
   private QuizService quizService;


    @PostMapping//("/addQuestion")
        public String insertQuestion(@RequestParam int quizId,
                                   @RequestParam String title,
                                   @RequestParam String option1,
                                   @RequestParam String option2,
                                   @RequestParam String option3,
                                   @RequestParam String option4,
                                   @RequestParam int correctOption) {
        Quiz quiz = quizService.getQuizById(quizId)
                .orElseThrow(() -> new RuntimeException("Quiz not found with id: " + quizId));

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
        questionService.editQuestion(question);
        return "redirect:/questions/getQuestions/" + question.getQuiz().getQuizId();
    }

    public List<Question> getQuestionsByQuizId(int quizId){
        Quiz quiz = quizService.getQuizById(quizId).orElseThrow(() -> new RuntimeException("Quiz not found with id: " + quizId));
        return questionService.getQuestionsByQuizId(quiz);
    }

    @GetMapping("/getQuestions/{quizId}")
    public String getQuizQuestion(@PathVariable int quizId, Model model){
        model.addAttribute("questions", getQuestionsByQuizId(quizId));
        return "questions";
    }

    @GetMapping("/playQuiz/{quizId}")
    public String getQuestionToPlay(@PathVariable int quizId, Model model) {
        model.addAttribute("questions", getQuestionsByQuizId(quizId));
        return "quizGame";
    }

    public Question getQuestionById(int questionId) {
        return questionService.getQuestionById(questionId);

    }

}
