<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class ="bg-amber-50">
<nav class="fixed top-0 w-full z-50 bg-gradient-to-r from-amber-200 via-amber-300 to-yellow-200 shadow-md">
    <div class="max-w-7xl mx-auto px-4">
        <div class="flex justify-between items-center h-16">

            <!-- Logo -->
            <div class="flex items-center">
                <span class="text-olive-900 font-bold text-xl">User Dashboard</span>
            </div>

            <!-- Navigation Links -->
            <div class="hidden md:flex space-x-14">
                <a href="${pageContext.request.contextPath}/userDashboard#homeContent"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">Home</a>
                <a href="${pageContext.request.contextPath}/categories/categoriesForUser"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">Create Quiz</a>
                <a href="${pageContext.request.contextPath}/quizzes/getQuiz"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">My Quizzes</a>
                <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">Play Quiz</a>
                <a href="${pageContext.request.contextPath}/scores/myScores"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">My Scores</a>
                <a href="${pageContext.request.contextPath}/scores/allScores"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">Scoreboard</a>
            </div>

            <!-- Logout Button -->
            <div>
                <a href="${pageContext.request.contextPath}/user/logout"
                   class="bg-orange-500 hover:bg-orange-800 text-white px-4 py-2 rounded font-semibold">
                   Logout
                </a>
            </div>
        </div>
    </div>
</nav>
</body>
</html>
