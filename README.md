# 🧠 Quiz Application

This is a backend-driven quiz application that allows users to take quizzes based on categories, submit answers, and track scores.

---

## 📁 Project Structure Overview

The application contains the following main entities:

1. **Category**: Defines the topics under which quizzes are organized.
2. **Quiz**: Represents a quiz created under a specific category.
3. **Question**: Each quiz contains multiple questions with multiple choice options.
4. **User**: People who register to take quizzes (includes admin).
5. **Score**: Tracks quiz attempts and scores achieved by users.

---

## 🗂️ Database Schema

### **Category**
| Column              | Type        | Description                         |
|---------------------|-------------|-------------------------------------|
| categoryId (PK)     | int         | Unique identifier for the category  |
| categoryName        | varchar     | Name of the category                |
| categoryDescription | varchar     | Description of the category         |
| createdDate         | datetime    | Timestamp when created              |

### **Quiz**
| Column               | Type     | Description                                |
|----------------------|----------|--------------------------------------------|
| quizId (PK)          | int      | Unique quiz ID                             |
| categoryId (FK)      | int      | Reference to the category                  |
| userId (FK)          | int      | Creator (admin) of the quiz                |
| quizName             | varchar  | Name of the quiz                           |
| quizDescription      | varchar  | Description of the quiz                    |
| noOfQuestionsToPlay  | int      | Number of questions to include in a play   |
| createdDate          | datetime | Creation date                              |
| status               | varchar  | `active` or `inactive`                     |

### **Question**
| Column         | Type     | Description                  |
|----------------|----------|------------------------------|
| questionId (PK)| int      | Unique question ID           |
| title          | varchar  | The question itself          |
| option1        | int      | First answer option          |
| option2        | int      | Second answer option         |
| option3        | int      | Third answer option          |
| option4        | int      | Fourth answer option         |
| correctOption  | int      | The correct answer           |
| quizId (FK)    | int      | Foreign key linking the quiz |

### **User**
| Column     | Type     | Description                    |
|------------|----------|--------------------------------|
| userId (PK)| int      | Unique user ID                 |
| fullName   | varchar  | Full name of the user          |
| userName   | varchar  | Login username                 |
| password   | varchar  | Encrypted password             |
| isAdmin    | boolean  | True for admin users           |
| joinedDate | datetime | User registration date         |

### **Score**
| Column      | Type     | Description                                 |
|------------ |--------- |---------------------------------------------|
| scoreId (PK)| int      | Unique score ID                             |
| userId (FK) | int      | Who played the quiz                         |
| quizId (FK) | int      | Which quiz was played                       |
| score       | int      | Number of correct answers                   |
| playedDate  | datetime | When the quiz was played                    |

---

## 🔁 Business Rules
### 📚 Category & Quiz
- Each quiz must belong to a valid category.
- A category can contain multiple quizzes.
- Categories must be created by admin.

### 🧩 Quiz & Question
- A quiz can contain multiple questions.
- Every question must be linked to a specific quiz.
- A quiz must have at least one question before being made active.
- Questions must have:
  - A valid title
  - Four answer options (option1–option4)
  - One correct option, which must match one of the provided options.

### 🧑‍💼 User & Quiz
- Only admin can create, update, or delete categories of quizzes.
- Regular users can create quizzes and also play active quizzes.
- Each quiz has a creator (userId).


### 🧑‍💼 User & Score
- A user can play multiple quizzes.
- Each attempt is recorded in the `scores` table.
- Each score must be linked to one existing user.
 

### 📝 Quiz & Score
- A quiz can be played by multiple users.
- Each score record links to one specific quiz.
- `Score` must not exceed the quiz’s `noOfQuestionsToPlay`.
- No score can be recorded for a quiz marked as `inactive`.

---

## 🚀 Features

- User Registration & Login
- Admins can create categories.
- Users can create quizzes and play quizzes.
- Scores are recorded and retrievable for history or scoreboard.

---



