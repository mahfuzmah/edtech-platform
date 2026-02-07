<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'description' => $this->description,
            'price' => $this->price,
            'level' => $this->level,
            'image' => $this->image ? asset('image/' . $this->image) : null,
            'instructor' => new UserResource($this->whenLoaded('instructor')),
            'lessons' => LessonResource::collection($this->whenLoaded('lessons')),
            'created_at' => $this->created_at,
        ];
    }
}
