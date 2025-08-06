package com.quizGame.quiz.model;

import jakarta.persistence.*;

@Entity
@Table(name = "questions")
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int questionId;

    @ManyToOne
    @JoinColumn (name = "quizId", nullable = false)
    private Quiz quiz;

    private String title;
    private String option1, option2, option3, option4;
    private int correctOption;
    


    public Quiz getQuiz() {
        return quiz;
    }
    public void setQuiz(Quiz quiz) {
        this.quiz = quiz;
    }

    public int getQuestionId(){
        return questionId;
    }

    public void setQuestionId(int questionId){
        this.questionId = questionId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOption1() {
        return option1;
    }
    public void setOption1(String option1) {
        this.option1 = option1;
    }
    public String getOption2() {
        return option2;
    }
    public void setOption2(String option2) {
        this.option2 = option2;
    }
    public String getOption3() {
        return option3;
    }
    public void setOption3(String option3) {
        this.option3 = option3;
    }
    public String getOption4() {
        return option4;
    }
    public void setOption4(String option4) {
        this.option4 = option4;
    }
    public int getCorrectOption() {
        return correctOption;
    }
    public void setCorrectOption(int correctOption) {
        this.correctOption = correctOption;
    }

    public boolean checkAnswer(int answer){
        if((answer) == this.correctOption){
            return true;
        }
        return false;
    }


}