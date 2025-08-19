package com.quizGame.quiz.model;

import jakarta.persistence.*;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;

import java.sql.Timestamp;


@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    private String fullName;
    private String username;
    private String password;

    @Column(nullable = false, columnDefinition = "BOOLEAN DEFAULT false")
    private Boolean admin = false;

    @CreationTimestamp
    @Column(nullable = false, updatable = false)
    private Date joinedDate;

    public User(){}
    public User(String fullName, String username, String password){
        this.fullName = fullName;
        this.username = username;
        this.password = password;
    }
    public int getUserId(){
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getAdmin() {
        return admin;
    }

    public void setAdmin(Boolean admin) {
        this.admin = admin;
    }

    public Date getJoinedDate() {
        return joinedDate;
    }
    public void setJoinedDate(Date joinedDate) {
        this.joinedDate = joinedDate;
    }

    public String getUserName() {
        return username;
    }
    public void setUserName(String userName) {
        this.username = userName;
    }
}
