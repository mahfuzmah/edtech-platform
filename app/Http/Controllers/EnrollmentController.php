<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\CourseResource;
use App\Models\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EnrollmentController extends Controller
{
    public function store($courseId)
    {
        $course = Course::findOrFail($courseId);
        $user = Auth::guard('api')->user();
        if (!$user) {
            return response()->json(['message' => 'Unauthenticated'], 401);
        }
        
        if ($user->role !== 'student') {
            return response()->json(['message' => 'Unauthorized: Only students can enroll in courses'], 403);
        }
        if ($user->enrolledCourses()->where('course_id', $courseId)->exists()) {
             return response()->json(['message' => 'Already enrolled'], 409);
        }
        $user->enrolledCourses()->attach($courseId, [
            'status' => 'active',
            'enrolled_at' => now(),
        ]);

        return response()->json(['message' => 'Enrolled successfully'], 201);
    }

    public function index(Request $request)
    {
        $user = Auth::user();
        $query = $user->enrolledCourses()->with('instructor');

        if ($request->has('search')) {
            $query->where('title', 'like', '%' . $request->search . '%');
        }

        $courses = $query->orderBy('enrollments.enrolled_at', 'desc')->paginate(10);
        return CourseResource::collection($courses);
    }
}
