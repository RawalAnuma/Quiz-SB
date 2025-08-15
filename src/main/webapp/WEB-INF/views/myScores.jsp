<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Scores</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>
<h1 class="text-2xl font-bold mb-4">My Quiz History</h1>
<table class="table-auto border-collapse border border-gray-300 w-full">
    <thead>
        <tr>
            <th class="border px-4 py-2">Quiz ID</th>
            <th class="border px-4 py-2">Score</th>
            <th class="border px-4 py-2">Played Date</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="score" items="${scores}">
            <tr>
                <td class="border px-4 py-2">${score.quiz.quizId}</td>
                <td class="border px-4 py-2">${score.score}</td>
                <td class="border px-4 py-2">${score.playedDate}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<p class="mt-4">
    <a href="${pageContext.request.contextPath}/quizzes/allQuizzes" class="inline-block bg-blue-600 text-white px-4 py-2 rounded">Back to Quizzes</a>
</body>
</html>
