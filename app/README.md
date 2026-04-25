# ✅ TaskMaster (Flutter To-Do App)

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

A beautiful, fully functional Task Management application built with Flutter. This application features a custom gradient UI, allows users to track their daily goals, and dynamically updates task progress in real-time.

---

## 📸 App Preview

*(Take 4 screenshots of your app running on the emulator, save them in an `images` folder in your repository, and update the names below!)*

| Welcome Screen | Task Dashboard | Adding a Task | Tasks Completed |
| :---: | :---: | :---: | :---: |
| <img src="https://github.com/Ismailcyp/ToDoAPP-TaskMaster/blob/main/sub/welc.png?raw=true" width="220"/> | <img src="https://github.com/Ismailcyp/ToDoAPP-TaskMaster/blob/main/sub/tasks.png?raw=true" width="220"/> | <img src="https://github.com/Ismailcyp/ToDoAPP-TaskMaster/blob/main/sub/add.png?raw=true" width="220"/> | <img src="https://github.com/Ismailcyp/ToDoAPP-TaskMaster/blob/main/sub/completed.png?raw=true" width="220"/> |

---

## 🧠 What I Learned: Mastering OOP

**This project taught me Object-Oriented Programming (OOP) in a highly practical environment.** Building this app with Dart required me to treat every piece of UI and data as an object. Specifically, this project helped me lock down core OOP concepts:
* **Classes & Objects:** I created a custom `Task` class to encapsulate the properties (`title` and `status`) of every individual to-do item.
* **Inheritance:** I learned how custom UI components must inherit behaviors from parent classes like `StatelessWidget` and `StatefulWidget`.
* **Encapsulation:** I kept the core state data private and built specific, controlled methods (`addnewtask()`, `delete()`, `changeStatus()`) to interact with and mutate that data safely.
* **Modularity & Reusability:** Instead of writing one massive script, I abstracted the code into separate object files (like `todo-card.dart` and `counter.dart`), making the architecture clean and scalable.

---

## ✨ Features

* **State Management:** Real-time UI updates using `setState()` to track active vs. completed tasks.
* **Dynamic Modals:** Utilizes custom dialog boxes (`showDialog`) to seamlessly add new tasks without leaving the screen.
* **Custom UI/UX:** Features a linear gradient splash screen, glassmorphism-inspired task cards, and conditional text styling (strikethroughs for completed tasks).
* **Progress Tracking:** A custom counter widget that calculates and displays the ratio of completed tasks to total tasks.

