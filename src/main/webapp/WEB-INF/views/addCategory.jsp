<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Category</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
<%@ include file="/WEB-INF/views/navBars/adminNavBar.jsp" %>

<!-- Form -->
<div class="flex justify-center items-center min-h-screen">
    <div class="bg-white p-8 rounded-2xl shadow-2xl w-full max-w-md">
        <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">➕ Add New Category</h2>

        <form action="${pageContext.request.contextPath}/categories" method="post" class="space-y-4">

            <div>
                <label for="categoryName" class="block text-gray-700 font-medium mb-2">Category Name</label>
                <input type="text" id="categoryName" name="categoryName"
                       class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"
                       placeholder="Enter category name" required>
            </div>

            <div>
                <label for="categoryDescription" class="block text-gray-700 font-medium mb-2">Category Description</label>
                <textarea id="categoryDescription" name="categoryDescription"
                          class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"
                          placeholder="Enter category description" rows="4" required></textarea>
            </div>

            <button type="submit"
                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 rounded-lg shadow-md transition">
                Add Category
            </button>
        </form>
    </div>
</div>

</body>
</html>
