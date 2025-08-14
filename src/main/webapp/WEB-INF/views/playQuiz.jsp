<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quizzes</title>
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

<div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-5xl">
    <h1 class="text-3xl font-bold mb-6 text-center text-blue-600">Available Quizzes</h1>

    <div class="overflow-x-auto">
        <table class="min-w-full bg-white border border-gray-200 rounded-lg overflow-hidden">
            <thead class="bg-blue-500 text-white">
                <tr>
                    <th class="py-3 px-4 text-left">Quiz ID</th>
                    <th class="py-3 px-4 text-left">Quiz Name</th>
                    <th class="py-3 px-4 text-left">Quiz Description</th>
                    <th class="py-3 px-4 text-center">No. of Questions</th>
                    <th class="py-3 px-4 text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="quiz" items="${availableQuizzes}">
                    <tr class="border-b even:bg-gray-50 hover:bg-blue-50 transition">
                        <td class="py-2 px-4">${quiz.quizId}</td>
                        <td class="py-2 px-4 font-medium">${quiz.quizName}</td>
                        <td class="py-2 px-4">${quiz.quizDescription}</td>
                        <td class="py-2 px-4 text-center">${quiz.noOfQuestionsToPlay}</td>
                        <c:set var = "questionIndex" value = "0"/>
                        <td class="py-2 px-4 text-center">
                            <a href="${pageContext.request.contextPath}/quizzes/playQuiz/${quiz.quizId}/${questionIndex}"
                               class="inline-block bg-blue-500 hover:bg-blue-600 text-white font-semibold py-1.5 px-4 rounded-lg transition">
                                Play Quiz
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
