<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="max-w-6xl mx-auto p-8">
    <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Quiz Details</h1>

    <div class="overflow-x-auto rounded-lg shadow-lg">
        <table class="min-w-full bg-white border border-gray-200 rounded-lg overflow-hidden">
            <thead class="bg-gradient-to-r from-blue-500 to-blue-600 text-white">
            <tr>
                <th class="py-3 px-4 text-left">Quiz ID</th>
                <th class="py-3 px-4 text-left">Quiz Name</th>
                <th class="py-3 px-4 text-left">Description</th>
                <th class="py-3 px-4 text-left">No. of Questions</th>
                <th class="py-3 px-4 text-left">Actions</th>
            </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
            <c:forEach var="quiz" items="${quizzes}">
                <tr class="hover:bg-gray-100 transition-colors duration-200 even:bg-gray-50">
                    <td class="py-2 px-4">${quiz.quizId}</td>
                    <td class="py-2 px-4 font-medium text-gray-700">${quiz.quizName}</td>
                    <td class="py-2 px-4 text-gray-600">${quiz.quizDescription}</td>
                    <td class="py-2 px-4 text-center">${quiz.noOfQuestionsToPlay}</td>
                    <td class="py-2 px-4">

                        <div class="flex flex-wrap gap-2 justify-center">

                            <!-- Status Button -->
                            <c:choose>
                                <c:when test="${quiz.status == 'active'}">
                                    <a href="${pageContext.request.contextPath}/quizzes/setStatus/${quiz.quizId}/${quiz.status}"
                                       class="bg-green-500 hover:bg-green-600 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                        Active
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageContext.request.contextPath}/quizzes/setStatus/${quiz.quizId}/${quiz.status}"
                                       class="bg-red-500 hover:bg-red-600 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                        Inactive
                                    </a>
                                </c:otherwise>
                            </c:choose>

                            <!-- Delete Button -->
                            <a href="<c:url value='/quizzes/deleteQuiz/${quiz.quizId}'/>"
                               onclick="return confirm('Are you sure you want to delete this quiz?');"
                               class="bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                Delete
                            </a>

                            <!-- Add Questions Button -->
                            <a href="<c:url value='/addQuestionView/${quiz.quizId}'/>"
                               class="bg-green-500 hover:bg-green-600 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                Add Questions
                            </a>

                            <!-- View Questions Button -->
                            <a href="<c:url value='/questions/getQuestions/${quiz.quizId}'/>"
                               class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                View Questions
                            </a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
