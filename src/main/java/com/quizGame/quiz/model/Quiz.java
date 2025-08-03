package com.quizGame.quiz.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.sql.Timestamp;

@Entity
public class Quizes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int quizId;

    private int userId;
    private int categoryId;
    private String quizName;
    private String quizDescription;
    private int noOfQuestionsToPlay;
    private Timestamp createdDate;
    private boolean status;

    public Quizes() {
    }
    public Quizes(int userId, int categoryId, String quizName, String quizDescription, int noOfQuestionsToPlay) {
        this.userId = userId;
        this.categoryId = categoryId;
        this.quizName = quizName;
        this.quizDescription = quizDescription;
        this.noOfQuestionsToPlay = noOfQuestionsToPlay;
    }
    public int getQuizId() {
        return quizId;
    }
    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public int getCategoryId() {
        return categoryId;
    }
    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    public String getQuizName() {
        return quizName;
    }
    public void setQuizName(String quizName) {
        this.quizName = quizName;
    }
    public String getQuizDescription() {
        return quizDescription;
    }
    public void setQuizDescription(String quizDescription) {
        this.quizDescription = quizDescription;
    }
    public int getNoOfQuestionsToPlay() {
        return noOfQuestionsToPlay;
    }
    public void setNoOfQuestionsToPlay(int noOfQuestionsToPlay) {
        this.noOfQuestionsToPlay = noOfQuestionsToPlay;
    }
    public Timestamp getCreatedDate() {
        return createdDate;
    }
    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }
    public boolean isStatus() {
        return status;
    }
    public void setStatus(boolean status) {
        this.status = status;
    }
}
