<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


class CourseFactory extends Factory
{
    public function definition(): array
    {
        $images = [
            'content-concept-laptop-screen_53876-13531.avif',
            'e-learning-concept-woman-learning-online-with-webinar-internet-is-used-modern-education-seminar-meeting-elearning-technology-video-tutorial-online-lessons-digital-training-study-course_708636-1338.avif',
            'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif',
            'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif',
            'media-journalism-global-daily-news-content-concept_53876-123733.avif'
        ];

        return [
            'title' => fake()->sentence(3),
            'description' => fake()->paragraph(),
            'price' => fake()->randomFloat(2, 10, 200),
            'level' => fake()->randomElement(['beginner', 'intermediate', 'advanced']),
            'image' => fake()->randomElement($images),
            'instructor_id' => \App\Models\User::factory(),
        ];
    }
}
