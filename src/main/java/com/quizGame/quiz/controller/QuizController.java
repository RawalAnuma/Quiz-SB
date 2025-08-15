package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Category;
import com.quizGame.quiz.model.Question;
import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.model.User;
import com.quizGame.quiz.service.CategoryService;
import com.quizGame.quiz.service.QuestionService;
import com.quizGame.quiz.service.QuizService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/quizzes")
public class QuizController {

    @Autowired
    private QuizService quizService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private QuestionService questionService;

    @PostMapping//("/addQuiz")
    public String createQuiz(@RequestParam String quizName, @RequestParam String quizDescription, @RequestParam int noOfQuestionsToPlay, @RequestParam int categoryId, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Category category = categoryService.getCategoryById(categoryId)
                .orElseThrow(() -> new RuntimeException("Category not found with id: " + categoryId));
        Quiz quiz = new Quiz();
        quiz.setQuizName(quizName);
        quiz.setQuizDescription(quizDescription);
        quiz.setNoOfQuestionsToPlay(noOfQuestionsToPlay);
        quiz.setCategory(category);
        quiz.setUser(user);
        quizService.insertQuiz(quiz);
        return "redirect:/quizzes/getQuiz";
    }

    @GetMapping("/allQuizzes")
    public String getAllQuizzes(Model model){
        model.addAttribute("availableQuizzes", quizService.getAllQuizzes());
        return "playQuiz";
    }

    @GetMapping("/getQuiz")
    public String getQuizByUserId(HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        List<Quiz> quizzes = quizService.getQuizByUserId(user);
        model.addAttribute("quizzes", quizzes);
        return "quizzes";
    }

    @GetMapping("/setStatus/{quizId}/{status}")
    public String setQuizStatus(@PathVariable int quizId, @PathVariable String status) {
        Quiz quiz = getQuizById(quizId);
        if(status.equals("active")) {
            quiz.setStatus(false);
            System.out.println("Setting quiz status to active: " + quiz.getQuizName());
        } else if(status.equals("inActive")) {
            quiz.setStatus(true);
            System.out.println("Setting quiz status to inactive: " + quiz.getQuizName());

        } else {
            throw new RuntimeException("Invalid status: " + status);
        }
        quizService.setStatus(quiz);
        return "redirect:/quizzes/getQuiz";

    }

    @GetMapping("/deleteQuiz/{quizId}")
    public String deleteQuiz(@PathVariable int quizId) {
        quizService.deleteQuiz(quizId);
        return "redirect:/quizzes/getQuiz";
    }

    @GetMapping("/playQuiz/{quizId}/{questionIndex}")
    public String getQuestionToPlay(@PathVariable int quizId, @PathVariable int questionIndex, Model model) {
        Quiz quiz = getQuizById(quizId);
        List<Question> questions = questionService.getQuestionsByQuizId(quiz);

        if(questionIndex < 0 || questionIndex >= questions.size()) {
            return "redirect:/quizzes/result";
        }
        Question currentQuestion = questions.get(questionIndex);
        model.addAttribute("question", currentQuestion);
        model.addAttribute("quizId", quizId);
        model.addAttribute("questionIndex", questionIndex);
        model.addAttribute("totalQuestions", questions.size());

        return "quizGame";
    }


    public Quiz getQuizById(int quizId) {
        return quizService.getQuizById(quizId).orElseThrow(() -> new RuntimeException("Quiz not found with id: " + quizId));
    }

}
