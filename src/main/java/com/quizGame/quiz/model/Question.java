package com.quizGame.quiz.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int questionId;

    private String title;
    private int[] options = new int[4];
    private int correctOption;

    public Question(String title, int option1, int option2, int option3, int option4, int correctOption) {
        this.title = title;
        this.options[0] = option1;
        this.options[1] = option2;
        this.options[2] = option3;
        this.options[3] = option4;
        this.correctOption = correctOption;
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


    public int getCorrect_index() {
        return correctOption;
    }

    public void setCorrect_index(int correct_index) {
        this.correctOption = correctOption;
    }

    public void showOptions(){
        for(int i = 0; i < this.options.length; i++){
            System.out.println(i+1 + " . "+ options[i]);
        }
    }

    public boolean checkAnswer(int answer){
        if((answer) == this.correctOption){
            return true;
        }
        return false;
    }

    public int[] getOptions() {
        return options;
    }
}