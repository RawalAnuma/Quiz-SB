<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<!-- Navbar -->
<nav class="bg-blue-600 shadow-lg">
    <div class="max-w-7xl mx-auto px-4">
        <div class="flex justify-between items-center h-16">

            <!-- Left side - Logo -->
            <div class="flex items-center">
                <span class="text-white font-bold text-xl">User Dashboard</span>
            </div>

            <!-- Center - Navigation Links -->
            <div class="hidden md:flex space-x-6">
                <a href="${pageContext.request.contextPath}/user" class="text-white hover:text-yellow-300">Home</a>
                <a href="${pageContext.request.contextPath}/categories/categoriesForUser" class="text-white hover:text-yellow-300">Create Quiz</a>
                <a href="${pageContext.request.contextPath}/quizzes/getQuiz" class="text-white hover:text-yellow-300">My Quizzes</a>
                <a href="${pageContext.request.contextPath}/quizzes/allQuizzes" class="text-white hover:text-yellow-300">Play Quiz</a>
            </div>

            <!-- Right side - Logout -->
            <div>
                <a href="${pageContext.request.contextPath}/user/logout"
                   class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded">
                   Logout
                </a>
            </div>
        </div>
    </div>
</nav>
<div class="form-container" style="font-family: Arial, sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="container" style="width: 400px; background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1);">
        <div class="form">
            <form action="${pageContext.request.contextPath}/quizzes" method="post">
                <h1 class="text-2xl font-bold mb-4">Create a Quiz</h1>
                <label for="quizName" class="block mb-2">Quiz Name:</label>
                <input type="text" id="quizName" name="quizName" class="w-full p-2 mb-4 border rounded" required><br>

                <label for="quizDescription" class="block mb-2">Quiz Description:</label>
                <textarea id="quizDescription" name="quizDescription" class="w-full p-2 mb-4 border rounded" required></textarea><br>

                <label for = "noOfQuestionsToPlay" class = "block mb-2"> No of Questions To Play:</label>
                <input type ="number" id="noOfQuestionsToPlay" name="noOfQuestionsToPlay" class="w-full p-2 mb-4 border rounded" required><br>

                <label for = "categoryId" class = "block mb-2"> Select Category:</label>
                <select name = "categoryId" id = "categoryId" class = "w-full p-2 mb-4 border rounded" required>
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.categoryId}">${category.categoryName}</option>
                    </c:forEach>
                </select><br>

                <input type="submit" value="Create Quiz" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">
            </form>
        </div>
    </div>
</body>
</html>
