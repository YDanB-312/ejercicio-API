<?php

namespace App\Http\Controllers\Api;

use App\Models\CourseTeacher;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseTeacherController extends Controller
{
    public function index()
    {
        $courseTeachers = CourseTeacher::included()->get();
        return $courseTeachers;
    }

    public function show($id)
    {
        $courseTeacher = CourseTeacher::included()->findOrFail($id);
        return $courseTeacher;
    }
}
