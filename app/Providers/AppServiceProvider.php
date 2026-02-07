<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;


use App\Models\Course;
use App\Policies\CoursePolicy;
use Illuminate\Support\Facades\Gate;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::policy(Course::class, CoursePolicy::class);
        Gate::policy(\App\Models\Review::class, \App\Policies\ReviewPolicy::class);
    }
}
