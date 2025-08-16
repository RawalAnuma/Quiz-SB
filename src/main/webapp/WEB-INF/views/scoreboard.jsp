<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scoreboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <div class="container mx-auto p-6">
        <h1 class="text-3xl font-bold mb-6 text-center">🏆 Scoreboard</h1>

        <div class="overflow-x-auto shadow-lg rounded-lg">
            <table class="min-w-full border border-gray-300 bg-white">
                <thead class="bg-blue-600 text-white">
                    <tr>
                        <th class="border px-6 py-3 text-left">User ID</th>
                        <th class="border px-6 py-3 text-left">Username</th>
                        <th class="border px-6 py-3 text-left">Quiz ID</th>
                        <th class="border px-6 py-3 text-left">Score</th>
                        <th class="border px-6 py-3 text-left">Played Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="score" items="${scores}">
                        <tr class="hover:bg-gray-100">
                            <td class="border px-6 py-3">${score.user.userId}</td>
                            <td class="border px-6 py-3 font-semibold text-blue-700">${score.user.userName}</td>
                            <td class="border px-6 py-3">${score.quiz.quizId}</td>
                            <td class="border px-6 py-3">${score.score}</td>
                            <td class="border px-6 py-3">${score.playedDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="mt-6 text-center">
            <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
               class="inline-block bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-lg shadow-md">
                ⬅ Back to Quizzes
            </a>
        </div>
    </div>

</body>
</html>
