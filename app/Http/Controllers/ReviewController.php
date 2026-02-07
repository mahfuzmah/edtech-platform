<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreReviewRequest;
use App\Http\Resources\ReviewResource;
use App\Models\Course;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function index($courseId)
    {
        $reviews = Review::where('course_id', $courseId)
            ->with('user')
            ->orderByDesc('created_at')
            ->get();
        return ReviewResource::collection($reviews);
    }

    public function store(StoreReviewRequest $request, $courseId)
    {
        $course = Course::findOrFail($courseId);
        $user = Auth::user();

        $this->authorize('create', Review::class);
        if (!$user->enrolledCourses()->where('course_id', $courseId)->exists()) {
            return response()->json(['message' => 'You must be enrolled to review this course'], 403);
        }
        if ($course->reviews()->where('user_id', $user->id)->exists()) {
             return response()->json(['message' => 'You have already reviewed this course'], 409);
        }

        $review = $course->reviews()->create([
            'user_id' => $user->id,
            'rating' => $request->rating,
            'comment' => $request->comment,
        ]);
        return new ReviewResource($review);
    }

    public function destroy($id)
    {
        $review = Review::findOrFail($id);
        $this->authorize('delete', $review);
        $review->delete();

        return response()->json(['message' => 'Review deleted successfully']);
    }
}
