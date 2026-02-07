# EdTech Platform
======================================================================================================================================================
A Learning Management System built with Laravel and Bootstrap
======================================================================================================================================================
---
======================================================================================================================================================
## What This Project Is
======================================================================================================================================================
This is a web application where students browse courses, instructors create content, and administrators manage the platform.

Key characteristics:
- JWT authentication for secure API access
- RESTful API design with proper status codes
- Role-based permissions (admin, instructor, student)
- AJAX-based frontend using Axios
- Bootstrap 5 for responsive UI
- Laravel 12 backend with MySQL database

---
======================================================================================================================================================
## Main Features
======================================================================================================================================================
Authentication system:
- User registration with role selection
- Login with JWT token generation
- Token refresh without re-login
- Secure logout with token invalidation

Course management:
- Browse all courses with search and filters
- Filter by difficulty level (beginner, intermediate, advanced)
- Filter by price range
- View full course details with lessons
- Instructors create and manage their courses
- Admins can delete any course

Student features:
- Enroll in courses
- View course lessons after enrollment
- Write reviews for enrolled courses
- One review per course limit

Instructor features:
- Create courses with title, description, price, and level
- Add multiple lessons to courses
- Set lesson order for learning progression
- Edit and delete own courses and lessons

Admin features:
- View all users in the system
- Delete user accounts (except own account)
- View and manage all courses
- Delete inappropriate reviews

---
======================================================================================================================================================
## Technology Stack
======================================================================================================================================================
Backend:
- Laravel 12.50.0
- PHP 8.2.12
- MySQL database
- tymon/jwt-auth 2.2.1 for JWT tokens

Frontend:
- Bootstrap 5.3.0 for UI components
- Vanilla JavaScript for interactions
- Axios for API requests
- Blade templates for page structure

---
======================================================================================================================================================
## Prerequisites
======================================================================================================================================================
Required software:
- PHP version 8.2 or higher
- Composer for dependency management
- Node.js version 16 or higher
- MySQL 5.7 or higher

Check versions:
php -v
composer -v
node -v
mysql --version

---
===========================================================================================================================================================
## Installation Steps
======================================================================================================================================================
### Step 1: get project root folder
composer create-project laravel/laravel edtech-platform 
cd edtech-platform


Step 2 -- Set up environment:

Step 3 -- Configure database:

Open .env file and update:
- DB_DATABASE=edtech_platform
- DB_USERNAME=root
- DB_PASSWORD=
Create database in MySQL:

CREATE DATABASE edtech_platform;

STEP 5 -- create models with relationships
user
couese
lessons
enrollments
reviews

Step 6 -- Generate JWT secret:

php artisan jwt:secret

Step 5 -- Run migrations and seeders:

use factory
php artisan migrate:fresh --seed

Step 6 -- Start the server:
php artisan serve

Access at: http://127.0.0.1:8000

---

======================================================================================================================================================
## JWT Configuration
======================================================================================================================================================

Configuration details:

1. Installation Commands

Run composer require tymon/jwt-auth
Run php artisan vendor:publish --provider="Tymon\JWTAuth\Providers\LaravelServiceProvider"

This creates config/jwt.php file in your project


Run php artisan jwt:secret

This generates a secret key and adds JWT_SECRET=xxxxx to your .env file


2. Update User Model

Open app/Models/User.php
Add implements JWTSubject to the class


3. Configure Auth Guard

Open config/auth.php
Find the 'guards' array
Add/modify the 'api' guard to use 'driver' => 'jwt'

4. Configure JWT Settings

Open config/jwt.php
Review and adjust the settings

5. Environment Variables Check

Open .env file
Verify JWT_SECRET exists (added by php artisan jwt:secret)

6. Create Auth Controller

Generate controller: php artisan make:controller AuthController
Add methods for:

register() - user registration
login() - generate JWT token
logout() - invalidate token
refresh() - refresh expired token
me() - get authenticated user info

7. Set Up API Routes

Open routes/api.php
Create route group with 'prefix' => 'auth'

---
======================================================================================================================================================
## Database Schema
============================================================================================================================================================
Five main tables:

users table:
- Stores account information
- Fields: id, name, email, password, role
- Role values: admin, instructor, student

courses table:
- Stores course information
- Fields: id, title, description, price, level, instructor_id, image
- Level values: beginner, intermediate, advanced
- Foreign key to users table

lessons table:
- Stores lesson content
- Fields: id, course_id, title, content, order
- Foreign key to courses table
- Order field determines lesson sequence

enrollments table:
- Pivot table for many-to-many relationship
- Fields: user_id, course_id, status, enrolled_at
- Tracks which students are in which courses

reviews table:
- Stores course reviews
- Fields: id, user_id, course_id, rating, comment
- Foreign keys to both users and courses
- Rating range: 1 to 5 stars

Relationships:
- One instructor has many courses
- One course has many lessons
- Many students can enroll in many courses
- One course has many reviews
- One user can write many reviews

---

## User Roles

Admin role:
Can perform:
- View all users
- Delete any user except themselves
- View all courses
- Delete any course
- Delete any review
- Bypass all permission checks

