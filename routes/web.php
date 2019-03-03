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

Route::get('/','TestController@home');
Route::get('/DashBord','TestController@DashBord');
Route::get('/AddUser','TestController@AddUser');
Route::get('/AllUser','TestController@AllUser');
Route::get('/WaitingUser','TestController@WaitingUser');
Route::get('/ShiftingUser','TestController@ShiftingUser');
Route::get('/ShiftingAndWaitingUser','TestController@ShiftingAndWaitingUser');
Route::get('/AddQuarter','TestController@AddQuarter');
Route::get('/AllQuarter','TestController@AllQuarter');
Route::get('/VacantQuarter','TestController@VacantQuarter');
Route::get('/PriorityList','TestController@PriorityList');
Route::get('/OfferList','TestController@OfferList');
Route::get('/AllotmentLetter','TestController@AllotmentLetter');