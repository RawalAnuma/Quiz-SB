<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Questions</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="max-w-6xl mx-auto px-6 py-10 pt-28">
    <h1 class="text-3xl font-bold mb-6 text-center text-emerald-800">Quiz Questions</h1>
    <div class="overflow-x-auto rounded-lg shadow-md">
        <table class="min-w-full border border-emerald-200 bg-emerald-50">
            <thead class="bg-gradient-to-r from-emerald-200 via-teal-300 to-green-300 text-emerald-900">
                <tr class="text-center">
                    <th class="py-3 px-4 border border-emerald-200">Question ID</th>
                    <th class="py-3 px-4 border border-emerald-200">Question Title</th>
                    <th class="py-3 px-4 border border-emerald-200">Option 1</th>
                    <th class="py-3 px-4 border border-emerald-200">Option 2</th>
                    <th class="py-3 px-4 border border-emerald-200">Option 3</th>
                    <th class="py-3 px-4 border border-emerald-200">Option 4</th>
                    <th class="py-3 px-4 border border-emerald-200">Correct Option</th>
                    <th class="py-3 px-4 border border-emerald-200">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="question" items="${questions}">
                    <tr class="text-center even:bg-emerald-50 odd:bg-emerald-100 transition-colors duration-200">
                        <td class="py-2 px-4 border border-emerald-200">${question.questionId}</td>
                        <td class="py-2 px-4 border border-emerald-200">${question.title}</td>
                        <td class="py-2 px-4 border border-emerald-200">${question.option1}</td>
                        <td class="py-2 px-4 border border-emerald-200">${question.option2}</td>
                        <td class="py-2 px-4 border border-emerald-200">${question.option3}</td>
                        <td class="py-2 px-4 border border-emerald-200">${question.option4}</td>
                        <td class="py-2 px-4 border border-emerald-200">${question.correctOption}</td>
                        <td class="py-2 px-4 border border-emerald-200">
                            <a href="${pageContext.request.contextPath}/questions/updateQuestionView/${question.questionId}"
                               class="inline-block bg-gradient-to-r from-emerald-500 via-teal-500 to-green-600 hover:opacity-90 text-white font-semibold py-1 px-3 rounded shadow">
                                Update
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
