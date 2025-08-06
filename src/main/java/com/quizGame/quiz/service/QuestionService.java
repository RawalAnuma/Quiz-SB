package com.quizGame.quiz.service;

import com.quizGame.quiz.model.Question;
import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    public List<Question> getQuestionsByQuizId(Quiz quiz) {
        return questionRepository.findByQuiz(quiz);
    }
}
