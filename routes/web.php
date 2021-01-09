<?php

use App\Http\Controllers\NoteController;
use App\Http\Controllers\NoteTypeController;
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

Route::prefix('/')->group(function (){
    Route::get('/',[NoteController::class,'index'])->name('note.index');
    Route::get('/add',[NoteController::class,'create'])->name('note.create');
    Route::post('/add',[NoteController::class,'store'])->name('note.store');
    Route::get('/edit/{id}',[NoteController::class,'edit'])->name('note.edit');
    Route::post('/update/{id}',[NoteController::class,'update'])->name('note.update');
    Route::get('/delete/{id}',[NoteController::class,'destroy'])->name('note.destroy');
    Route::post('/search', [NoteController::class, 'search'])->name('note.search');
});
Route::prefix('/notetype')->group(function (){
    Route::get('/',[NoteTypeController::class,'index'])->name('notetype.index');
    Route::get('/add',[NoteTypeController::class,'create'])->name('notetype.create');
    Route::post('/add',[NoteTypeController::class,'store'])->name('notetype.store');
    Route::get('/edit/{id}',[NoteTypeController::class,'edit'])->name('notetype.edit');
    Route::post('/update/{id}',[NoteTypeController::class,'update'])->name('notetype.update');
    Route::get('/delete/{id}',[NoteTypeController::class,'destroy'])->name('notetype.destroy');
    Route::post('/search',[NoteTypeController::class,'search'])->name('notetype.search');

});
