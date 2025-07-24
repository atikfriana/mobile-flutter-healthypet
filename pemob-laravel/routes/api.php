<?php

use App\Http\Controllers\Api\HewanController;
use App\Http\Controllers\Api\KesehatanController;
use App\Http\Controllers\Api\PerkembanganController;
use App\Http\Controllers\DokterController;
use App\Http\Controllers\ObatController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::get('hewan',[HewanController::class,'index']);
// Route::get('hewan/{id}',[HewanController::class,'show']);
// Route::post('hewan',[HewanController::class,'store']);
// Route::put('hewan/{id}',[HewanController::class,'update']);
// Route::delete('hewan/{id}',[HewanController::class,'destroy']);

Route::apiResource('hewan',HewanController::class);
Route::apiResource('kesehatan',KesehatanController::class);
Route::apiResource('perkembangan', PerkembanganController::class);
Route::apiResource('obat', ObatController::class);
Route::apiResource('dokter', DokterController::class);