Cannot perform:
- Nothing -- full system access

Instructor role:
Can perform:
- Create new courses
- Edit own courses
- Delete own courses
- Add lessons to own courses
- Edit lessons in own courses
- Delete lessons from own courses
- View enrolled students

Cannot perform:
- Edit other instructors' courses
- Delete users
- Access admin panel

Student role:
Can perform:
- Browse all courses
- Search and filter courses
- View course details
- Enroll in courses
- View lessons after enrollment
- Write reviews for enrolled courses

Cannot perform:
- Create or edit courses
- Create or edit lessons
- Delete any content
- Write multiple reviews per course
- Review courses without enrollment

Permission enforcement:

Middleware level:
- CheckRole middleware checks user role
- Applied to route groups
- Returns 403 if role not allowed

Policy level:
- CoursePolicy checks course ownership
- ReviewPolicy checks review ownership
- Applied before controller actions
- Returns 403 if ownership fails

---
=============================================================================================================================================================
## API Endpoints
======================================================================================================================================================
Base URL: http://127.0.0.1:8000/api

Authentication endpoints:

POST /auth/register
- Creates new user account
- Body: name, email, password, role
- Returns: user info and JWT token

POST /auth/login
- Authenticates user
- Body: email, password
- Returns: user info and JWT token

POST /auth/me
- Gets current user info
- Requires: JWT token in header
- Returns: user details

POST /auth/refresh
- Refreshes JWT token
- Requires: valid JWT token
- Returns: new JWT token

POST /auth/logout
- Invalidates current token
- Requires: JWT token
- Returns: success message

Course endpoints:

GET /courses
- Lists all courses
- Query params: search, level, min_price, max_price, page
- Returns: paginated course list (12 per page)

GET /courses/{id}
- Gets single course details
- Returns: course with instructor and all lessons

POST /courses
- Creates new course
- Requires: JWT token, instructor or admin role
- Body: title, description, price, level
- Returns: created course

PUT /courses/{id}
- Updates existing course
- Requires: JWT token, course ownership
- Body: fields to update
- Returns: updated course

DELETE /courses/{id}
- Deletes course
- Requires: JWT token, course ownership
- Returns: success message

Enrollment endpoints:

POST /courses/{id}/enroll
- Enrolls student in course
- Requires: JWT token, student role
- Returns: success message
- Errors: 403 if not student, 409 if already enrolled

GET /my-courses
- Lists enrolled courses
- Requires: JWT token
- Query params: search, page
- Returns: paginated enrolled courses

Lesson endpoints:

GET /courses/{id}/lessons
- Lists course lessons
- Query params: search, page
- Returns: paginated lessons (5 per page)

POST /courses/{id}/lessons
- Creates new lesson
- Requires: JWT token, course ownership
- Body: title, content, order
- Returns: created lesson

PUT /lessons/{id}
- Updates lesson
- Requires: JWT token, course ownership
- Body: fields to update
- Returns: updated lesson

DELETE /lessons/{id}
- Deletes lesson
- Requires: JWT token, course ownership
- Returns: success message

Review endpoints:

GET /courses/{id}/reviews
- Lists course reviews
- Public access
- Returns: reviews with user info

POST /courses/{id}/reviews
- Creates new review
- Requires: JWT token, enrollment, no existing review
- Body: rating, comment
- Returns: created review
- Errors: 403 if not enrolled, 409 if already reviewed

DELETE /reviews/{id}
- Deletes review
- Requires: JWT token, review ownership or admin role
- Returns: success message

Admin endpoints:

GET /admin/users
- Lists all users
- Requires: JWT token, admin role
- Query params: page
- Returns: paginated user list

DELETE /admin/users/{id}
- Deletes user
- Requires: JWT token, admin role
- Cannot delete self
- Returns: success message

Instructor endpoints:

GET /instructor/courses
- Lists instructor's courses
- Requires: JWT token, instructor role
- Query params: search, page
- Returns: paginated course list

---
======================================================================================================================================================
## Frontend Architecture
======================================================================================================================================================
Page structure:

Layout template:
- Master Blade template (resources/views/layout.blade.php)
- Includes navigation with role-based links
- Bootstrap navbar with search
- Footer with site information

Main pages:
- Home (/) -- Browse all courses
- Login (/login) -- User authentication
- Register (/register) -- New user signup
- Dashboard (/dashboard) -- Role-specific interface
- Course detail (/courses/{id}) -- View course and enroll
- Admin users (/admin/users) -- User management
- Admin courses (/admin/courses) -- Course management

JavaScript architecture:

Axios setup:
- Global interceptor adds JWT token to requests
- Base URL set to API endpoint
- Automatic error handling for 401 responses

LocalStorage usage:
- token -- JWT authentication token
- user_role -- Current user's role
- user_name -- Current user's name
- user_id -- Current user's ID

Common patterns:
- AJAX calls with Axios
- Dynamic DOM manipulation
- Bootstrap modal interactions
- Debounced search inputs
- Pagination handling

