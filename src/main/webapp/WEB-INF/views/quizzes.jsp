<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quizzes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <div class="max-w-6xl mx-auto p-8">
        <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Quiz Details</h1>
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-md">
                <thead class="bg-blue-500 text-white">
                    <tr>
                        <th class="py-3 px-4 border-b text-left">Quiz ID</th>
                        <th class="py-3 px-4 border-b text-left">Quiz Name</th>
                        <th class="py-3 px-4 border-b text-left">Description</th>
                        <th class="py-3 px-4 border-b text-left">No. of Questions</th>
                        <th class="py-3 px-4 border-b text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="quiz" items="${quizzes}">
                        <tr class="hover:bg-gray-100">
                            <td class="py-2 px-4 border-b">${quiz.quizId}</td>
                            <td class="py-2 px-4 border-b">${quiz.quizName}</td>
                            <td class="py-2 px-4 border-b">${quiz.quizDescription}</td>
                            <td class="py-2 px-4 border-b">${quiz.noOfQuestionsToPlay}</td>
                            <td class="py-2 px-4 border-b text-center space-x-2">
                                <a href="${pageContext.request.contextPath}/addQuestionView/${quiz.quizId}"
                                   class="inline-block bg-green-500 hover:bg-green-600 text-white font-semibold py-1 px-3 rounded">
                                    Add Questions
                                </a>
                                <a href="${pageContext.request.contextPath}/questions/getQuestions/${quiz.quizId}"
                                   class="inline-block bg-blue-500 hover:bg-blue-600 text-white font-semibold py-1 px-3 rounded">
                                    View Questions
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
