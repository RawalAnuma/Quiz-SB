<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Category</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50 font-sans">
<%@ include file="/WEB-INF/views/navBars/adminNavBar.jsp" %>

<!-- Form -->
<div class="flex justify-center items-center min-h-screen pt-20 px-4">
    <div class="bg-amber-100 p-8 rounded-2xl shadow-xl w-full max-w-md border border-amber-300">
        <h2 class="text-2xl font-bold text-center text-olive-900 mb-6">➕ Add New Category</h2>

        <form action="${pageContext.request.contextPath}/categories" method="post" class="space-y-4">

            <div>
                <label for="categoryName" class="block text-olive-800 font-medium mb-2">Category Name</label>
                <input type="text" id="categoryName" name="categoryName"
                       class="w-full p-3 border border-olive-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-olive-400"
                       placeholder="Enter category name" required>
            </div>

            <div>
                <label for="categoryDescription" class="block text-olive-800 font-medium mb-2">Category Description</label>
                <textarea id="categoryDescription" name="categoryDescription"
                          class="w-full p-3 border border-olive-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-olive-400"
                          placeholder="Enter category description" rows="4" required></textarea>
            </div>

            <button type="submit"
                    class="w-full bg-blue-200 hover:bg-orange-200 text-beige-100 font-semibold py-3 rounded-lg shadow-md transition">
                Add Category
            </button>
        </form>
    </div>
</div>

</body>
</html>
