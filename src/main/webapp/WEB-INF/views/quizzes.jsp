<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Details </title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<div class="max-w-6xl mx-auto p-8 pt-24">
    <h1 class="text-3xl font-bold mb-6 text-center text-olive-900">Quiz Details</h1>
    <table class="min-w-full bg-beige-100 border border-olive-200 rounded-lg overflow-hidden text-center">
        <thead class="bg-gradient-to-r from-amber-200 via-amber-300 to-terracotta-200 text-olive-900">
            <tr>
                <th class="py-3 px-4 border border-olive-300">Quiz ID</th>
                <th class="py-3 px-4 border border-olive-300">User</th>
                <th class="py-3 px-4 border border-olive-300">Quiz Name</th>
                <th class="py-3 px-4 border border-olive-300">Description</th>
                <th class="py-3 px-4 border border-olive-300">No. of Questions</th>
                <th class="py-3 px-4 border border-olive-300">Status</th> <!-- New Status Column -->
                <th class="py-3 px-4 border border-olive-300">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="quiz" items="${quizzes}">
                <tr class="hover:bg-amber-100 transition-colors duration-200 even:bg-amber-50">
                    <td class="py-2 px-4 border border-olive-200">${quiz.quizId}</td>
                    <td class="py-2 px-4 border border-olive-200 font-medium text-olive-800">${quiz.user.fullName}</td>
                    <td class="py-2 px-4 border border-olive-200 font-medium text-olive-800">${quiz.quizName}</td>
                    <td class="py-2 px-4 border border-olive-200 text-olive-700">${quiz.quizDescription}</td>
                    <td class="py-2 px-4 border border-olive-200">${quiz.noOfQuestionsToPlay}</td>

                    <!-- Status Column -->
                    <td class="py-2 px-4 border border-olive-200">
                        <span class="${quiz.status ? 'text-green-700 font-bold' : 'text-red-700 font-bold'}">
                            ${quiz.statusString}
                        </span>
                    </td>

                    <td class="py-2 px-4 border border-olive-200">
                        <div class="flex flex-wrap gap-2 justify-center">
                            <!-- Toggle Status Button -->
                            <a href="${pageContext.request.contextPath}/quizzes/setStatus/${quiz.quizId}"
                               class="${quiz.status ? 'bg-green-700 hover:bg-green-800' : 'bg-red-700 hover:bg-red-800'} text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                Toggle Status
                            </a>

                            <!-- Delete Button -->
                            <a href="<c:url value='/quizzes/deleteQuiz/${quiz.quizId}'/>"
                               onclick="return confirm('Are you sure you want to delete this quiz?');"
                               class="bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                Delete
                            </a>

                            <!-- Add Questions Button -->
                            <a href="<c:url value='/addQuestionView/${quiz.quizId}'/>"
                               class="bg-orange-400 hover:bg-orange-500 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
                                Add Questions
                            </a>

                            <!-- View Questions Button -->
                            <a href="<c:url value='/questions/quizQuestions/${quiz.quizId}'/>"
                               class="bg-rose-400 hover:bg-rose-500 text-white font-semibold py-1 px-3 rounded text-sm shadow-sm">
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
