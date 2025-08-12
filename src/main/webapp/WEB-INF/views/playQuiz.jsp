<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quizzes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="flex items-center justify-center h-screen bg-gray-100">
    <div class="bg-white p-10 rounded-lg shadow-lg w-96 text-center">
        <h1 class="text-3xl font-bold mb-6 text-blue-600">Available Quiz</h1>
        <div class = "container mx-auto">
            <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
                <thead class="bg-blue-500 text-white">
                    <tr>
                        <th class="py-3 px-4 text-left">Quiz ID</th>
                        <th class="py-3 px-4 text-left">Quiz Name</th>
                        <th class="py-3 px-4 text-left">Quiz Description</th>
                        <th class="py-3 px-4 text-left">No of Questions to Play</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="quiz" items="${availableQuizzes}">
                        <tr class="border-b hover:bg-gray-100">
                            <td class="py-2 px-4">${quiz.quizId}</td>
                            <td class="py-2 px-4">${quiz.quizName}</td>
                            <td class="py-2 px-4">${quiz.quizDescription}</td>
                            <td class="py-2 px-4 text-center">${quiz.noOfQuestionsToPlay}</td>
                            <td class="py-2 px-4">
                                <a href="${pageContext.request.contextPath}/questions/playQuiz/${quiz.quizId}"
                                   class="inline-block bg-blue-500 hover:bg-blue-600 text-white font-semibold py-1 px-3 rounded">
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
