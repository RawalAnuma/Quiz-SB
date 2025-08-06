<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LogIn</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class = "form-container" style="font-family: Arial, sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="container" style="width: 400px; background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1);">
        <div class="form">
            <form action="${pageContext.request.contextPath}/user/login" method="get">
            <h1 class="text-2xl font-bold mb-4">Enter your details</h1>
            <label for="userName" class="block mb-2">Username:</label><br>
            <input type="text" id="userName" name="userName" class="w-full p-2 mb-4 border rounded" required><br>
            <label for="password" class="block mb-2">Password:</label><br>
            <input type="password" id="password" name="password" class="w-full p-2 mb-4 border rounded" required><br>
            <button type="submit" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
