package com.quizGame.quiz.service;

import com.quizGame.quiz.model.Category;
import com.quizGame.quiz.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public void insertCategory(Category category){
        categoryRepository.save(category);
    }
}
