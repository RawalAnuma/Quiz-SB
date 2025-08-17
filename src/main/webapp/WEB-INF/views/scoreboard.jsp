<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scoreboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50 text-olive-900">

    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <div class="container mx-auto p-6 mt-28">
        <h1 class="text-3xl font-bold mb-8 text-center text-olive-900">🏆 Scoreboard</h1>

        <div class="overflow-x-auto shadow-lg rounded-2xl border border-olive-300">
            <table class="min-w-full text-center">
                <thead class="bg-olive-800 text-beige-100 uppercase">
                    <tr>
                        <th class="px-6 py-3">User ID</th>
                        <th class="px-6 py-3">Full Name</th>
                        <th class="px-6 py-3">Quiz ID</th>
                        <th class="px-6 py-3">Quiz Name</th>
                        <th class ="px-6 py-3">No of Questions</th>
                        <th class="px-6 py-3">Score</th>
                        <th class="px-6 py-3">Played Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="score" items="${scores}" varStatus="status">
                        <tr class="${status.index % 2 == 0 ? 'bg-amber-100' : 'bg-beige-200'} hover:bg-olive-200 transition">
                            <td class="px-6 py-3 font-medium text-olive-900">${score.user.userId}</td>
                            <td class="px-6 py-3 font-semibold text-olive-700">${score.user.fullName}</td>
                            <td class="px-6 py-3 font-medium text-olive-900">${score.quiz.quizId}</td>
                            <td class="px-6 py-3 font-semibold text-olive-900">${score.quiz.quizName}</td>
                            <td class="px-6 py-3 font-medium text-olive-900">${score.quiz.noOfQuestionsToPlay}</td>
                            <td class="px-6 py-3 font-semibold text-olive-700">${score.score}</td>
                            <td class="px-6 py-3 font-medium text-olive-900">${score.playedDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="mt-6 text-center">
            <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
               class="inline-block bg-green-200 hover:bg-olive-900 text-beige-100 px-6 py-3 rounded-lg shadow-md transition">
                ⬅ Back to Quizzes
            </a>
        </div>
    </div>

</body>
</html>
