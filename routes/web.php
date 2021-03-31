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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('index', 'Page@index');
Route::get('/','Page@index');
Route::get('odmoem','Page@odmoem');
Route::get('type','Page@type');
Route::get('subtype','Page@subtype');
// Route::get('subtype/{subtypeId}','Page@subtype')->where(['subtypeId','[0-9]+']);
