package com.quizGame.quiz.service;

import com.quizGame.quiz.model.Score;
import com.quizGame.quiz.model.User;
import com.quizGame.quiz.repository.ScoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScoreService {

    @Autowired
    private ScoreRepository scoreRepository;

    public void saveScore(Score score){
        scoreRepository.save(score);
    }

    public List<Score> getAllScoresDesc() {
        return scoreRepository.findAllByOrderByScoreDesc();
    }

    public List<Score> getScoresByUser(User user){
        return scoreRepository.findByUser(user);
    }
}
