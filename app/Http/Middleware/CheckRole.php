<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class CheckRole
{
    public function handle(Request $request, Closure $next, ...$roles): Response
    {
        if (!Auth::check()) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        $user = Auth::user();

        if ($user->role === 'admin')
        {
            return $next($request);
        }
        if (in_array($user->role, $roles))
        {
            return $next($request);
        }

        return response()->json(['error' => 'Forbidden'], 403);
    }
}
