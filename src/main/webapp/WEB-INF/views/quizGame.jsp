<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Game</title>
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
<main class="w-full max-w-2xl bg-white shadow-lg rounded-xl p-6">
    <div class="mb-8 border-b border-gray-200 pb-6">
        <h1 class="text-2xl font-bold text-gray-800 mb-2">Question ${questionIndex + 1}</h1>
        <h3 class="text-lg text-gray-700 mb-4">${question.title}</h3>
        <p class="text-gray-600 mb-4">Select one of the options below:</p>

        <form action = "${pageContext.request.contextPath}/quizzes/playQuiz/${quizId}/${questionIndex + 1}" method="get">
            <div class="space-y-4">
                <div>
                    <input type="radio" id="option1" name="selectedOption" value="${question.option1}" class="mr-2" required>
                    <label for="option1" class="text-gray-700">${question.option1}</label>
                </div>

                <div>
                    <input type="radio" id="option2" name="selectedOption" value="${question.option2}" class="mr-2" required>
                    <label for="option2" class="text-gray-700">${question.option2}</label>
                </div>

                <div>
                    <input type="radio" id="option3" name="selectedOption" value="${question.option3}" class="mr-2" required>
                    <label for="option3" class="text-gray-700">${question.option3}</label>
                </div>

                <div>
                    <input type="radio" id="option4" name="selectedOption" value="${question.option4}" class="mr-2" required>
                    <label for="option4" class="text-gray-700">${question.option4}</label>
                </div>
            </div>

            <button type="submit"
                class="mt-4 bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition-colors">
                <c:choose>
                    <c:when test="${questionIndex + 1 == totalQuestions}">
                        Submit Quiz
                    </c:when>
                    <c:otherwise>
                        Next Question
                    </c:otherwise>
                </c:choose>
            </button>
        </form>
    </div>
</main>
</body>
</html>
