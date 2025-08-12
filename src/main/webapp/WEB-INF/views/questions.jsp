<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Questions</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
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
<div class="max-w-6xl mx-auto px-6 py-10">
    <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Quiz Questions</h1>
    <div class="overflow-x-auto">
        <table class="min-w-full border border-gray-300 bg-white shadow-md rounded-lg">
            <thead class="bg-blue-500 text-white">
                <tr>
                    <th class="py-3 px-4 border-b">Question ID</th>
                    <th class="py-3 px-4 border-b">Question Title</th>
                    <th class="py-3 px-4 border-b">Option 1</th>
                    <th class="py-3 px-4 border-b">Option 2</th>
                    <th class="py-3 px-4 border-b">Option 3</th>
                    <th class="py-3 px-4 border-b">Option 4</th>
                    <th class="py-3 px-4 border-b">Correct Option</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="question" items="${questions}">
                    <tr class="text-center hover:bg-gray-100">
                        <td class="py-2 px-4 border-b">${question.questionId}</td>
                        <td class="py-2 px-4 border-b">${question.title}</td>
                        <td class="py-2 px-4 border-b">${question.option1}</td>
                        <td class="py-2 px-4 border-b">${question.option2}</td>
                        <td class="py-2 px-4 border-b">${question.option3}</td>
                        <td class="py-2 px-4 border-b">${question.option4}</td>
                        <td class="py-2 px-4 border-b">${question.correctOption}</td>
                        <td class="py-2 px-4 border-b">
                            <a href="${pageContext.request.contextPath}/updateQuestionView/${question.questionId}"
                               class="inline-block bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-1 px-3 rounded">
                                Update
                            </a>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
