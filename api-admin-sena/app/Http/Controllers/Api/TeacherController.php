<?php

namespace App\Http\Controllers\Api;

use App\Models\Teacher;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TeacherController extends Controller
{
    public function index()
    {
        $teachers = Teacher::included()->get();
        return $teachers;
    }

    public function show($id)
    {
        $teacher = Teacher::included()->findOrFail($id);
        return $teacher;
    }
}
