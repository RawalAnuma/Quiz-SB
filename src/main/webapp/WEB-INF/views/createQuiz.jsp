<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Quiz</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 font-sans">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="flex justify-center items-center min-h-screen pt-20">
    <div class="w-full max-w-md bg-white p-8 rounded-xl shadow-lg border border-teal-200">
        <h1 class="text-2xl font-bold mb-6 text-emerald-700 text-center">Create a Quiz</h1>

        <form action="${pageContext.request.contextPath}/quizzes" method="post" class="space-y-4">

            <!-- Quiz Name -->
            <div>
                <label for="quizName" class="block mb-2 text-gray-700 font-semibold">Quiz Name:</label>
                <input type="text" id="quizName" name="quizName"
                       class="w-full p-2 border border-teal-300 rounded bg-gray-50 focus:outline-none focus:ring-2 focus:ring-emerald-400"
                       required>
            </div>

            <!-- Quiz Description -->
            <div>
                <label for="quizDescription" class="block mb-2 text-gray-700 font-semibold">Quiz Description:</label>
                <textarea id="quizDescription" name="quizDescription"
                          class="w-full p-2 border border-teal-300 rounded bg-gray-50 focus:outline-none focus:ring-2 focus:ring-emerald-400"
                          required></textarea>
            </div>

            <!-- Number of Questions -->
            <div>
                <label for="noOfQuestionsToPlay" class="block mb-2 text-gray-700 font-semibold">No of Questions To Play:</label>
                <input type="number" id="noOfQuestionsToPlay" name="noOfQuestionsToPlay"
                       class="w-full p-2 border border-teal-300 rounded bg-gray-50 focus:outline-none focus:ring-2 focus:ring-emerald-400"
                       required>
            </div>

            <!-- Category -->
            <div>
                <label for="categoryId" class="block mb-2 text-gray-700 font-semibold">Select Category:</label>
                <select id="categoryId" name="categoryId"
                        class="w-full p-2 border border-teal-300 rounded bg-gray-50 focus:outline-none focus:ring-2 focus:ring-emerald-400"
                        required>
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.categoryId}">${category.categoryName}</option>
                    </c:forEach>
                </select>
            </div>

            <!-- Submit Button -->
            <button type="submit"
                    class="w-full py-2 rounded-lg font-semibold text-white bg-gradient-to-r from-emerald-500 via-teal-500 to-green-600 hover:from-emerald-600 hover:via-teal-600 hover:to-green-700 shadow-md transition-all duration-300">
                Create Quiz
            </button>
        </form>
    </div>
</div>

</body>
</html>
