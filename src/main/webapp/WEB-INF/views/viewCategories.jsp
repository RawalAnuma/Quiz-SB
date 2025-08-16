<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Categories</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
<%@ include file="/WEB-INF/views/navBars/adminNavBar.jsp" %>

<!-- Main content -->
<div class="container mx-auto mt-10 px-4">
    <h2 class="text-3xl font-bold mb-6 text-center text-gray-800">📂 All Categories</h2>

    <div class="overflow-x-auto shadow-lg rounded-xl bg-white">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-blue-600 text-white">
                <tr>
                    <th class="py-3 px-6 text-left">Category ID</th>
                    <th class="py-3 px-6 text-left">Category Name</th>
                    <th class="py-3 px-6 text-left">Description</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
                <c:forEach var="category" items="${categories}">
                    <tr class="hover:bg-gray-50 transition">
                        <td class="py-3 px-6">${category.categoryId}</td>
                        <td class="py-3 px-6 font-medium text-blue-700">${category.categoryName}</td>
                        <td class="py-3 px-6">${category.categoryDescription}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="mt-6 text-center">
        <a href="${pageContext.request.contextPath}/adminDashboard"
           class="inline-block bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-lg shadow-md transition">
            ⬅ Back to Dashboard
        </a>
    </div>
</div>

</body>
</html>
