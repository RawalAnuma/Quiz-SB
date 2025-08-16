<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quizzes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen">
    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <div class="container mx-auto px-6 py-10">
        <div class="bg-white p-8 rounded-xl shadow-lg">
            <h1 class="text-3xl font-bold mb-8 text-center text-blue-600">📚 Available Quizzes</h1>

            <div class="overflow-x-auto rounded-lg border border-gray-200">
                <table class="min-w-full text-sm text-left">
                    <thead class="bg-blue-600 text-white text-sm uppercase">
                        <tr>
                            <th class="py-3 px-6">Quiz ID</th>
                            <th class="py-3 px-6">Quiz Name</th>
                            <th class="py-3 px-6">Description</th>
                            <th class="py-3 px-6 text-center">No Of Questions</th>
                            <th class="py-3 px-6 text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <c:forEach var="quiz" items="${availableQuizzes}">
                            <tr class="hover:bg-blue-50 transition">
                                <td class="py-3 px-6">${quiz.quizId}</td>
                                <td class="py-3 px-6 font-semibold text-gray-800">${quiz.quizName}</td>
                                <td class="py-3 px-6 text-gray-600">${quiz.quizDescription}</td>
                                <td class="py-3 px-6 text-center font-medium">${quiz.noOfQuestionsToPlay}</td>
                                <c:set var="questionIndex" value="0"/>
                                <td class="py-3 px-6 text-center">
                                    <a href="${pageContext.request.contextPath}/quizzes/playQuiz/${quiz.quizId}/${questionIndex}"
                                       class="inline-block bg-blue-500 hover:bg-blue-600 text-white text-sm font-semibold py-2 px-5 rounded-lg shadow-md transition">
                                        ▶ Play
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
