<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\ProductosController;
use App\Http\Controllers\API\PosicionesController;
use App\Http\Controllers\API\EmpresasController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('productos')->group(function () {
    Route::get('/',[ ProductosController::class, 'getAll']);
    Route::post('/',[ ProductosController::class, 'create']);
    Route::get('/{id}',[ ProductosController::class, 'get']);
});

Route::prefix('posiciones')->group(function () {
    Route::get('/',[ PosicionesController::class, 'getAll']);
    Route::post('/',[ PosicionesController::class, 'create']);
    Route::get('/{id}',[ PosicionesController::class, 'get']);
});

Route::prefix('empresas')->group(function () {
    Route::get('/',[ EmpresasController::class, 'getAll']);
});