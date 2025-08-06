package com.quizGame.quiz.service;

import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.model.User;
import com.quizGame.quiz.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class  QuizService {

    @Autowired
    private QuizRepository quizRepository;

    public void insertQuiz(Quiz quiz){
        quizRepository.save(quiz);
    }
    public List<Quiz> getQuizByUserId(User user) {
        return quizRepository.findByUser(user);
    }
    public Optional<Quiz> getQuizById(int quizId) {
        return quizRepository.findById(quizId);
    }
}
