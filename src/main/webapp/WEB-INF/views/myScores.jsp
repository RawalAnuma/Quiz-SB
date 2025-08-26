<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Scores</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-teal-50 to-green-100 text-teal-900">

    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <div class="container mx-auto p-6 mt-28"> <!-- mt-28 ensures spacing below navbar -->
        <h1 class="text-3xl font-bold mb-8 text-center text-teal-900">📊 My Quiz History</h1>

        <div class="overflow-x-auto shadow-lg rounded-2xl border border-teal-200">
            <table class="min-w-full text-center">
                <thead class="bg-gradient-to-r from-teal-400 via-teal-500 to-green-500 text-white uppercase">
                    <tr>
                        <th class="px-6 py-3 border border-teal-300">Quiz ID</th>
                        <th class="px-6 py-3 border border-teal-300">Quiz Name</th>
                        <th class="px-6 py-3 border border-teal-300">No of Questions</th>
                        <th class="px-6 py-3 border border-teal-300">Score</th>
                        <th class="px-6 py-3 border border-teal-300">Played Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="score" items="${scores}" varStatus="status">
                        <tr class="${status.index % 2 == 0 ? 'bg-teal-50' : 'bg-green-50'} hover:bg-teal-100 transition">
                            <td class="px-6 py-3 font-medium text-teal-900 border border-teal-200">${score.quiz.quizId}</td>
                            <td class="px-6 py-3 font-semibold text-teal-900 border border-teal-200">${score.quiz.quizName}</td>
                            <td class="px-6 py-3 text-teal-800 border border-teal-200">${score.quiz.noOfQuestionsToPlay}</td>
                            <td class="px-6 py-3 font-semibold text-teal-700 border border-teal-200">${score.score}</td>
                            <td class="px-6 py-3 text-teal-800 border border-teal-200">${score.playedDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="mt-6 text-center">
            <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
               class="inline-block bg-gradient-to-r from-teal-500 to-green-500 hover:from-green-500 hover:to-teal-600 text-white px-6 py-3 rounded-lg shadow-md transition">
                ⬅ Back to Quizzes
            </a>
        </div>
    </div>

</body>
