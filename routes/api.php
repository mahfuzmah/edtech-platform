<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\LessonController;
use App\Http\Controllers\EnrollmentController;
use App\Http\Controllers\ReviewController;
use App\Http\Middleware\CheckRole;
use App\Http\Controllers\UserController;

Route::controller(AuthController::class)->prefix('auth')->group(function () {
    Route::post('register', 'register');
    Route::post('login', 'login')->name('api.login');
    Route::post('logout', 'logout')->middleware('auth:api');
    Route::post('refresh', 'refresh')->middleware('auth:api');
    Route::post('me', 'me')->middleware('auth:api');
});

Route::get('courses', [CourseController::class, 'index']);
Route::get('courses/{id}', [CourseController::class, 'show']);
Route::get('courses/{id}/lessons', [LessonController::class, 'index']);
Route::get('courses/{id}/reviews', [ReviewController::class, 'index']);

Route::middleware('auth:api')->group(function () {
    Route::post('courses/{id}/enroll', [EnrollmentController::class, 'store']);
    Route::get('my-courses', [EnrollmentController::class, 'index']);

    Route::post('courses/{id}/reviews', [ReviewController::class, 'store']);
    Route::delete('reviews/{id}', [ReviewController::class, 'destroy']);

    Route::middleware([CheckRole::class.':instructor,admin'])->group(function () {
        Route::get('instructor/courses', [CourseController::class, 'myCourses']);
        Route::post('courses', [CourseController::class, 'store']);
        Route::put('courses/{id}', [CourseController::class, 'update']);
        Route::delete('courses/{id}', [CourseController::class, 'destroy']);

        Route::post('courses/{id}/lessons', [LessonController::class, 'store']);
        Route::put('lessons/{id}', [LessonController::class, 'update']);
        Route::delete('lessons/{id}', [LessonController::class, 'destroy']);
    });

    Route::middleware([CheckRole::class.':admin'])->group(function () {
        Route::get('admin/users', [UserController::class, 'index']);
        Route::delete('admin/users/{id}', [UserController::class, 'destroy']);
    });
});
