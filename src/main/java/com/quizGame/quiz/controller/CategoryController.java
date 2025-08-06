package com.quizGame.quiz.controller;

import com.quizGame.quiz.model.Category;
import com.quizGame.quiz.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/categories")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @PostMapping("/addCategory")
    public void addCategory(@RequestParam String categoryName, @RequestParam String categoryDescription){
        Category category = new Category();
        category.setCategoryName(categoryName);
        category.setCategoryDescription(categoryDescription);
        categoryService.insertCategory(category);
    }

    @GetMapping("/getAllCategories")
    public String getAllCategories(Model model){
        List<Category> categories = categoryService.getAllCategories();
        model.addAttribute("categories", categories);
        return "createQuiz";
    }


    public Category getCategoryById(int categoryId) {
        Optional<Category> category = categoryService.getCategoryById(categoryId);
        if (category.isPresent()) {
            return category.get();
        } else {
            throw new RuntimeException("Category not found with id: " + categoryId);
        }

    }
}
