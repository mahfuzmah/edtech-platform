<?php

namespace App\Policies;

use App\Models\Review;
use App\Models\User;

class ReviewPolicy
{
    public function create(User $user): bool
    {
        return $user->role === 'student';
    }

    public function delete(User $user, Review $review): bool
    {
        if ($user->role === 'admin') {
            return true;
        }
        return $user->id === $review->user_id;
    }
}
