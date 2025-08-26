<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quizzes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-indigo-50 to-blue-100 min-h-screen">

    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <div class="container mx-auto px-6 py-10 pt-28">
        <div class="bg-white p-8 rounded-2xl shadow-xl border border-indigo-200">
            <h1 class="text-3xl font-bold mb-8 text-center text-indigo-900">📚 Available Quizzes</h1>

            <div class="overflow-x-auto rounded-lg border border-indigo-200 shadow-md">
                <table class="min-w-full text-sm text-left">
                    <thead class="bg-gradient-to-r from-indigo-400 via-purple-400 to-indigo-500 text-white uppercase text-sm">
                        <tr>
                            <th class="py-3 px-6">Quiz ID</th>
                            <th class="py-3 px-6">Quiz Name</th>
                            <th class="py-3 px-6">Description</th>
                            <th class="py-3 px-6 text-center">No Of Questions</th>
                            <th class="py-3 px-6 text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-indigo-100">
                        <c:forEach var="quiz" items="${availableQuizzes}">
                            <tr class="hover:bg-indigo-50 transition-colors duration-200">
                                <td class="py-3 px-6 text-indigo-900">${quiz.quizId}</td>
                                <td class="py-3 px-6 font-semibold text-indigo-800">${quiz.quizName}</td>
                                <td class="py-3 px-6 text-indigo-700">${quiz.quizDescription}</td>
                                <td class="py-3 px-6 text-center font-medium text-indigo-900">${quiz.noOfQuestionsToPlay}</td>
                                <c:set var="questionIndex" value="0"/>
                                <td class="py-3 px-6 text-center">
                                    <c:choose>
                                        <c:when test="${quiz.status}">
                                            <a href="${pageContext.request.contextPath}/quizzes/playQuiz/${quiz.quizId}/${questionIndex}"
                                               class="inline-block bg-gradient-to-r from-indigo-500 to-purple-500 hover:from-purple-600 hover:to-indigo-600 text-white font-semibold text-sm py-2 px-5 rounded-lg shadow-md transition-all duration-300">
                                               ▶ Play
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="inline-block bg-gray-400 text-white text-sm font-semibold py-2 px-5 rounded-lg opacity-60 cursor-not-allowed">
                                                🚫 Inactive
                                            </span>
                                        </c:otherwise>
                                    </c:choose>
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
