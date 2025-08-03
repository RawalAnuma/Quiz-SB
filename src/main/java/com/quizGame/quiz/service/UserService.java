package com.quizGame.quiz.service;

import com.quizGame.quiz.model.User;
import com.quizGame.quiz.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void insertUser(User user) {
        userRepository.save(user);
    }


    public User login(String userName, String password) {
        Optional<User> optionalUser = userRepository.findByUsername(userName);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            if (user.getPassword().equals(password)) {
                return user;
            } else {
                System.out.println("Incorrect password for user: " + userName);
            }
        } else {
            System.out.println("User not found: " + userName);
        }
        return null;
    }




}
