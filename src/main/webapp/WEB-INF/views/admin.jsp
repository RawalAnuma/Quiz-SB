<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class = "form-container" style="font-family: Arial, sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="container" style="width: 400px; background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1);">
        <div class="form">
            <form action="${pageContext.request.contextPath}/categories/addCategory" method="post">

            <label for="categoryName" class="block mb-2">Category Name:</label>
            <input type="text" id="categoryName" name="categoryName" class="w-full p-2 mb-4 border rounded" required><br>

            <label for="categoryDescription" class="block mb-2">Category Description:</label>
            <textarea id="categoryDescription" name="categoryDescription" class="w-full p-2 mb-4 border rounded" required></textarea><br>

            <input type="submit" value="Add Category" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">
            </form>
        </div>
    </div>

</body>
</html>
