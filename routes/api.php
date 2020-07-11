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

Route::ApiResource('/class','Api\SclassController');
Route::ApiResource('/subject','Api\SubjectController');
Route::ApiResource('/section','Api\SectionController');
Route::ApiResource('/student','Api\StudentController');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
