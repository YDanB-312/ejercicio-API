<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;

class TrainingCenterController extends Controller
{
    private function fetchDataFromApi($url)
    {
        $response = Http::get($url);
        return $response->json();
    }

    public function index()
    {
        $url = env('URL_SERVER_API');
        $centers = $this->fetchDataFromApi($url . '/training-centers');
        return view('training-centers.index', compact('centers'));
    }

    public function show($id)
    {
        $url = env('URL_SERVER_API');
        $center = $this->fetchDataFromApi($url . '/training-centers/' . $id);
        return view('training-centers.show', compact('center'));
    }
}
