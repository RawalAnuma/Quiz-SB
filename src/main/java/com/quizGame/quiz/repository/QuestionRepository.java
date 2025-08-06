package com.quizGame.quiz.repository;

import com.quizGame.quiz.model.Question;
import com.quizGame.quiz.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuestionRepository extends JpaRepository<Question, Integer> {
    List<Question> findByQuiz(Quiz quiz);
}
