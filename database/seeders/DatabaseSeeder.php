<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\Course;
use App\Models\Lesson;
use App\Models\Review;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    public function run(): void
    {
        User::create([
            'name' => 'Admin',
            'email' => 'admin@edtech.com',
            'password' => Hash::make('password'),
            'role' => 'admin',
        ]);

        User::create([
            'name' => 'Instructor One',
            'email' => 'instructor1@edtech.com',
            'password' => Hash::make('password'),
            'role' => 'instructor',
        ]);

        User::create([
            'name' => 'Instructor Two',
            'email' => 'instructor2@edtech.com',
            'password' => Hash::make('password'),
            'role' => 'instructor',
        ]);

        User::create([
            'name' => 'Student One',
            'email' => 'student1@edtech.com',
            'password' => Hash::make('password'),
            'role' => 'student',
        ]);

        User::create([
            'name' => 'Student Two',
            'email' => 'student2@edtech.com',
            'password' => Hash::make('password'),
            'role' => 'student',
        ]);

        $otherInstructors = User::factory(3)->create(['role' => 'instructor']);
        $otherStudents = User::factory(22)->create(['role' => 'student']);

        $instructors = User::where('role', 'instructor')->get();
        $students = User::where('role', 'student')->get();

        foreach ($instructors as $instructor) {
            $courses = Course::factory(6)->create([
                'instructor_id' => $instructor->id,
            ]);

            foreach ($courses as $course) {
                for ($i = 1; $i <= 20; $i++) {
                    Lesson::factory()->create([
                        'course_id' => $course->id,
                        'order' => $i,
                    ]);
                }

                $course->students()->attach(
                    $students->random(rand(5, 10))->pluck('id'),
                    ['enrolled_at' => now(), 'status' => 'active']
                );

                $course->students->each(function ($student) use ($course) {
                    if (rand(0, 1)) {
                        Review::factory()->create([
                            'user_id' => $student->id,
                            'course_id' => $course->id,
                        ]);
                    }
                });
            }
        }
    }
}
