<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AreaController;
use App\Http\Controllers\TrainingCenterController;
use App\Http\Controllers\ComputerController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\CourseTeacherController;
use App\Http\Controllers\ApprenticeController;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('areas', [AreaController::class, 'index'])->name('areas');
Route::get('areas/{id}', [AreaController::class, 'show'])->name('areas.show');
Route::get('training-centers', [TrainingCenterController::class, 'index'])->name('training-centers');
Route::get('training-centers/{id}', [TrainingCenterController::class, 'show'])->name('training-centers.show');
Route::get('computers', [ComputerController::class, 'index'])->name('computers');
Route::get('computers/{id}', [ComputerController::class, 'show'])->name('computers.show');
Route::get('teachers', [TeacherController::class, 'index'])->name('teachers');
Route::get('teachers/{id}', [TeacherController::class, 'show'])->name('teachers.show');
Route::get('courses', [CourseController::class, 'index'])->name('courses');
Route::get('courses/{id}', [CourseController::class, 'show'])->name('courses.show');
Route::get('course-teachers', [CourseTeacherController::class, 'index'])->name('course-teachers');
Route::get('course-teachers/{id}', [CourseTeacherController::class, 'show'])->name('course-teachers.show');
Route::get('apprentices', [ApprenticeController::class, 'index'])->name('apprentices');
Route::get('apprentices/{id}', [ApprenticeController::class, 'show'])->name('apprentices.show');
