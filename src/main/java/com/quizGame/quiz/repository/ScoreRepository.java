package com.quizGame.quiz.repository;

import com.quizGame.quiz.model.Score;
import com.quizGame.quiz.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ScoreRepository extends JpaRepository<Score, Integer> {

    List<Score> findByUser(User user);
}
