<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/hammingDistance', [\App\Http\Controllers\API\RegisterController::class, 'hammingDifference']);

Route::post('/register', [\App\Http\Controllers\API\RegisterController::class, 'register']);
Route::post('/login', [\App\Http\Controllers\API\RegisterController::class, 'login']);

Route::middleware('auth:api')->group( function () {
    Route::get('userList', [\App\Http\Controllers\API\RegisterController::class, 'fetchUsers']);
    Route::post('/searchUsername', [\App\Http\Controllers\API\UsernameSearch::class, 'search']);
    Route::post('/logout', [\App\Http\Controllers\API\RegisterController::class, 'logout']);
});
