<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::prefix('v1')->group(function () {
    Route::post('register', 'AuthController@store');
    Route::post('login', 'AuthController@login');
    Route::resource('clientes', 'ClienteController');

    Route::group(['middleware' => 'auth:api'], function () {
    });
});
