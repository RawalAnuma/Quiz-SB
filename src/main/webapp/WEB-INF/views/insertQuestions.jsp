<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Insert Questions</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<!-- Form Container -->
<div class="flex justify-center items-center min-h-[80vh] px-4 pt-20">
    <div class="bg-amber-100 rounded-xl shadow-lg p-8 w-full max-w-md">
        <h1 class="text-3xl font-semibold mb-6 text-center text-olive-900">Insert Questions</h1>
        <form action="${pageContext.request.contextPath}/questions" method="post" class="space-y-5">
            <input type="hidden" name="quizId" value="${quizId}" />

            <div>
                <label for="title" class="block mb-2 font-medium text-olive-800">Question Title:</label>
                <input type="text" id="title" name="title" required
                       class="w-full px-4 py-2 border border-olive-200 rounded-md bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" />
            </div>

            <div>
                <label for="option1" class="block mb-2 font-medium text-olive-800">Option 1:</label>
                <input type="text" id="option1" name="option1" required
                       class="w-full px-4 py-2 border border-olive-200 rounded-md bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" />
            </div>

            <div>
                <label for="option2" class="block mb-2 font-medium text-olive-800">Option 2:</label>
                <input type="text" id="option2" name="option2" required
                       class="w-full px-4 py-2 border border-olive-200 rounded-md bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" />
            </div>

            <div>
                <label for="option3" class="block mb-2 font-medium text-olive-800">Option 3:</label>
                <input type="text" id="option3" name="option3" required
                       class="w-full px-4 py-2 border border-olive-200 rounded-md bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" />
            </div>

            <div>
                <label for="option4" class="block mb-2 font-medium text-olive-800">Option 4:</label>
                <input type="text" id="option4" name="option4" required
                       class="w-full px-4 py-2 border border-olive-200 rounded-md bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300" />
            </div>

            <div>
                <label for="correctOption" class="block mb-2 font-medium text-olive-800">Correct Option:</label>
                <select id="correctOption" name="correctOption" required
                        class="w-full px-4 py-2 border border-olive-200 rounded-md bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300">
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                    <option value="4">Option 4</option>
                </select>
            </div>

            <button type="submit"
                    class="w-full py-3 rounded-lg font-semibold text-olive-900 bg-gradient-to-r from-amber-200 to-terracotta-400 hover:from-terracotta-400 hover:to-amber-200 transition-all duration-300">
                Add Question
            </button>
        </form>
    </div>
</div>

</body>
</html>
