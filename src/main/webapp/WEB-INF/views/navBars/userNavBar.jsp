<body class="bg-gray-50">
<nav class="fixed top-0 w-full z-50 bg-gradient-to-r from-emerald-500 via-teal-500 to-green-600 shadow-md">
    <div class="max-w-7xl mx-auto px-4">
        <div class="flex justify-between items-center h-16">

            <!-- Logo -->
            <a href="/userDashboard"
               class="text-white font-bold text-xl hover:text-lime-200">
                User Dashboard
            </a>

            <!-- Links -->
            <div class="hidden md:flex space-x-10">

                <a href="/userDashboard"
                   class="text-white hover:text-lime-200 font-semibold">
                    Home
                </a>

                <a href="/addQuiz"
                   class="text-white hover:text-lime-200 font-semibold">
                    Create Quiz
                </a>

                <a href="/quizzes/quizById"
                   class="text-white hover:text-lime-200 font-semibold">
                    My Quizzes
                </a>

                <a href="/quizzes/allQuizzes"
                   class="text-white hover:text-lime-200 font-semibold">
                    Play Quiz
                </a>

                <a href="/scores/myScores"
                   class="text-white hover:text-lime-200 font-semibold">
                    My Scores
                </a>

                <a href="/scores/allScores"
                   class="text-white hover:text-lime-200 font-semibold">
                    Scoreboard
                </a>

            </div>

            <!-- Logout -->
            <a href="/logout"
               class="bg-rose-500 hover:bg-rose-700 text-white px-4 py-2 rounded-lg font-semibold">
                Logout
            </a>

        </div>
    </div>
</nav>
</body>
