<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('main');
});

Route::get('products','ProductsController@index')
                        ->name('product.index');
Route::get('create','ProductsController@create')
                      ->name('create.product');

Route::post('store','ProductsController@store')
                      ->name('product.store');
Route::get('edit/product/{id}','ProductsController@edit');
Route::get('delete/product/{id}','ProductsController@delete');
Route::post('update/product/{id}','ProductsController@update');
Route::get('show/product/{id}','ProductsController@show');


                      


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
