<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Score</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <main class="bg-white shadow-2xl rounded-2xl p-10 text-center max-w-md w-full justify-center mx-auto mt-20">
        <h1 class="text-3xl font-bold text-green-600 mb-4">🎉 Quiz Finished!</h1>
        <p class="text-lg text-gray-700 mb-6">
            Your Score: <span class="text-2xl font-extrabold text-blue-600">${score}</span>
        </p>

        <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
           class="inline-block bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-lg shadow-md transition">
            ⬅ Back to Quizzes
        </a>
    </main>
</body>
</html>
