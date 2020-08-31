<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Models\News;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Arr;

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
    return view('welcome');
});

// admin login and logout
Route::get('admin/login','UserController@getLogin');
Route::post('admin/login','UserController@postLogin');
Route::get('admin/logout','UserController@getLogout');

// Admin
Route::group(['prefix' => 'admin','middleware'=>'adminLogin'], function () {
    Route::get('home', function () {
        return view('admin.layout.dashboard');
    });
    Route::group(['prefix' => 'category'], function () {
        Route::get('list','CategoryController@getList');

        Route::get('add','CategoryController@getAdd');
        Route::post('add','CategoryController@postAdd');

        Route::get('edit/{id}','CategoryController@getEdit');
        Route::post('edit/{id}','CategoryController@postEdit');

        Route::get('delete/{id}','CategoryController@getDelete');
    });

    Route::group(['prefix' => 'news'], function () {
        Route::get('list','NewsController@getList');

        Route::get('add','NewsController@getAdd');
        Route::post('add','NewsController@postAdd');

        Route::get('edit/{id}','NewsController@getEdit');
        Route::post('edit/{id}','NewsController@postEdit');

        Route::get('delete/{id}','NewsController@getDelete');
    });

    Route::group(['prefix' => 'comment'], function () {
        Route::get('list','CommentController@commentList');

        Route::get('delete/{id}','CommentController@commentDelete');
    });

    Route::group(['prefix' => 'user'], function () {
        Route::get('list','UserController@userList');

        Route::get('add','UserController@userAdd');
        Route::post('add','UserController@postAdd');

        Route::get('edit/{id}','UserController@userEdit');
        Route::post('edit/{id}','UserController@postEdit');

        Route::get('delete/{id}','UserController@userDelete');
    });
});

// User
Route::get('home','PagesController@home');
Route::get('contact','PagesController@contact');
Route::get('about','PagesController@about');
Route::get('category','PagesController@category');
Route::get('lastestnews','PagesController@lastestNews');
Route::get('detailsNew/{id}','PagesController@detailsNew');

//send comment
Route::post('sendComment/{id}','CommentController@addComment');
