<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Score</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>
<h1 class="text-2xl font-bold mb-4">Quiz Finished!</h1>
<p class="text-lg">Your Score: <span class="font-bold">${score}</span></p>
<a href="${pageContext.request.contextPath}/quizzes/allQuizzes" class="mt-4 inline-block bg-blue-600 text-white px-4 py-2 rounded">Go To Quizzes</a>


</body>
</html>
