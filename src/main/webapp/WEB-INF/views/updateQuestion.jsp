<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Question</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="flex flex-col md:flex-row justify-center items-start min-h-[calc(100vh-4rem)] px-4 pt-20 gap-8">

    <!-- Left: Current Question Info -->
    <div class="w-full md:w-1/2 bg-beige-100 p-6 rounded-lg shadow-md">
        <h2 class="text-2xl font-bold mb-4 text-olive-900 text-center">Current Question Info</h2>
        <div class="space-y-2 text-olive-800">
            <p><span class="font-semibold">Title:</span> ${question.title}</p>
            <p><span class="font-semibold">Option 1:</span> ${question.option1}</p>
            <p><span class="font-semibold">Option 2:</span> ${question.option2}</p>
            <p><span class="font-semibold">Option 3:</span> ${question.option3}</p>
            <p><span class="font-semibold">Option 4:</span> ${question.option4}</p>
            <p><span class="font-semibold">Correct Option:</span> Option ${question.correctOption}</p>
        </div>
    </div>

    <!-- Right: Update Form -->
    <div class="w-full md:w-1/2 bg-beige-100 p-6 rounded-lg shadow-md">
        <h2 class="text-2xl font-bold mb-4 text-olive-900 text-center">Update Question</h2>
        <form action="${pageContext.request.contextPath}/questions/updateQuestion/${question.questionId}" method="post" class="space-y-4">
            <input type="hidden" name="_method" value="put"/>

            <div>
                <label for="title" class="block mb-1 font-semibold text-olive-800">Question Title:</label>
                <input type="text" id="title" name="title" value="${question.title}" required
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300"/>
            </div>

            <div>
                <label for="option1" class="block mb-1 font-semibold text-olive-800">Option 1:</label>
                <input type="text" id="option1" name="option1" value="${question.option1}" required
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300"/>
            </div>

            <div>
                <label for="option2" class="block mb-1 font-semibold text-olive-800">Option 2:</label>
                <input type="text" id="option2" name="option2" value="${question.option2}" required
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300"/>
            </div>

            <div>
                <label for="option3" class="block mb-1 font-semibold text-olive-800">Option 3:</label>
                <input type="text" id="option3" name="option3" value="${question.option3}" required
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300"/>
            </div>

            <div>
                <label for="option4" class="block mb-1 font-semibold text-olive-800">Option 4:</label>
                <input type="text" id="option4" name="option4" value="${question.option4}" required
                       class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300"/>
            </div>

            <div>
                <label for="correctOption" class="block mb-1 font-semibold text-olive-800">Correct Option:</label>
                <select id="correctOption" name="correctOption" required
                        class="w-full p-2 border border-olive-200 rounded bg-amber-50 focus:outline-none focus:ring-2 focus:ring-olive-300">
                    <option value="1" ${question.correctOption == 1 ? "selected" : ""}>Option 1</option>
                    <option value="2" ${question.correctOption == 2 ? "selected" : ""}>Option 2</option>
                    <option value="3" ${question.correctOption == 3 ? "selected" : ""}>Option 3</option>
                    <option value="4" ${question.correctOption == 4 ? "selected" : ""}>Option 4</option>
                </select>
            </div>

            <button type="submit"
                    class="w-full py-2 bg-orange-800 text-white font-semibold rounded hover:bg-olive-900 transition duration-300">
                Update Question
            </button>
        </form>
    </div>

</div>
</body>
</html>
