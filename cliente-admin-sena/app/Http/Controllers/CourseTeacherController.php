<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;

class CourseTeacherController extends Controller
{
    private function fetchDataFromApi($url)
    {
        $response = Http::get($url);
        return $response->json();
    }

    public function index()
    {
        $url = env('URL_SERVER_API');
        $assignments = $this->fetchDataFromApi($url . '/course-teachers?included=course,teacher');
        return view('course-teachers.index', compact('assignments'));
    }

    public function show($id)
    {
        $url = env('URL_SERVER_API');
        $assignment = $this->fetchDataFromApi($url . '/course-teachers/' . $id . '?included=course,teacher');
        return view('course-teachers.show', compact('assignment'));
    }
}
