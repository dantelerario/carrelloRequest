<?php

namespace App\Http\Middleware;

use Closure;

class AuthKey
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    // protected $authKeys = 'ABCDEFGH2020';
  
        
    public function handle($request, Closure $next)
    {
        // return $this->authKeys;

        // $token = $request->header('APP_KEY');
        // if ($token != $authKeys ) {
        //     return response()->json(['message' => 'APP KEY NOT VALID\NOT FOUND'], 401);
        // } else {
        //     abort(403);
        // }
        
        // return $next($request);
    }
}
