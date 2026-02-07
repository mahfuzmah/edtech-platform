<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


class LessonFactory extends Factory
{
    public function definition(): array
    {
        return [
            'course_id' => \App\Models\Course::factory(),
            'title' => fake()->sentence(4),
            'content' => fake()->url(),
            'order' => fake()->numberBetween(1, 10),
        ];
    }
}
