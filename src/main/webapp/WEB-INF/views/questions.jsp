<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Questions</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="max-w-6xl mx-auto px-6 py-10">
    <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Quiz Questions</h1>
    <div class="overflow-x-auto">
        <table class="min-w-full border border-gray-300 bg-white shadow-md rounded-lg">
            <thead class="bg-blue-500 text-white">
                <tr>
                    <th class="py-3 px-4 border-b">Question ID</th>
                    <th class="py-3 px-4 border-b">Question Title</th>
                    <th class="py-3 px-4 border-b">Option 1</th>
                    <th class="py-3 px-4 border-b">Option 2</th>
                    <th class="py-3 px-4 border-b">Option 3</th>
                    <th class="py-3 px-4 border-b">Option 4</th>
                    <th class="py-3 px-4 border-b">Correct Option</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="question" items="${questions}">
                    <tr class="text-center hover:bg-gray-100">
                        <td class="py-2 px-4 border-b">${question.questionId}</td>
                        <td class="py-2 px-4 border-b">${question.title}</td>
                        <td class="py-2 px-4 border-b">${question.option1}</td>
                        <td class="py-2 px-4 border-b">${question.option2}</td>
                        <td class="py-2 px-4 border-b">${question.option3}</td>
                        <td class="py-2 px-4 border-b">${question.option4}</td>
                        <td class="py-2 px-4 border-b">${question.correctOption}</td>
                        <td class="py-2 px-4 border-b">
                            <a href="${pageContext.request.contextPath}/updateQuestionView/${question.questionId}"
                               class="inline-block bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-1 px-3 rounded">
                                Update
                            </a>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
