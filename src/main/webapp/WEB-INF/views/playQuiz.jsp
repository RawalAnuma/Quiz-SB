<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quizzes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50 min-h-screen">

    <%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

    <div class="container mx-auto px-6 py-10 pt-28">
        <div class="bg-beige-100 p-8 rounded-2xl shadow-lg border border-amber-200">
            <h1 class="text-3xl font-bold mb-8 text-center text-olive-900">📚 Available Quizzes</h1>

            <div class="overflow-x-auto rounded-lg border border-amber-200 shadow-md">
                <table class="min-w-full text-sm text-left">
                    <thead class="bg-gradient-to-r from-amber-200 via-amber-300 to-terracotta-200 text-olive-900 uppercase text-sm">
                        <tr>
                            <th class="py-3 px-6">Quiz ID</th>
                            <th class="py-3 px-6">Quiz Name</th>
                            <th class="py-3 px-6">Description</th>
                            <th class="py-3 px-6 text-center">No Of Questions</th>
                            <th class="py-3 px-6 text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-amber-200">
                        <c:forEach var="quiz" items="${availableQuizzes}">
                            <tr class="hover:bg-amber-100 transition-colors duration-200">
                                <td class="py-3 px-6 text-olive-900">${quiz.quizId}</td>
                                <td class="py-3 px-6 font-semibold text-olive-900">${quiz.quizName}</td>
                                <td class="py-3 px-6 text-olive-800">${quiz.quizDescription}</td>
                                <td class="py-3 px-6 text-center font-medium text-olive-900">${quiz.noOfQuestionsToPlay}</td>
                                <c:set var="questionIndex" value="0"/>
                                <td class="py-3 px-6 text-center">
                                    <c:choose>
                                        <c:when test="${quiz.status}">
                                            <a href="${pageContext.request.contextPath}/quizzes/playQuiz/${quiz.quizId}/${questionIndex}"
                                               class="inline-block bg-amber-400 hover:bg-terracotta-300 text-olive-900 font-semibold text-sm py-2 px-5 rounded-lg shadow-md transition-all duration-300">
                                               ▶ Play
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="inline-block bg-gray-400 text-amber-100 text-sm font-semibold py-2 px-5 rounded-lg opacity-60 cursor-not-allowed">
                                                🚫 Inactive
                                            </span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
