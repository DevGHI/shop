<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiResource('townships', 'TownshipController')->except('update')->middleware('auth:api');
Route::post('townships/update/{id}','TownshipController@update')->middleware('auth:api');
//Route::apiResource('maincategories', 'MainCategoryController')->middleware('auth:api');
Route::apiResource('maincategories', 'MainCategoryController')->except('update')->middleware('auth:api');
Route::post('maincategories/update/{id}','MainCategoryController@update')->middleware('auth:api');

Route::apiResource('subcategories','SubCategoryController')->except('update')->middleware('auth:api');
Route::post('subcategories/update/{id}','SubCategoryController@update')->middleware('auth:api');

Route::apiResource('products', 'ProductController')->except('update');
//Route::get('/products/','ProductController@index')->middleware('auth:api');
//Route::get('/products/{id}','ProductController@show')->middleware('auth:api');
//Route::post('/products','ProductController@store');//->middleware('auth:api');
Route::post('/products/update/{id}','ProductController@update')->middleware('auth:api');
//Route::post('/products/{id}','ProductController@destroy')->middleware('auth:api');

//Route::apiResource('productphotos', 'ProductPhotoController')->except('update');


