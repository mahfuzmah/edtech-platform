<?php

namespace App\Policies;

use App\Models\Course;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class CoursePolicy
{
    public function update(User $user, Course $course): bool
    {
        return $user->role === 'admin' || $user->id == $course->instructor_id;
    }

    public function delete(User $user, Course $course): bool
    {
        return $user->role === 'admin' || $user->id == $course->instructor_id;
    }
}
