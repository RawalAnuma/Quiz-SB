<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">

<!-- Navbar -->
<nav class="bg-blue-600 p-4 text-white shadow-md">
    <div class="container mx-auto flex justify-between items-center">
        <h1 class="text-xl font-bold">Admin Dashboard</h1>
        <ul class="flex space-x-6">
            <li>
                <a href="${pageContext.request.contextPath}/add"
                   class="hover:underline">Add Category</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/categories/getAllCategories"
                   class="hover:underline">View Categories</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/user/logout"
                class="hover:underline">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<h1 class="text-3xl font-bold mb-6 text-center text-gray-800 mt-10">Welcome Admin</h1>
</body>
</html>
