<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
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

<!-- Main Content -->
<div class="container mx-auto mt-10">
    <div class="bg-white p-6 rounded-lg shadow-lg">
        <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Welcome User</h1>
    </div>


</body>
</html>
