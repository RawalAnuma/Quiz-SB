<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 font-sans">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<!-- Main Content -->
<div id="homeContent" class="min-h-screen flex items-center justify-center overflow-hidden">
    <div class="bg-white p-8 rounded-xl shadow-lg text-center w-full max-w-md border border-teal-200">
        <h1 class="text-3xl font-semibold text-emerald-600">
            Welcome ${user.fullName} 👋
        </h1>
        <p class="text-gray-700 mt-3">
            Use the navigation bar above to explore quizzes, scores, and more.
        </p>
        <div class="mt-6">
            <a href="${pageContext.request.contextPath}/quizzes/allQuizzes"
               class="bg-emerald-500 hover:bg-emerald-700 text-white px-6 py-2 rounded-lg font-semibold shadow">
                Start Playing
            </a>
        </div>
    </div>
</div>

</body>
</html>
