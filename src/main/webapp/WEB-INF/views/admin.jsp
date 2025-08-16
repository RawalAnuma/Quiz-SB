<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
<%@ include file="/WEB-INF/views/navBars/adminNavBar.jsp" %>
<div id="homeContent" class="min-h-screen flex items-center justify-center bg-gray-100 overflow-hidden">
    <div class="bg-white p-6 rounded-xl shadow-lg text-center w-full max-w-md">
        <h1 class="text-3xl font-semibold text-gray-800">
            Welcome Admin 👋
        </h1>
        <p class="text-gray-600 mt-3">
            Use the navigation bar above to create and explore categories!
        </p>
    </div>
</div>

</body>
</html>
