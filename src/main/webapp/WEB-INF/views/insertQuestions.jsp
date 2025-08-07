<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Questions</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="form-container" style="font-family: Arial, sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="container" style="width: 600px; background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1);">
        <div class="form">
            <form action="${pageContext.request.contextPath}/questions/addQuestion" method="post">
                <h1 class="text-2xl font-bold mb-4">Insert Questions</h1>
                <input type="hidden" name="quizId" value="${quizId}"/><br>

                <label for="title" class="block mb-2">Question Title:</label>
                <input type="text" id="title" name="title" class="w-full p-2 mb-4 border rounded" required><br>

                <label for = "option1" class = "block mb-2">Option 1:</label>
                <input type="text" id="option1" name="option1" class="w-full p-2 mb-4 border rounded" required><br>

                <label for = "option2" class = "block mb-2">Option 2:</label>
                <input type="text" id="option2" name="option2" class="w-full p-2 mb-4 border rounded" required><br>

                <label for = "option3" class = "block mb-2">Option 3:</label>
                <input type="text" id="option3" name="option3" class="w-full p-2 mb-4 border rounded" required><br>

                <label for = "option4" class = "block mb-2">Option 4:</label>
                <input type="text" id="option4" name="option4" class="w-full p-2 mb-4 border rounded" required><br>

                <label for="correctOption" class="block mb-2">Correct Option:</label>
                <select name="correctOption" id="correctOption" class="w-full p-2 mb-4 border rounded" required>
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                    <option value="4">Option 4</option>
                </select><br>
                <input type="submit" value="Add  Question" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-600">
            </form>
        </div>
    </div>

</div>
</body>
</html>
