# Simple PHP MVC Application

## Project Description

This is a simple PHP application following the MVC (Model-View-Controller) pattern. It consists of three pages with a minimalist design and database access. The application manages two database tables: `users` (id, name) and `advertisements` (id, userid, title).

## Technologies Used

- **PHP**: Core PHP for backend logic.
- **MySQL**: Database management system for storing user and advertisement data.
- **HTML/CSS**: Minimalist design using basic CSS for styling.

## Features

1. **User List Page**

   - Displays a list of users existing in the system.

2. **Advertisement List Page**

   - Displays a list of existing advertisements in the system, along with the related user's name.

3. **Index Page**
   - Entry point of the application.
   - Provides links to the User List Page and Advertisement List Page.

## Directory Structure

Simple PHP MVC Application
├── `.htaccess`: Uses for clean URL routing and directing requests to `index.php`.
├── `index.php`: Entry point of the application with links to user and advertisement lists.
├── style.css
├── create_db.sql
├── Controller
│  └── `MainController.php`: Handles routing and business logic for different pages.
├── Model
│  ├── `User.php`: Represents a user object with properties `id` and `name`.
│  └── `Advertisement.php`: Represents an advertisement object with properties `title` and `user_name`.
├── Service
│  ├── `UserService.php`: Provides methods to interact with the `users` table in the database.
│  └── `AdvertisementService.php`: Provides methods to interact with the `advertisements` table in the database.
├── Database
│  └── `database.php`: Manages database connection using the singleton pattern.
└── Views
   ├── advertisements.php
   ├── index.php
   └── users.php

## Installation and Setup

1. **Installation and Setup**: Ensure that you import the `create_db.sql` file into your MySQL database to create the necessary tables (`users` and `advertisements`) and populate them with initial data.

2. **Database Connection**: Adjust the database credentials (`$host`, `$username`, `$password`, `$database`) in `Database/database.php` according to your MySQL setup.

3. **Start the application**: Navigate to your project directory in a web browser or via localhost to start using the application.
