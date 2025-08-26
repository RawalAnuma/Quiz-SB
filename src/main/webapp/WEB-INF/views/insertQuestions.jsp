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
<div class="flex justify-center items-center min-h-[80vh] px-4 pt-24">
    <div class="bg-amber-100 rounded-2xl shadow-xl p-8 w-full max-w-md border border-amber-200">
        <h1 class="text-3xl font-bold mb-6 text-center text-emerald-700">Insert Questions</h1>

        <form action="${pageContext.request.contextPath}/questions" method="post" class="space-y-5">
            <input type="hidden" name="quizId" value="${quizId}" />

            <!-- Question Title -->
            <div>
                <label for="title" class="block mb-2 font-semibold text-olive-900">Question Title</label>
                <input type="text" id="title" name="title" required
                       class="w-full px-4 py-2 border border-olive-200 rounded-lg bg-amber-50 focus:outline-none focus:ring-2 focus:ring-emerald-400" />
            </div>

            <!-- Options -->
            <c:forEach var="i" begin="1" end="4">
                <div>
                    <label for="option${i}" class="block mb-2 font-semibold text-olive-900">Option ${i}</label>
                    <input type="text" id="option${i}" name="option${i}" required
                           class="w-full px-4 py-2 border border-olive-200 rounded-lg bg-amber-50 focus:outline-none focus:ring-2 focus:ring-emerald-400" />
                </div>
            </c:forEach>

            <!-- Correct Option -->
            <div>
                <label for="correctOption" class="block mb-2 font-semibold text-olive-900">Correct Option</label>
                <select id="correctOption" name="correctOption" required
                        class="w-full px-4 py-2 border border-olive-200 rounded-lg bg-amber-50 focus:outline-none focus:ring-2 focus:ring-emerald-400">
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                    <option value="4">Option 4</option>
                </select>
            </div>

            <!-- Submit Button -->
            <button type="submit"
                    class="w-full py-3 rounded-xl font-semibold text-white bg-gradient-to-r from-emerald-500 via-teal-500 to-green-600 hover:from-green-600 hover:to-emerald-500 transition-all duration-300 shadow-md">
                ➕ Add Question
            </button>
        </form>
    </div>
</div>

</body>
</html>
