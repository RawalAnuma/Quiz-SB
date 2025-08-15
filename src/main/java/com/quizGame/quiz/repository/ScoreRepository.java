package com.quizGame.quiz.repository;

import com.quizGame.quiz.model.Score;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ScoreRepository extends JpaRepository<Score, Integer> {
}
