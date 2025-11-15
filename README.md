📱 Task Manager App – Flutter CRUD with Back4App (BaaS)

A modern, cloud-enabled Task Management Application built with Flutter and Back4App (Parse Server).
This project demonstrates User Login, Task CRUD operations, and real-time cloud syncing using BaaS — without writing any backend code.

🌟 Project Overview

This Flutter app enables users to:

✔ Log in using Back4App Authentication
✔ Add Tasks
✔ View Tasks
✔ Edit Tasks
✔ Delete Tasks
✔ Store all data securely in Back4App Cloud Database

Only three essential pages are used:

File	Purpose
main.dart	App entry + Back4App initialization
login_page.dart	User login screen
task_page.dart	CRUD operations UI

This keeps the project lightweight and ideal for academic submission.

🚀 Tech Stack
Layer	Technology
Frontend	Flutter (Dart)
Backend	Back4App (Parse Server)
Database	Back4App Cloud Database
IDE	VS Code / Android Studio
Version Control	GitHub
🛠️ Features
🔐 User Login

Email & Password authentication

Back4App Parse User login

Session automatically managed

📝 Task CRUD

Create new tasks

Display all tasks

Update/edit task details

Delete tasks

Mark task as completed (Boolean field)

Real-time syncing with cloud

🧹 Minimal Project — Only Necessary Files

Maintains simplicity by using only:

main.dart
login_page.dart
task_page.dart

📂 Project Structure
lib/
│
├── main.dart          // App initialization + routes
├── login_page.dart    // Login UI + Parse login logic
└── task_page.dart     // Complete CRUD functionality

🏛️ Architecture
Flutter UI ----> Parse SDK ----> Back4App Cloud Database
     |                |
     |                └── Authentication
     |                └── CRUD (Create, Read, Update, Delete)
     |
     └── State Management (setState)

📸 Google Drive link containing App Screenshots PPT and installation Document

     # https://drive.google.com/drive/folders/1LGPX5E14DPv6uoVybVdd3xe67OS-LUAf?usp=sharing 

Task List	

Add / Edit Task	
🔧 Setup & Installation
1️⃣ Install Flutter

Follow: https://docs.flutter.dev/get-started/install

Validate installation:

flutter doctor

2️⃣ Clone the Repository
git clone https://github.com/Ruchira2025/task-manager.git
cd task-manager

3️⃣ Install Dependencies
flutter pub get

4️⃣ Back4App Configuration
Step A — Create Back4App App

https://www.back4app.com

Step B — Copy your keys

Go to:
App Settings → Security & Keys

Replace in main.dart:

const keyApplicationId = 'TeQHbH1fww3wuT5XIpCOOyFfR3tI87vUDaxcL6Gh';
const keyClientKey = '98iajmZpyNazuGOO6sNg3LQHlT5PRBWwniM3qktT';
const keyParseServerUrl = 'https://parseapi.back4app.com/';

5️⃣ Back4App Database Setup
Create Class: Tasks
Field	Type
title	String
description	String
isCompleted	Boolean
CLP Permissions

Set to:

✔ Read → Public
✔ Write → Public
✔ Create → Public
(or use Authenticated Users if required)

▶️ Run the App
Run on Android:
flutter run

Run on Web (Chrome):
flutter run -d chrome

🔄 CRUD Flow Summary
Create

User enters task → ParseObject('Tasks').save()

Read

App fetches with:

QueryBuilder(ParseObject('Tasks')).query();

Update

User edits → task.save()

Delete

User deletes → task.delete()


📌 Conclusion

This project demonstrates essential skills:

Flutter UI development

Cloud backend integration

User authentication

CRUD operations

Database handling

Clean and minimal code structure