---
======================================================================================================================================================
## Development Workflow
======================================================================================================================================================
Step 1 -- Design database schema:
- Identify entities (users, courses, lessons, enrollments, reviews)
- Define relationships (one-to-many, many-to-many)
- Plan foreign keys and pivot tables

Step 2 -- Create migrations:
php artisan make:migration create_users_table
php artisan make:migration create_courses_table
php artisan make:migration create_lessons_table
php artisan make:migration create_enrollments_table
php artisan make:migration create_reviews_table

Step 3 -- Create models:
php artisan make:model Course
php artisan make:model Lesson
php artisan make:model Review
Define relationships in each model

Step 4 -- Create controllers:
php artisan make:controller AuthController
php artisan make:controller CourseController
php artisan make:controller LessonController
php artisan make:controller EnrollmentController
php artisan make:controller ReviewController
php artisan make:controller UserController

Step 5 -- Create form requests:
php artisan make:request StoreCourseRequest
php artisan make:request UpdateCourseRequest
php artisan make:request StoreLessonRequest
php artisan make:request StoreReviewRequest
Add validation rules to each request

Step 6 -- Create API resources:
php artisan make:resource CourseResource
php artisan make:resource LessonResource
php artisan make:resource UserResource
php artisan make:resource ReviewResource
Format JSON responses consistently

Step 7 -- Create policies:
php artisan make:policy CoursePolicy --model=Course
php artisan make:policy ReviewPolicy --model=Review
Define authorization logic

Step 8 -- Create middleware:
php artisan make:middleware CheckRole
Implement role checking logic

Step 9 -- Register policies:
- Add policy mappings in AppServiceProvider
- Use Gate::policy() method

Step 10 -- Define routes:
- Create route groups in routes/api.php
- Apply middleware to protected routes
- Connect routes to controller methods

Step 11 -- Create seeders:
php artisan make:seeder DatabaseSeeder

Add test data for development

Step 12 -- Build frontend views:
- Create Blade templates
- Add Bootstrap components
- Implement JavaScript with Axios
- Handle authentication flow

Step 13 -- Test thoroughly:
- Test all CRUD operations
- Verify authentication flow
- Check authorization rules
- Test with different user roles

---

## Test Accounts

Pre-seeded accounts (all use password: "password"):

Admin:
- Email: admin@edtech.com
- Access: Full system control

Instructor:
- Email: instructor1@edtech.com
- Access: Create and manage courses

Student:
- Email: student1@edtech.com
- Access: Enroll and review courses

Additional accounts:
- instructor2@edtech.com
- student2@edtech.com
- Plus randomly generated users from factories

---
======================================================================================================================================================
## Project Structure
======================================================================================================================================================
Key directories:

app/Http/Controllers:
- AuthController.php -- Authentication logic
- CourseController.php -- Course CRUD operations
- LessonController.php -- Lesson management
- EnrollmentController.php -- Student enrollments
- ReviewController.php -- Course reviews
- UserController.php -- Admin user management

app/Http/Middleware:
- CheckRole.php -- Role-based access control

app/Http/Requests:
- StoreCourseRequest.php -- Course creation validation
- UpdateCourseRequest.php -- Course update validation
- StoreLessonRequest.php -- Lesson validation
- StoreReviewRequest.php -- Review validation
- LoginRequest.php -- Login validation
- RegisterRequest.php -- Registration validation

app/Http/Resources:
- CourseResource.php -- Course JSON formatting
- LessonResource.php -- Lesson JSON formatting
- UserResource.php -- User JSON formatting
- ReviewResource.php -- Review JSON formatting

app/Models:
- User.php -- User model with JWT implementation
- Course.php -- Course model with relationships
- Lesson.php -- Lesson model
- Review.php -- Review model
- Enrollment.php -- Enrollment pivot model

app/Policies:
- CoursePolicy.php -- Course authorization
- ReviewPolicy.php -- Review authorization

database/migrations:
- Users table migration
- Courses table migration
- Lessons table migration
- Enrollments table migration
- Reviews table migration

database/factories:
- UserFactory.php -- Generate test users
- CourseFactory.php -- Generate test courses
- LessonFactory.php -- Generate test lessons
- ReviewFactory.php -- Generate test reviews

database/seeders:
- DatabaseSeeder.php -- Seeds all test data

resources/views:
- layout.blade.php -- Master template
- home.blade.php -- Course listing
- login.blade.php -- Login form
- register.blade.php -- Registration form
- dashboard.blade.php -- Role-specific dashboard
- courses/show.blade.php -- Course detail page
- admin/layout.blade.php -- Admin template
- admin/users.blade.php -- User management
- admin/courses.blade.php -- Course management

public/js:
- app.js

public/css:
- style.css 

routes:
- api.php 
- web.php 

config:
- auth.php 
- jwt.php 
- app.php 

## Additional Notes

Security considerations:
- Passwords hashed with bcrypt
- JWT tokens signed and verified
- Input validation on all forms
- SQL injection prevented by Eloquent ORM

Performance features:
- Eager loading to prevent N+1 queries
- Pagination on all list endpoints

Code organization:
- Controllers focus on HTTP logic
- Models contain business logic
- Policies handle authorization
- Requests validate input
- Resources format output

