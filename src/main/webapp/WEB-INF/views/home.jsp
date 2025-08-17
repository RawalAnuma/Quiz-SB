<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-yellow-100 via-orange-100 to-rose-100 min-h-screen">

<%@ include file="/WEB-INF/views/navBars/navBar.jsp" %>

<div class="text-center px-6 md:px-0 flex flex-col items-center justify-center min-h-screen">

    <!-- Hero Section -->
    <h1 class="text-5xl md:text-7xl font-extrabold text-rose-800 mb-6 drop-shadow-lg">🎯 Quiz Master</h1>
    <p class="text-xl md:text-2xl text-rose-700 mb-12 drop-shadow-md">Test your knowledge. Challenge yourself. Have fun!</p>

    <!-- Feature Cards -->
    <div class="mt-12 flex flex-col md:flex-row justify-center gap-8">

        <div class="bg-yellow-200 bg-opacity-80 rounded-3xl p-8 shadow-lg transform hover:scale-105 transition duration-500">
            <h3 class="text-2xl font-bold text-rose-800 mb-2">📚 100+ Quizzes</h3>
            <p class="text-rose-700 text-lg">Explore quizzes across multiple categories!</p>
        </div>

        <div class="bg-orange-200 bg-opacity-80 rounded-3xl p-8 shadow-lg transform hover:scale-105 transition duration-500">
            <h3 class="text-2xl font-bold text-rose-800 mb-2">🏆 Scoreboards</h3>
            <p class="text-rose-700 text-lg">Compete and see top scorers!</p>
        </div>

        <div class="bg-rose-200 bg-opacity-80 rounded-3xl p-8 shadow-lg transform hover:scale-105 transition duration-500">
            <h3 class="text-2xl font-bold text-rose-800 mb-2">🎮 Fun Challenges</h3>
            <p class="text-rose-700 text-lg">Improve your skills every day!</p>
        </div>

    </div>
</div>

</body>
</html>
