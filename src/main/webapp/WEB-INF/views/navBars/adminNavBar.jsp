
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<!-- Navbar -->
<nav class="bg-blue-600 p-4 text-white shadow-md">
    <div class="container mx-auto flex justify-between items-center">
        <h1 class="text-xl font-bold">Admin Dashboard</h1>
        <ul class="flex space-x-6">
            <li><a href="${pageContext.request.contextPath}/adminDashboard#homeContent" class="hover:underline">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/add" class="hover:underline">Add Category</a></li>
            <li><a href="${pageContext.request.contextPath}/categories/categoriesForAdmin" class="hover:underline">View Categories</a></li>
            <li><a href="${pageContext.request.contextPath}/user/logout" class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded hover:underline">Logout</a></li>
        </ul>
    </div>
</nav>

</body>
</html>
