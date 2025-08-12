<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<div class="flex items-center justify-center h-screen ">
    <div class="bg-white p-10 rounded-lg shadow-lg w-96 text-center box-shadow: 0 0 15px black">
        <h1 class="text-3xl font-bold mb-6 text-blue-600">Welcome to Quiz World</h1>
        <p class="text-gray-700 mb-8">What would you like to do?</p>

        <div class="flex flex-col gap-4">
            <a href="${pageContext.request.contextPath}/categories/getAllCategories" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded">
                Create a New Quiz
            </a>

            <a href="${pageContext.request.contextPath}/quizzes/getQuiz" class="bg-green-500 hover:bg-green-600 text-white font-semibold py-2 px-4 rounded">
                View All My Quizzes
            </a>

            <a href="${pageContext.request.contextPath}/quizzes/allQuizzes" class="bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-2 px-4 rounded">
                Play Quiz
            </a>
        </div>
    </div>
</div>

</body>
</html>

