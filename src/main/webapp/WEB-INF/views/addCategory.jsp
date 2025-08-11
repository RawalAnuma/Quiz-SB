<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Category</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">

<!-- Navbar -->
<nav class="bg-blue-600 p-4 text-white shadow-md">
    <div class="container mx-auto flex justify-between items-center">
        <h1 class="text-xl font-bold">Admin Dashboard</h1>
        <ul class="flex space-x-6">
            <li><a href="${pageContext.request.contextPath}/add" class="hover:underline">Add Category</a></li>
            <li><a href="${pageContext.request.contextPath}/categories/getAllCategories" class="hover:underline">View Categories</a></li>
            <li><a href="${pageContext.request.contextPath}/user/logout" class="hover:underline">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Form -->
<div class="flex justify-center items-center h-screen -mt-20">
    <div class="bg-white p-6 rounded-lg shadow-lg w-96">
        <form action="${pageContext.request.contextPath}/categories" method="post">

            <label for="categoryName" class="block mb-2">Category Name:</label>
            <input type="text" id="categoryName" name="categoryName"
                   class="w-full p-2 mb-4 border rounded border-black" required>

            <label for="categoryDescription" class="block mb-2">Category Description:</label>
            <textarea id="categoryDescription" name="categoryDescription"
                      class="w-full p-2 mb-4 border rounded border-black" required></textarea>

            <input type="submit" value="Add Category"
                   class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">
        </form>
    </div>
</div>

</body>
</html>

