<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Play Questions</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gradient-to-br from-indigo-50 to-blue-100">

<%@ include file="/WEB-INF/views/navBars/userNavBar.jsp" %>

<main class="w-full max-w-2xl bg-white shadow-xl rounded-2xl p-8 justify-center mx-auto mt-28 border border-indigo-200">
    <!-- Question Header -->
    <div class="mb-8 border-b border-indigo-200 pb-6">
        <h1 class="text-2xl font-bold text-indigo-900 mb-2">Question ${questionIndex + 1}</h1>
        <h3 class="text-lg text-indigo-700 mb-4">${question.title}</h3>
        <p class="text-indigo-600 mb-4">Select one of the options below:</p>

        <form action="${pageContext.request.contextPath}/quizzes/playQuiz/${quizId}/${questionIndex}" method="post">
            <div class="space-y-4">
                <div class="flex items-center gap-2">
                    <input type="radio" id="option1" name="selectedOption" value="1" required
                           class="accent-indigo-600">
                    <label for="option1" class="text-indigo-800">${question.option1}</label>
                </div>
                <div class="flex items-center gap-2">
                    <input type="radio" id="option2" name="selectedOption" value="2" required
                           class="accent-indigo-600">
                    <label for="option2" class="text-indigo-800">${question.option2}</label>
                </div>
                <div class="flex items-center gap-2">
                    <input type="radio" id="option3" name="selectedOption" value="3" required
                           class="accent-indigo-600">
                    <label for="option3" class="text-indigo-800">${question.option3}</label>
                </div>
                <div class="flex items-center gap-2">
                    <input type="radio" id="option4" name="selectedOption" value="4" required
                           class="accent-indigo-600">
                    <label for="option4" class="text-indigo-800">${question.option4}</label>
                </div>
            </div>

            <button type="submit"
                class="mt-6 w-full bg-gradient-to-r from-indigo-500 to-purple-500 text-white px-4 py-3 rounded-lg hover:from-purple-600 hover:to-indigo-600 transition-all font-semibold shadow-md">
                <c:choose>
                    <c:when test="${questionIndex + 1 == totalQuestions}">Submit Quiz</c:when>
                    <c:otherwise>Next Question</c:otherwise>
                </c:choose>
            </button>
        </form>
    </div>
</main>
