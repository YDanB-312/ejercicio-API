<?php

namespace App\Http\Controllers\Api;

use App\Models\Course;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function index()
    {
        $courses = Course::included()->get();
        return $courses;
    }

    public function show($id)
    {
        $course = Course::included()->findOrFail($id);
        return $course;
    }
}
