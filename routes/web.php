<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Index\IndexController;
use App\Http\Controllers\Index\BlogController;


Route::controller(IndexController::class)->group(function () {
    Route::get('/', 'Welcome')->name('Welcome');
    Route::get('/Single/Services/{service}', 'Service')->name('Service');
    Route::get('/Single/Project/{project}', 'Project')->name('Project');

});

Route::get("/blogs", [BlogController::class,"list"])->name("blogs.list");
Route::get("/Single/Blogs/{blog}", [BlogController::class,"single"])->name("blogs.single");
