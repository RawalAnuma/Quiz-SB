package com.quizGame.quiz.model;

import jakarta.persistence.*;

import java.sql.Date;
import java.sql.Timestamp;

@Entity
@Table(name = "quizes")
public class Quiz {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int quizId;

    @ManyToOne
    @JoinColumn(name = "userId", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "categoryId", nullable = false)
    private Category category;

    private String quizName;
    private String quizDescription;
    private int noOfQuestionsToPlay;

    @Column(name= "createdDate", insertable = false)
    private Date createdDate;

    @Column(name = "status", insertable = false)
    private Boolean status;

    public Quiz() {
    }

    public int getQuizId() {
        return quizId;
    }
    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }
    public void setCategory(Category category) {
        this.category = category;
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
    public Date getCreatedDate() {
        return createdDate;
    }
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    public String getStatus(){
        if(status) {
            return "active";
        } else {
            return "inActive";
        }
    }
    public void setStatus(boolean status) {
        this.status = status;
    }
}
