<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Game</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class = "w-full max-w-2xl bg-white shadow-lg rounded-xl p-6">
<main class="w-full max-w-2xl bg-white shadow-lg rounded-xl p-6">
    <c:forEach var="question" items="${questions}">
        <div class="mb-8 border-b border-gray-200 pb-6">
            <h1 class="text-2xl font-bold text-gray-800 mb-2">${question.title}</h1>
            <p class="text-gray-600 mb-4">Select one of the options below:</p>

            <form method="post" action="submitAnswer" class="space-y-4">
                <fieldset class="space-y-3">
                    <div class="flex items-center p-3 border rounded-lg hover:bg-blue-50 transition">
                        <input type="radio" id="option1" name="answer" value="${question.option1}" class="mr-3">
                        <label for="option1" class="text-gray-700">${question.option1}</label>
                    </div>

                    <div class="flex items-center p-3 border rounded-lg hover:bg-blue-50 transition">
                        <input type="radio" id="option2" name="answer" value="${question.option2}" class="mr-3">
                        <label for="option2" class="text-gray-700">${question.option2}</label>
                    </div>

                    <div class="flex items-center p-3 border rounded-lg hover:bg-blue-50 transition">
                        <input type="radio" id="option3" name="answer" value="${question.option3}" class="mr-3">
                        <label for="option3" class="text-gray-700">${question.option3}</label>
                    </div>

                    <div class="flex items-center p-3 border rounded-lg hover:bg-blue-50 transition">
                        <input type="radio" id="option4" name="answer" value="${question.option4}" class="mr-3">
                        <label for="option4" class="text-gray-700">${question.option4}</label>
                    </div>
                </fieldset>

                <button type="submit" class="w-full bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-600 transition">
                    Submit Answer
                </button>
            </form>
        </div>
    </c:forEach>
</main>
</body>
</html>
