<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/navBar.jsp" %>
<div class = "form-container" style="font-family: Arial, sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="container" style="width: 400px; background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1);">
        <div class="form">
            <form action = "${pageContext.request.contextPath}/user/signup" method = "post">
            <h1 class="text-2xl font-bold mb-4 text-align: center">Sign Up</h1><br>

                <label for="fullName" class="block mb-2">Fullname:</label>
                <input type="text" id="fullName" name="fullName" class="w-full p-2 mb-4 border rounded" required><br>

                <label for="userName" class="block mb-2">Username:</label>
                <input type="text" id="userName" name="userName" class="w-full p-2 mb-4 border rounded" required><br>

                <label for="password" class="block mb-2">Password:</label>
                <input type="password" id="password" name="password" class="w-full p-2 mb-4 border rounded" required><br>


                <input type = "submit" value = "Sign Up" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">
            </form>
            <p class="mt-4 text-center">Already have an account? <a href="${pageContext.request.contextPath}/login" class="text-blue-500 hover:underline">Login here</a></p>
        </div>
    </div>
</body>
</html>
