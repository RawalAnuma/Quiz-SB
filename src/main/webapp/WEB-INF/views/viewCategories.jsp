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

<!-- Navbar -->
<nav class="bg-blue-600 p-4 text-white shadow-md">
    <div class="container mx-auto flex justify-between items-center">
        <h1 class="text-xl font-bold">Admin Dashboard</h1>
        <ul class="flex space-x-6">
            <li><a href="${pageContext.request.contextPath}/add" class="hover:underline">Add Category</a></li>
            <li><a href="${pageContext.request.contextPath}/categories/getAllCategories" class="hover:underline">View Categories</a></li>
            <li><a href="${pageContext.request.contextPath}/logout" class="hover:underline">Logout</a></li>
        </ul>
    </div>
</nav>

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
