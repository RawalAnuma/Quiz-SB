<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Categories</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50 font-sans">
<%@ include file="/WEB-INF/views/navBars/adminNavBar.jsp" %>

<!-- Main content -->
<div class="container mx-auto mt-10 px-4 pt-20">
    <h2 class="text-3xl font-bold mb-6 text-center text-olive-900">📂 All Categories</h2>

    <div class="overflow-x-auto shadow-xl rounded-2xl bg-amber-100 border border-amber-300">
        <table class="min-w-full divide-y divide-amber-300 text-olive-900">
            <thead class="bg-olive-700 text-beige-100 uppercase">
                <tr>
                    <th class="py-3 px-6 text-left">Category ID</th>
                    <th class="py-3 px-6 text-left">Category Name</th>
                    <th class="py-3 px-6 text-left">Description</th>
                </tr>
            </thead>
            <tbody class="divide-y divide-amber-300">
                <c:forEach var="category" items="${categories}">
                    <tr class="hover:bg-olive-200 transition">
                        <td class="py-3 px-6 font-medium">${category.categoryId}</td>
                        <td class="py-3 px-6 font-semibold text-terracotta-700">${category.categoryName}</td>
                        <td class="py-3 px-6">${category.categoryDescription}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="mt-6 mb-10 text-center">
        <a href="${pageContext.request.contextPath}/adminDashboard"
           class="inline-block bg-blue-200 hover:bg-orange-200 text-beige-100 px-6 py-3 rounded-lg shadow-md transition">
            ⬅ Back to Dashboard
        </a>
    </div>
</div>

</body>
</html>
