<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/courses/{id}', function () {
    return view('course_detail');
});

Route::get('/login', function () {
    return view('auth.login');
})->name('login');

Route::get('/register', function () {
    return view('auth.register');
});

Route::prefix('admin')->group(function () {
    Route::get('/', function () {
        return redirect('/admin/users');
    });
    
    Route::get('/users', function () {
        return view('admin.users');
    });

    Route::get('/courses', function () {
        return view('admin.courses');
    });
});

Route::get('/dashboard', function () {
    return view('dashboard');
});
