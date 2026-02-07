<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCourseRequest;
use App\Http\Requests\UpdateCourseRequest;
use App\Http\Resources\CourseResource;
use App\Models\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CourseController extends Controller
{
    public function index(Request $request)
    {
        $query = Course::with('instructor');

        if ($request->has('search')) {
            $query->where('title', 'like', '%' . $request->search . '%');
        }
        if ($request->has('level')) {
            $query->where('level', $request->level);
        }
        if ($request->has('min_price')) {
            $query->where('price', '>=', $request->min_price);
        }
        if ($request->has('max_price')) {
            $query->where('price', '<=', $request->max_price);
        }

        $courses = $query->orderBy('created_at', 'desc')->paginate(12);
        return CourseResource::collection($courses);
    }

    public function myCourses(Request $request)
    {
        $query = Course::where('instructor_id', Auth::id());

        if ($request->has('search')) {
            $query->where('title', 'like', '%' . $request->search . '%');
        }

        $courses = $query->orderBy('created_at', 'desc')->paginate(10);
        return CourseResource::collection($courses);
    }

    public function store(StoreCourseRequest $request)
    {
        $course = Course::create([
            'title' => $request->title,
            'description' => $request->description,
            'price' => $request->price,
            'level' => $request->level,
            'instructor_id' => Auth::id(),
        ]);
        return new CourseResource($course);
    }

    public function show($id)
    {
        $course = Course::with(['instructor', 'lessons' => function($query) {
            $query->orderBy('order');
        }])->findOrFail($id);
        return new CourseResource($course);
    }

    public function update(UpdateCourseRequest $request, $id)
    {
        $course = Course::findOrFail($id);
        $this->authorize('update', $course);
        $course->update($request->validated());
        return new CourseResource($course);
    }

    public function destroy($id)
    {
        $course = Course::findOrFail($id);
        $this->authorize('delete', $course);
        $course->delete();

        return response()->json(['message' => 'Course deleted successfully']);
    }
}
