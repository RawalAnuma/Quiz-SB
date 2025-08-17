<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-50">

<nav class="fixed top-0 w-full z-50 bg-gradient-to-r from-amber-200 via-amber-300 to-yellow-200 shadow-md">
    <div class="max-w-7xl mx-auto px-4">
        <div class="flex justify-between items-center h-16">

            <!-- Logo / Dashboard Name -->
            <div class="flex items-center">
                <span class="text-olive-900 font-bold text-xl">Admin Dashboard</span>
            </div>

            <!-- Navigation Links (centered) -->
            <div class="hidden md:flex space-x-16">
                <a href="${pageContext.request.contextPath}/adminDashboard#homeContent"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">Home</a>
                <a href="${pageContext.request.contextPath}/add"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">Add Category</a>
                <a href="${pageContext.request.contextPath}/categories/categoriesForAdmin"
                   class="text-olive-800 hover:text-terracotta-700 hover:underline font-semibold">View Categories</a>
            </div>

            <!-- Logout Button on the right -->
            <div>
                <a href="${pageContext.request.contextPath}/user/logout"
                   class="bg-orange-500 hover:bg-orange-800 text-white px-4 py-2 rounded font-semibold">
                   Logout
                </a>
            </div>
        </div>
    </div>
</nav>

</body>
</html>
