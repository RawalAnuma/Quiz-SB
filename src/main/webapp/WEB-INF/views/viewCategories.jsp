<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="container mx-auto mt-8">
    <h2 class="text-2xl font-bold mb-4">All Categories</h2>

    <table class="w-full bg-white rounded-lg shadow-lg overflow-hidden">
        <thead class="bg-blue-500 text-white">
            <tr>
                <th class="py-3 px-4 text-left">Category ID</th>
                <th class="py-3 px-4 text-left">Category Name</th>
                <th class="py-3 px-4 text-left">Description</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="category" items="${categories}">
                <tr class="border-b hover:bg-gray-100">
                    <td class="py-2 px-4">${category.categoryId}</td>
                    <td class="py-2 px-4">${category.categoryName}</td>
                    <td class="py-2 px-4">${category.categoryDescription}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
