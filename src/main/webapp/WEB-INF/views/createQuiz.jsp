<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="form-container" style="font-family: Arial, sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="container" style="width: 400px; background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1);">
        <div class="form">
            <form action="${pageContext.request.contextPath}/quizzes/addQuiz" method="post">
                <h1 class="text-2xl font-bold mb-4">Create a Quiz</h1>
                <label for="quizName" class="block mb-2">Quiz Name:</label>
                <input type="text" id="quizName" name="quizName" class="w-full p-2 mb-4 border rounded" required><br>

                <label for="quizDescription" class="block mb-2">Quiz Description:</label>
                <textarea id="quizDescription" name="quizDescription" class="w-full p-2 mb-4 border rounded" required></textarea><br>

                <label for = "noOfQuestionsToPlay" class = "block mb-2"> No of Questions To Play:</label>
                <input type ="number" id="noOfQuestionsToPlay" name="noOfQuestionsToPlay" class="w-full p-2 mb-4 border rounded" required><br>

                <label for = "categoryId" class = "block mb-2"> Select Category:</label>
                <select name = "categoryId" id = "categoryId" class = "w-full p-2 mb-4 border rounded" required>
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.categoryId}">${category.categoryName}</option>
                    </c:forEach>
                </select><br>

                <input type="submit" value="Create Quiz" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">
            </form>
        </div>
    </div>
</body>
</html>
