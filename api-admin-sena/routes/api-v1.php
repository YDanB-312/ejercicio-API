<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AreaController;
use App\Http\Controllers\Api\TrainingCenterController;
use App\Http\Controllers\Api\ComputerController;
use App\Http\Controllers\Api\TeacherController;
use App\Http\Controllers\Api\CourseController;
use App\Http\Controllers\Api\CourseTeacherController;
use App\Http\Controllers\Api\ApprenticeController;

Route::get('areas', [AreaController::class, 'index'])->name('api.v1.areas.index');
Route::get('areas/{area}', [AreaController::class, 'show'])->name('api.v1.areas.show');
Route::get('training-centers', [TrainingCenterController::class, 'index'])->name('api.v1.training-centers.index');
Route::get('training-centers/{training_center}', [TrainingCenterController::class, 'show'])->name('api.v1.training-centers.show');
Route::get('computers', [ComputerController::class, 'index'])->name('api.v1.computers.index');
Route::get('computers/{computer}', [ComputerController::class, 'show'])->name('api.v1.computers.show');
Route::get('teachers', [TeacherController::class, 'index'])->name('api.v1.teachers.index');
Route::get('teachers/{teacher}', [TeacherController::class, 'show'])->name('api.v1.teachers.show');
Route::get('courses', [CourseController::class, 'index'])->name('api.v1.courses.index');
Route::get('courses/{course}', [CourseController::class, 'show'])->name('api.v1.courses.show');
Route::get('course-teachers', [CourseTeacherController::class, 'index'])->name('api.v1.course-teachers.index');
Route::get('course-teachers/{course_teacher}', [CourseTeacherController::class, 'show'])->name('api.v1.course-teachers.show');
Route::get('apprentices', [ApprenticeController::class, 'index'])->name('api.v1.apprentices.index');
Route::get('apprentices/{apprentice}', [ApprenticeController::class, 'show'])->name('api.v1.apprentices.show');
