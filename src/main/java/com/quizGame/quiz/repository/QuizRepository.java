package com.quizGame.quiz.repository;

import com.quizGame.quiz.model.Quiz;
import com.quizGame.quiz.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuizRepository extends JpaRepository<Quiz, Integer> {
    List<Quiz> findByUserId(User user);
}
