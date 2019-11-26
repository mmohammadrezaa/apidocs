<?php

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

Route::get('/',"HomeController@home");
Route::get('/Add',"HomeController@Add");
Route::post('/Add',"HomeController@Add");
Route::get('/Edited/{id}',"HomeController@Add");
Route::post('/Edited/{id}',"HomeController@Add");
Route::get('/List',"HomeController@List");
Route::get('/Deleted/{id}',"HomeController@Del");