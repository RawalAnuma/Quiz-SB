<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Question</title>
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
                   class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded transition duration-300">
                   Logout
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Form Section -->
<div class="flex justify-center items-center min-h-[calc(100vh-4rem)] px-4">
    <div class="bg-white rounded-lg shadow-lg p-8 w-full max-w-2xl">
        <h1 class="text-3xl font-semibold mb-6 text-center text-gray-800">Update Question</h1>

        <form action="${pageContext.request.contextPath}/questions/updateQuestion/${question.questionId}" method="post" class="space-y-5">
            <input type="hidden" name="_method" value="put"/>
            <input type="hidden" name="questionId" value="${questionId}"/>

            <!-- Question Title -->
            <div>
                <label for="title" class="block mb-2 font-medium text-gray-700">Question Title:</label>
                <input type="text" id="title" name="title" required
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-400 focus:outline-none"/>
            </div>

            <!-- Option 1 -->
            <div>
                <label for="option1" class="block mb-2 font-medium text-gray-700">Option 1:</label>
                <input type="text" id="option1" name="option1" required
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-400 focus:outline-none"/>
            </div>

            <!-- Option 2 -->
            <div>
                <label for="option2" class="block mb-2 font-medium text-gray-700">Option 2:</label>
                <input type="text" id="option2" name="option2" required
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-400 focus:outline-none"/>
            </div>

            <!-- Option 3 -->
            <div>
                <label for="option3" class="block mb-2 font-medium text-gray-700">Option 3:</label>
                <input type="text" id="option3" name="option3" required
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-400 focus:outline-none"/>
            </div>

            <!-- Option 4 -->
            <div>
                <label for="option4" class="block mb-2 font-medium text-gray-700">Option 4:</label>
                <input type="text" id="option4" name="option4" required
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-400 focus:outline-none"/>
            </div>

            <!-- Correct Option -->
            <div>
                <label for="correctOption" class="block mb-2 font-medium text-gray-700">Correct Option:</label>
                <select id="correctOption" name="correctOption" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-400 focus:outline-none">
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                    <option value="4">Option 4</option>
                </select>
            </div>

            <!-- Submit Button -->
            <button type="submit"
                    class="w-full bg-blue-600 text-white py-3 rounded-md font-semibold hover:bg-blue-700 transition duration-300">
                Update Question
            </button>
        </form>
    </div>
</div>

</body>
</html>
