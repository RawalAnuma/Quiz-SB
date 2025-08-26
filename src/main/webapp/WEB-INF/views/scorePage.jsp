<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Score</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-teal-50 to-green-100 flex items-center justify-center min-h-screen">

    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <main class="bg-teal-100 shadow-xl rounded-3xl p-10 text-center w-full max-w-md">
        <h1 class="text-4xl font-bold text-teal-900 mb-6">🎉 Quiz Finished!</h1>
        <p class="text-xl text-teal-800 mb-8">
            Your Score: <span class="text-3xl font-extrabold text-green-700">${score}</span>
        </p>

        <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
           class="inline-block bg-gradient-to-r from-teal-500 to-green-500 hover:from-green-500 hover:to-teal-600 text-white px-6 py-3 rounded-lg shadow-md transition">
            ⬅ Back to Quizzes
        </a>
    </main>

</body>

</html>
