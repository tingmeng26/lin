<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->get('products/lists','SubtypeController@getListByTypeId');
    
    
    
    
    $router->resource('types', TypeController::class); 
    $router->resource('subtypes', SubtypeController::class);
    $router->resource('products', ProductController::class);

    // $router->get('test','SubtypeController@test');
    // $router->get('products/test',function(){
    //   var_dump(1122);exit;
    // });
});
