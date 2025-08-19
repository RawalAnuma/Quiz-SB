<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-yellow-50">

<%@ include file="/WEB-INF/views/navBars/navBar.jsp" %>

<div class="flex justify-center items-center min-h-screen pt-20">
    <div class="w-full max-w-md bg-gradient-to-br from-yellow-100 via-orange-100 to-rose-100 p-8 rounded-xl shadow-lg">
        <h1 class="text-2xl font-bold mb-6 text-rose-800 text-center">Enter your details</h1>
        <form action="${pageContext.request.contextPath}/user/login" method="post" class="space-y-4">

            <div>
                <label for="userName" class="block mb-2 text-rose-900 font-semibold">Username:</label>
                <input type="text" id="userName" name="userName"
                       class="w-full p-2 border border-rose-200 rounded bg-yellow-50 focus:outline-none focus:ring-2 focus:ring-rose-300" required>
            </div>

            <div>
                <label for="password" class="block mb-2 text-rose-900 font-semibold">Password:</label>
                <input type="password" id="password" name="password"
                       class="w-full p-2 border border-rose-200 rounded bg-yellow-50 focus:outline-none focus:ring-2 focus:ring-rose-300" required>
            </div>

            <button type="submit"
                    class="w-full py-2 rounded-lg font-semibold text-rose-800 bg-gradient-to-r from-amber-200 to-orange-300 hover:from-orange-300 hover:to-amber-200 transition-all duration-300">
                Login
            </button>
        </form>
        <p class="mt-4 text-center text-rose-900">
            Don't have an account?
            <a href="${pageContext.request.contextPath}/signup" class="font-semibold hover:underline text-rose-800">Sign Up</a>
        </p>
    </div>
</div>

</body>
</html>
