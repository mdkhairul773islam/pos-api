<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
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

Route::post('admin/login',[LoginController::class, 'adminLogin'])->name('adminLogin');
Route::group( ['prefix' => 'admin','middleware' => ['auth:admin-api','scopes:admin'] ],function(){
   // authenticated staff routes here
    Route::get('dashboard',[LoginController::class, 'adminDashboard']);

    //category module
    Route::any('/category', [App\Http\Controllers\ProductController::class, 'category']);
    Route::get('/category-edit/{id}', [App\Http\Controllers\ProductController::class, 'categoryEdit']);
    Route::post('/category-store', [App\Http\Controllers\ProductController::class, 'categoryStore']);
    Route::post('/category-update', [App\Http\Controllers\ProductController::class, 'categoryUpdate']);
    Route::get('/category-destroy/{id}', [App\Http\Controllers\ProductController::class, 'categoryDestroy']);

    //brand module
    Route::any('/brand', [App\Http\Controllers\ProductController::class, 'brand']);
    Route::get('/brand-edit/{id}', [App\Http\Controllers\ProductController::class, 'brandEdit']);
    Route::post('/brand-store', [App\Http\Controllers\ProductController::class, 'brandStore']);
    Route::post('/brand-update', [App\Http\Controllers\ProductController::class, 'brandUpdate']);
    Route::get('/brand-destroy/{id}', [App\Http\Controllers\ProductController::class, 'brandDestroy']);

    //unit module
    Route::get('/unit', [App\Http\Controllers\ProductController::class, 'unit']);
    Route::get('/unit-edit/{id}', [App\Http\Controllers\ProductController::class, 'unitEdit']);
    Route::post('/unit-store', [App\Http\Controllers\ProductController::class, 'unitStore']);
    Route::post('/unit-update', [App\Http\Controllers\ProductController::class, 'unitUpdate']);
    Route::get('/unit-destroy/{id}', [App\Http\Controllers\ProductController::class, 'unitDestroy']);

    //product module
    Route::any('/product', [App\Http\Controllers\ProductController::class, 'index']);
    Route::get('/product-list', [App\Http\Controllers\ProductController::class, 'productList']);
    Route::post('/product-store', [App\Http\Controllers\ProductController::class, 'store']);
    Route::get('/product-edit/{id}', [App\Http\Controllers\ProductController::class, 'edit']);
    Route::post('/product-update', [App\Http\Controllers\ProductController::class, 'update']);
    Route::get('/product-destroy/{id}', [App\Http\Controllers\ProductController::class, 'destroy']);

    //supplier module
    Route::any('/supplier', [App\Http\Controllers\SupplierController::class, 'index']);
    Route::post('/supplier-store', [App\Http\Controllers\SupplierController::class, 'store']);
    Route::get('/supplier-edit/{id}', [App\Http\Controllers\SupplierController::class, 'edit']);
    Route::post('/supplier-update', [App\Http\Controllers\SupplierController::class, 'update']);
    Route::get('/supplier-destroy/{id}', [App\Http\Controllers\SupplierController::class, 'destroy']);
    Route::get('/showroom-wise-supplier/{showroom_id}', [App\Http\Controllers\SupplierController::class, 'showroomWiseSupplier']);

    // Warehouse module
    Route::any('/warehouse', [App\Http\Controllers\WarehouseController::class, 'index']);
    Route::post('/warehouse-store', [App\Http\Controllers\WarehouseController::class, 'store']);
    Route::get('/warehouse-edit/{id}', [App\Http\Controllers\WarehouseController::class, 'edit']);
    Route::post('/warehouse-update', [App\Http\Controllers\WarehouseController::class, 'update']);
    Route::get('/warehouse-destroy/{id}', [App\Http\Controllers\WarehouseController::class, 'destroy']);
   
    //Route::resource('warehouse', App\Http\Controllers\WarehouseController::class);
});