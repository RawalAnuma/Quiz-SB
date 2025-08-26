<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 font-sans">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="max-w-6xl mx-auto p-8 pt-24">
    <h1 class="text-3xl font-bold mb-6 text-center text-emerald-700">Quiz Details</h1>

    <table class="min-w-full bg-white border border-teal-200 rounded-lg overflow-hidden text-center shadow">
        <thead class="bg-gradient-to-r from-emerald-500 via-teal-500 to-green-600 text-white">
            <tr>
                <th class="py-3 px-4 border border-teal-300">Quiz ID</th>
                <th class="py-3 px-4 border border-teal-300">User</th>
                <th class="py-3 px-4 border border-teal-300">Quiz Name</th>
                <th class="py-3 px-4 border border-teal-300">Description</th>
                <th class="py-3 px-4 border border-teal-300">No. of Questions</th>
                <th class="py-3 px-4 border border-teal-300">Status</th>
                <th class="py-3 px-4 border border-teal-300">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="quiz" items="${quizzes}">
                <tr class="hover:bg-teal-50 transition-colors duration-200 even:bg-gray-50">
                    <td class="py-2 px-4 border border-teal-200">${quiz.quizId}</td>
                    <td class="py-2 px-4 border border-teal-200 font-medium text-gray-700">${quiz.user.fullName}</td>
                    <td class="py-2 px-4 border border-teal-200 font-medium text-gray-700">${quiz.quizName}</td>
                    <td class="py-2 px-4 border border-teal-200 text-gray-600">${quiz.quizDescription}</td>
                    <td class="py-2 px-4 border border-teal-200">${quiz.noOfQuestionsToPlay}</td>

                    <!-- Status Column -->
                    <td class="py-2 px-4 border border-teal-200">
                        <span class="${quiz.status ? 'text-emerald-600 font-bold' : 'text-rose-600 font-bold'}">
                            ${quiz.statusString}
                        </span>
                    </td>

                    <td class="py-2 px-4 border border-teal-200">
                        <div class="flex flex-wrap gap-2 justify-center">

                            <!-- Toggle Status Button -->
                            <a href="${pageContext.request.contextPath}/quizzes/setStatus/${quiz.quizId}"
                               class="${quiz.status ? 'bg-emerald-600 hover:bg-emerald-700' : 'bg-rose-600 hover:bg-rose-700'} text-white font-semibold py-1 px-3 rounded text-sm shadow">
                                Toggle Status
                            </a>

                            <!-- Delete Button -->
                            <a href="<c:url value='/quizzes/deleteQuiz/${quiz.quizId}'/>"
                               onclick="return confirm('Are you sure you want to delete this quiz?');"
                               class="bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-1 px-3 rounded text-sm shadow">
                                Delete
                            </a>

                            <!-- Add Questions Button -->
                            <a href="<c:url value='/addQuestionView/${quiz.quizId}'/>"
                               class="bg-teal-500 hover:bg-teal-600 text-white font-semibold py-1 px-3 rounded text-sm shadow">
                                Add Questions
                            </a>

                            <!-- View Questions Button -->
                            <a href="<c:url value='/questions/quizQuestions/${quiz.quizId}'/>"
                               class="bg-cyan-500 hover:bg-cyan-600 text-white font-semibold py-1 px-3 rounded text-sm shadow">
                                View Questions
                            </a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
