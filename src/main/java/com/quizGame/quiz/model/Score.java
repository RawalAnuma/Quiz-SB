package com.quizGame.quiz.model;

import jakarta.persistence.*;

import java.sql.Date;
import java.sql.Timestamp;


@Entity
@Table(name = "scores")
public class Score {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int scoreId;

    @ManyToOne
    @JoinColumn(name = "userId", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "quizId", nullable = false)
    private Quiz quiz;

    private int score;
    private Date playedDate;


    public int getScoreId() {
        return scoreId;
    }
    public void setScoreId(int scoreId) {
        this.scoreId = scoreId;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public Quiz getQuiz() {
        return quiz;
    }
    public void setQuiz(Quiz quiz) {
        this.quiz = quiz;
    }

    public int getScore() {
        return score;
    }
    public void setScore(int score) {
        this.score = score;
    }
    public Date getPlayedDate() {
        return playedDate;
    }
    public void setPlayedDate(Date playedDate) {
        this.playedDate = playedDate;
    }

}
