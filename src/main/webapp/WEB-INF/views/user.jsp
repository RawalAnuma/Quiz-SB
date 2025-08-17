<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50 font-sans">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<!-- Main Content -->
<div id="homeContent" class="min-h-screen flex items-center justify-center overflow-hidden">
    <div class="bg-amber-100 p-8 rounded-xl shadow-lg text-center w-full max-w-md">
        <h1 class="text-3xl font-semibold text-olive-900">
            Welcome ${user.fullName} 👋
        </h1>
        <p class="text-olive-800 mt-3">
            Use the navigation bar above to explore quizzes, scores, and more.
        </p>
    </div>
</div>

</body>
</html>
