<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta charset="UTF-8">
    <title>Create Quiz</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="flex justify-center items-center min-h-screen pt-20">
    <div class="w-full max-w-md bg-amber-100 p-8 rounded-xl shadow-lg">
        <h1 class="text-2xl font-bold mb-6 text-olive-900 text-center">Create a Quiz</h1>
        <form action="${pageContext.request.contextPath}/quizzes" method="post" class="space-y-4">

            <div>
                <label for="quizName" class="block mb-2 text-olive-800 font-semibold">Quiz Name:</label>
                <input type="text" id="quizName" name="quizName"
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" required>
            </div>

            <div>
                <label for="quizDescription" class="block mb-2 text-olive-800 font-semibold">Quiz Description:</label>
                <textarea id="quizDescription" name="quizDescription"
                          class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" required></textarea>
            </div>

            <div>
                <label for="noOfQuestionsToPlay" class="block mb-2 text-olive-800 font-semibold">No of Questions To Play:</label>
                <input type="number" id="noOfQuestionsToPlay" name="noOfQuestionsToPlay"
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" required>
            </div>

            <div>
                <label for="categoryId" class="block mb-2 text-olive-800 font-semibold">Select Category:</label>
                <select id="categoryId" name="categoryId"
                        class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" required>
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.categoryId}">${category.categoryName}</option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit"
                    class="w-full py-2 rounded-lg font-semibold text-olive-800 bg-gradient-to-r from-blue-100 to-terracotta-400 hover:from-terracotta-400 hover:to-amber-200 transition-all duration-300">
                Create Quiz
            </button>
        </form>
    </div>
</div>

</body>
</html>
