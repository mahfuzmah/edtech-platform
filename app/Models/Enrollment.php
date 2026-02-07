<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class Enrollment extends Pivot
{
    use HasFactory;

    protected $table = 'enrollments';

    protected $fillable = [
        'user_id',
        'course_id',
        'enrolled_at',
        'status',
    ];

    public $timestamps = false;

    protected $casts = [
        'enrolled_at' => 'datetime',
    ];
}
