<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreLessonRequest;
use App\Http\Requests\UpdateLessonRequest;
use App\Http\Resources\LessonResource;
use App\Models\Course;
use App\Models\Lesson;
use Illuminate\Http\Request;

class LessonController extends Controller
{
    public function index($courseId)
    {
        $query = Lesson::where('course_id', $courseId)->orderBy('order');

        if (request()->has('search')) {
            $query->where('title', 'like', '%' . request('search') . '%');
        }

        return LessonResource::collection($query->paginate(5));
    }

    public function store(StoreLessonRequest $request, $courseId)
    {
        $course = Course::findOrFail($courseId);
        $this->authorize('update', $course);
        $lesson = $course->lessons()->create($request->validated());
        return new LessonResource($lesson);
    }

    public function update(UpdateLessonRequest $request, $id)
    {
        $lesson = Lesson::findOrFail($id);
        $course = $lesson->course;
        $this->authorize('update', $course);
        $lesson->update($request->validated());
        return new LessonResource($lesson);
    }

    public function destroy($id)
    {
        $lesson = Lesson::findOrFail($id);
        $course = $lesson->course;
        $this->authorize('delete', $course);
        $lesson->delete();

        return response()->json(['message' => 'Lesson deleted successfully']);
    }
}
