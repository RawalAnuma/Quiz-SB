package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.model.Score;
import com.quizGame.quiz.model.User;
import com.quizGame.quiz.service.ScoreService;
import com.quizGame.quiz.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/scores")
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    public String saveScore(@PathVariable int quizId, HttpSession session, Model model){
        Integer finalScore = (Integer) session.getAttribute("score");
        if(finalScore == null) {
            model.addAttribute("error", "No score found in session.");
            return "errorPage"; // Redirect to an error page or handle accordingly
        }
        User currentUser = (User) session.getAttribute("user");

        Quiz quiz = new Quiz();
        quiz.setQuizId(quizId);

        Score score = new Score();
        score.setUser(currentUser);
        score.setQuiz(quiz);
        score.setScore(finalScore);
        score.setPlayedDate(java.sql.Date.valueOf(java.time.LocalDate.now()));
        scoreService.saveScore(score);

        model.addAttribute("score", finalScore);
        return "scorePage"; // Redirect to a page to display the score

    }
}
