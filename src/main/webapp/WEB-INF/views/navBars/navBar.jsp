<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nav Bar</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<nav class="fixed top-0 w-full bg-gradient-to-r from-yellow-200 via-orange-200 to-rose-200 shadow-md z-50">
  <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
    <a href="${pageContext.request.contextPath}/home" class="flex items-center space-x-3 rtl:space-x-reverse">
        <span class="self-center text-2xl font-bold text-rose-800">Quiz Master</span>
    </a>

    <button data-collapse-toggle="navbar-default" type="button"
            class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-rose-800 rounded-lg md:hidden hover:bg-white/30 focus:outline-none focus:ring-2 focus:ring-rose-500"
            aria-controls="navbar-default" aria-expanded="false">
        <span class="sr-only">Open main menu</span>
        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
        </svg>
    </button>

    <div class="hidden w-full md:block md:w-auto" id="navbar-default">
      <ul class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-white/20 rounded-lg bg-white/10 md:flex-row md:space-x-6 md:mt-0 md:border-0 md:bg-transparent">
        <li>
            <a href="${pageContext.request.contextPath}/home"
               class="block py-2 px-4 rounded-lg text-rose-900 font-semibold bg-gradient-to-r from-amber-200 to-orange-300 hover:from-orange-300 hover:to-amber-200 transition-all duration-300">
               Home
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/signup"
               class="block py-2 px-4 rounded-lg text-rose-900 font-semibold bg-gradient-to-r from-rose-100 to-rose-300 hover:from-rose-300 hover:to-rose-100 transition-all duration-300">
               Sign Up
            </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>
